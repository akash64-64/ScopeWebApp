package com.scopeWeb.scopeWebApp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

@Service
public class contactService {
	
	@Autowired
	private JavaMailSender sender;
	


	
	
	public void contactEmail(String email,String subject,String message) throws MessagingException {
	
		
		MimeMessage contact = sender.createMimeMessage();
		MimeMessageHelper contactHelp= new MimeMessageHelper(contact);
		String toadd = "vichuakash04@gmail.com";
		contactHelp.setTo(toadd);
		System.out.println("from "+email);
		contactHelp.setFrom(new InternetAddress(email));
		contactHelp.setSubject(subject);
		contactHelp.setText(message);
		sender.send(contact);
	}

}
