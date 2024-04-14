package com.scopeWeb.scopeWebApp.Controller;

import java.io.IOException;
import java.util.Base64;
import java.util.Optional;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.scopeWeb.scopeWebApp.Model.courseModel;
import com.scopeWeb.scopeWebApp.Model.userModel;
import com.scopeWeb.scopeWebApp.Repository.courseRepository;
import com.scopeWeb.scopeWebApp.Repository.userRepository;
import com.scopeWeb.scopeWebApp.Service.contactService;
import com.scopeWeb.scopeWebApp.Service.userService;

import jakarta.mail.MessagingException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class userController {
	
	@Autowired
	private userRepository repo;

	@Autowired
	private courseRepository crepo;
	
	@Autowired
	private userService service;
	
	@Autowired
	private contactService cservice;
	
	@RequestMapping(value={"/logincontroller","/courseadd/logincontroller"})
	public String log(@RequestParam(required=false,name="email")String mail,@RequestParam(required=false,name="pass")String password,Model model,HttpServletResponse response,HttpSession session) {
		userModel existUser = repo.findByEmail(mail);
		if(existUser!=null && existUser.isVerified() && password.equals(existUser.getPassword())) {
			session.setAttribute("email", existUser.getEmail());
			String fname = existUser.getFname();
			String lname= existUser.getLname();
			Long phone = existUser.getNumber();
			String gender = existUser.getGender();
			byte[] image = existUser.getAvatar();
			String base64Avatar =  Base64.getEncoder().encodeToString(image);
			String dob = existUser.getDob();
			String country = existUser.getCountry();
			String state = existUser.getState();
			String city = existUser.getCity();
			String hobby = existUser.getHobby();
			
			model.addAttribute("avatar", base64Avatar);
			
			model.addAttribute("user", existUser);			
//			model.addAttribute("firstname", fname);
//			model.addAttribute("lastname", lname);
//			model.addAttribute("email", mail);
//			model.addAttribute("phonenumber", phone);
//			model.addAttribute("gender", gender);
//			model.addAttribute("avatar", base64Avatar);
//			model.addAttribute("dateofbirth", dob);
//			model.addAttribute("hobby", hobby);
//			model.addAttribute("country", country);
//			model.addAttribute("city", city);
//			model.addAttribute("state", state);

		return "dashboard";
		}else {
			return "login";
		}
		
	}
	
	@RequestMapping("/")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/reg")
	public String logg() {
		
		return "login";
	}
	
	@RequestMapping("/home")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping("/aboutus")
	public String aboutus() {
		
		return "about";
	}
	
	
	@RequestMapping("/contact")
	public String contactUs(HttpSession session,Model model) {
		
		String mail = (String) session.getAttribute("email");
		userModel u = repo.findByEmail(mail);
		model.addAttribute("user", u);
		
		return "contact";
	}
	@RequestMapping("/contactmail")
	public String contactmail(@RequestParam("subject")String sub,@RequestParam("message")String mes,Model model,HttpSession session) throws MessagingException{
		String mail=(String) session.getAttribute("email");
		System.out.println(mail);
		cservice.contactEmail(mail,sub,mes);
		model.addAttribute("message", "mail sent");
		return "redirect:/contact";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "/home";
		
	}
	
//	@RequestMapping("coursedetails/home")
//	public String rehome() {
//		
//		return "home";
//	}
	
	@RequestMapping(value={"/profile","/coursedetails/profile"})
	public String profile(HttpSession session,Model model) {
		String mail=(String) session.getAttribute("email");
		userModel existUser=repo.findByEmail(mail);
		if(existUser!=null) {
		model.addAttribute("user", existUser);
		byte[] image = existUser.getAvatar();
		String base64Avatar = Base64.getEncoder().encodeToString(image);
		model.addAttribute("avatar", base64Avatar);
		return "dashboard";
		}else {
			return "redirect:/reg";
		}
	}
	@RequestMapping(value={"/courses","/coursedetails/courses"})
	public String course(Model model) {
		
		model.addAttribute("course", service.findAll());
		
		return "courses";
	}
	@GetMapping("/coursedetails/{id}")
	public String coursedetail(@PathVariable("id") int id,Model model) {
		courseModel course=service.findByCourseId(id);
			model.addAttribute("id", id);
			model.addAttribute("details",course);
			return "coursepage";
		
	}
	
	@RequestMapping("courseadd/{cid}")
	public String courseadd(@PathVariable("cid")int id,Model model,HttpSession session) {
		String mail = (String) session.getAttribute("email");
		userModel u = repo.findByEmail(mail);
		if(u!=null) {
			u.setCourseid(id);
			repo.save(u);
			model.addAttribute("message", "course added");
			return "coursesuccess";
		}else {	
		return "login";
		}
	}
	
	@RequestMapping("/send")
	public String send(@RequestParam("fname")String fullname,@RequestParam("lname")String lastname,@RequestParam("gender")String gender,@RequestParam("dob")String dob,@RequestParam("email")String email,@RequestParam("number")long phonenum,@RequestParam("country")String country,@RequestParam("state")String state,@RequestParam("district")String district,@RequestParam("hobby")String hobby,@RequestParam("avatar")MultipartFile avatar,Model model,HttpServletRequest request) throws IOException, MessagingException {
		
		userModel u=new userModel(fullname,lastname,gender,dob,email,phonenum,country,state,district,hobby,avatar.getBytes());
		service.insert(u,getSiteUrl(request));
		return "check";
	}
	private String getSiteUrl(HttpServletRequest request) {
		String siteurl=request.getRequestURL().toString();
		return siteurl.replace(request.getServletPath(),"");
	}
	
	@RequestMapping("/verify")
	public String verify(@RequestParam("code")String code,Model model) {
		if(service.verify(code)) {
			model.addAttribute("message", "Success");
			return "success";
		}else {
			return "register";
		}
	}
	
	/*@GetMapping("/success")
	public String login(Model model) {
		
		model.addAttribute("student", new userModel());
		return "success";
	}*/
	
	@RequestMapping("/success")
	public String sendOtp(Model model,@RequestParam("email")String email,userModel u) {
		userModel existingUser=repo.findByEmail(email);
		
		if(existingUser!=null) {
			String newOtp=generateRandomOtp();
			existingUser.setOtp(newOtp);
			repo.save(existingUser);
			service.sendEmail(email,newOtp);
			model.addAttribute("email", email);
			return "verify-otp";
		}else {
			model.addAttribute("error", "Email not Found. Please register first");
			return "register";
		}
	}
	
	@RequestMapping("/verify-otp")
	public String verifyOTP(@ModelAttribute("email")String email,@RequestParam("otp")String enteredOTP,Model model) {
		userModel user=repo.findByEmail(email);
		if(user!=null && user.getOtp()!=null && user.getOtp().equals(enteredOTP)) {
			user.setVerified(true);
			repo.save(user);
			model.addAttribute("email", email);
			return "set-password";
		}else {
			model.addAttribute("error", "Invalid OTP,Please try again");
			return "verify-otp";
		}
	}
	
	@RequestMapping("/set-password")
	public String setPassword(@RequestParam("pwd")String password,@RequestParam("confirmpwd")String confirm_password ,@RequestParam("email")String email) {
		userModel existingUser=repo.findByEmail(email);
		if(password.equals(confirm_password)){
		existingUser.setPassword(password);
		repo.save(existingUser);
		return "login";
		}else {
			return "set-password";
		}
		}
	@RequestMapping("/forgotpass")
	public String forgotpass(){
		return "forgotpassword";
	}
		
	@RequestMapping("/forgotpassword")
	public String forgot(@RequestParam("mail")String email) {
		
		userModel u = repo.findByEmail(email);
		if(u!=null) {
			String otp = generateRandomOtp();
			u.setOtp(otp);
			repo.save(u);
			service.sendEmail(email, otp);
			return "verify-otp";
		}else {return "forgotpassword";
		}
		
	}
	
	@RequestMapping(value={"/editform","/coursedetails/editform"})
	public String editform(Model model,HttpSession session) {
		String mail = (String) session.getAttribute("email");
		userModel u = repo.findByEmail(mail);
		byte[] image = u.getAvatar();
		String base64Avatar =  Base64.getEncoder().encodeToString(image);
		
		model.addAttribute("fname", u.getFname());
		model.addAttribute("lname", u.getLname());
		model.addAttribute("mail", mail);
		model.addAttribute("phone", u.getNumber());
		
		model.addAttribute("gender", u.getGender());
		
		model.addAttribute("dob", u.getDob());
		model.addAttribute("hobby", u.getHobby());
		model.addAttribute("country", u.getCountry());
		model.addAttribute("state", u.getState());
		model.addAttribute("city", u.getCity());
		model.addAttribute("avatar", base64Avatar);
		
	return "formedit";
	}
	@RequestMapping(value={"/editsave","/coursedetails/editsave"})
	public String editsave(@RequestParam(required=false,name="first")String fname,@RequestParam(required=false,name="last")String lname,@RequestParam("email")String mail,@RequestParam(required=false,name="phone")Long number,@RequestParam(required=false,name="gender")String gender,@RequestParam(required=false,name="dob")String dob,@RequestParam(required=false,name="hobby")String hobby,@RequestParam(required=false,name="country")String country,@RequestParam(required=false,name="state")String state,@RequestParam(required=false,name="city")String city,@RequestParam(required=false,name="avatar")MultipartFile avatar,Model model,HttpSession session) throws IOException {
		String email = (String) session.getAttribute("email");
		userModel existingUser = repo.findByEmail(email);
		if(existingUser!=null) {
			existingUser.setFname(fname);
			existingUser.setLname(lname);
			existingUser.setNumber(number);
			if(gender==null) {
				gender=existingUser.getGender();
			}else {existingUser.setGender(gender);}
			existingUser.setDob(dob);
			if(hobby==null) {
				hobby = existingUser.getHobby();
			}else {existingUser.setHobby(hobby);}
			existingUser.setCountry(country);
			existingUser.setState(state);
			existingUser.setCity(city);
			if(avatar==null) {
				byte[] image = existingUser.getAvatar();
				String base64Avatar = Base64.getEncoder().encodeToString(image);
				existingUser.setAvatar(base64Avatar.getBytes());
				model.addAttribute("avatar", base64Avatar);
			}else {
				existingUser.setAvatar(avatar.getBytes());

			}
			repo.save(existingUser);
//			userModel u = repo.findByEmail(mail);
//			String firstn = u.getFname();
//			String lastn = u.getLname();
//			String email = u.getEmail();
//			Long phone = u.getNumber();
//			String gend = u.getGender();
//			String date = u.getDob();
//			String hobb = u.getHobby();
//			String count = u.getCountry();
//			String stat = u.getState();
//			String cit = u.getCity();
//			byte[] image = u.getAvatar();
//			String base64Avatar = Base64.getEncoder().encodeToString(image);
//			
//			
//			model.addAttribute("firstname", firstn);
//			model.addAttribute("lastname", lastn);
//			model.addAttribute("email", email);
//			model.addAttribute("phonenumber", phone);
//			model.addAttribute("gender", gend);
//			model.addAttribute("dateofbirth", date);
//			model.addAttribute("hobby", hobb);
//			model.addAttribute("country", count);
//			model.addAttribute("state", stat);
//			model.addAttribute("city", cit);
			byte[] image = existingUser.getAvatar();
			String base64Avatar = Base64.getEncoder().encodeToString(image);
			model.addAttribute("avatar", base64Avatar);
			model.addAttribute("user", existingUser);
			return "dashboard";
		}else {
			model.addAttribute("error", "Error please check again");
			return"error";}
		
	}
	
	
	private String generateRandomOtp() {
		String otp = String.valueOf(new Random().nextInt(900000)+100000);
		return otp;
	}
	

}
