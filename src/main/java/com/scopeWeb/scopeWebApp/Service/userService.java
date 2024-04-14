package com.scopeWeb.scopeWebApp.Service;

import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.scopeWeb.scopeWebApp.Model.courseModel;
import com.scopeWeb.scopeWebApp.Model.userModel;
import com.scopeWeb.scopeWebApp.Repository.courseRepository;
import com.scopeWeb.scopeWebApp.Repository.userRepository;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpSession;
import net.bytebuddy.utility.RandomString;

@Service
public class userService {
	
	@Autowired
	private courseRepository crepo;
	
	@Autowired
	private userRepository repo;
	
	@Autowired
	private JavaMailSender sender;
	
	public void insert(userModel user ,String siteUrl) throws UnsupportedEncodingException, MessagingException {
		String randomCode=RandomString.make(64);
		user.setVerificationcode(randomCode);
		user.setEnabled(false);
		repo.save(user);
		sendVerificationEmail(user,siteUrl);
	}
	public void sendVerificationEmail(userModel user,String siteUrl) throws UnsupportedEncodingException, MessagingException {
		String toaddr=user.getEmail();
		String fromaddr="vichuakash04@gmail.com";
		String senderName="Scope";
		String subject="verify email";
		String message="Dear [[name]] please click the link below to verify <h3><a href=\"[[URL]]\" target=\"_blank\">VERIFY</a></h3>";
		MimeMessage msg=sender.createMimeMessage();
		MimeMessageHelper messageHelper=new MimeMessageHelper(msg);
		messageHelper.setFrom(fromaddr, senderName);
		messageHelper.setTo(toaddr);
		messageHelper.setSubject(subject);
		message=message.replace("[[name]]",user.getFname());
		String url=siteUrl+"/verify?code="+user.getVerificationcode();
		message=message.replace("[[URL]]",url);
		messageHelper.setText(message,true);
		sender.send(msg);
	}
	public boolean verify(String verificationcode) {
		
		userModel user=repo.findByVerificationcode(verificationcode);
		if(user==null || user.isEnabled()) {
			return false;
		}else {
			user.setVerificationcode(null);
			user.setEnabled(true);
			repo.save(user);
			return true;
		}
	}
	public void sendEmail(String email,String otp) {
		SimpleMailMessage message=new SimpleMailMessage();
		message.setTo(email);
		message.setSubject("OTP verification");
		message.setText("your OTP for verification is "+otp);
		sender.send(message);
		}
	
	public List<courseModel> findAll(){
		return (List<courseModel>) crepo.findAll();
	}
	public courseModel findByCourseId(int id) {
		return crepo.findByCourseid(id);
	}
	
//	public void contactEmail(String email,String subject,String message) throws MessagingException {
//		
//		MimeMessage contact = sender.createMimeMessage();
//		MimeMessageHelper contactHelp= new MimeMessageHelper(contact);
//		String toadd = "vichuakash04@gmail.com";
//		contactHelp.setTo(toadd);
//		System.out.println("from "+email);
//		contactHelp.setFrom(new InternetAddress(email));
//		contactHelp.setSubject(subject);
//		contactHelp.setText(message);
//		sender.send(contact);
//	}
}
