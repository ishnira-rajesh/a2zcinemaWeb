package com.a2z.controller;

import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.security.crypto.codec.Base64;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.a2z.model.User;
import com.a2z.service.UserService;
import com.a2z.to.UserTo;

@RestController
public class UserController {
	@Autowired
	UserService userService;
	
	@Autowired
	JavaMailSenderImpl mailSender;

	@RequestMapping(value = "/userSave/", method = RequestMethod.POST)
	public UserTo userSave(@RequestBody UserTo user, UriComponentsBuilder ucBuilder) {
		final UserTo usrTo = userService.saveUser(user);
		//final UserTo usrTo = userService.saveUser(user);
		mailSender.send(new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
			
				byte[] bytes = usrTo.getPassword().getBytes();
				byte[] decodeBytes = Base64.decode(bytes);
				String userpass = new String(decodeBytes);
			
			    messageHelper.setTo(usrTo.getEmail());
			    messageHelper.setFrom("a2zcinemaworld@gmail.com");
                messageHelper.setSubject("Registration Successfully");
                String bgColor = "#1797be";
                StringBuffer body = new StringBuffer("<table align='center' width='600' border='0' cellpadding='5' cellspacing='' style='border: 1px solid #dfdfdf;'>");
				body.append("<tr>"
				    +"<td colspan='4' class='header-bg' style='background-color:"+bgColor+"'><img src='https://s3.amazonaws.com/a2zcinema-pics/a2zcinema_logo.png'></td>"
				  +"</tr>");
				
				body.append("<tr>"
				    +"<td colspan='4' bgcolor='#f5f5f5'><span style='color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-weight: bold; text-align: left; text-decoration: none;'>Your Registration has been Successfully</span></td>"
				  +"</tr>");
				  
				body.append("<tr>"
				    +"<td colspan='4'><span style='color: #4c4c4c;	font-family: Arial, Helvetica, sans-serif;	font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'> Dear</span>&nbsp;<span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;' >"+usrTo.getFirstName()+" "+usrTo.getLastName()+"</span><br>"
				      +"<span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>we received a request for registration for user name "+usrTo.getUserName()+"</span></td>"
				  +"</tr>");
				
				body.append("<tr>"
				    +"<td width='6%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>User&nbsp;Name</span></td>"
				    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
				    +"<td width='92%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+usrTo.getUserName()+"</span></td>"
				  +"</tr>");
				
				body.append("<tr>"
				    +"<td><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Password</span></td>"
				    +"<td><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
				    +"<td><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+userpass+"</span></td>"
				  +"</tr>");
				
				body.append("<tr>"
					    +"<td colspan='4'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>Click here to login</span>&nbsp;<span ><a href='http://a2zcinemaworld.com/' target='_blank' style='color: #008cc6; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: underline;'>Click Here</a></span>.&nbsp;<span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'></span></td>"
					  +"</tr>");
				
				body.append("<tr>"
				    +"<td colspan='3'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>Best regards<br>"
				      +"The team</span></td>"
				 +" </tr>");
				
				body.append("</table>");
				
				messageHelper.setText(body.toString(), true);
			}
        });
		
		
		userService.autologin(user.getUserName(), user.getPassword());
		return usrTo;
	}

	@RequestMapping(value = "/userGet/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> listAllUsers() {

		List<?> users = (List<?>) userService.findAllUsers();
		//System.out.println("userGet :" + users);

		return new ResponseEntity<List<?>>(users, HttpStatus.OK);
	}

	@RequestMapping(value = "/userDetails/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getUserDetailsProfile(@PathVariable("userId") long userId) {
		UserTo uses = new UserTo();
		uses.setUserId(userId);
		// Long userId = uses.getUserId();
		// System.out.println("userId :"+userId);

		//System.out.println("Fetching User with id " + uses.getUserId());

		List<?> user = (List<?>) userService.getUserDetailsProfile(uses.getUserId());

		//System.out.println("getUserDetailsProfile :" + user);

		return new ResponseEntity<List<?>>(user, HttpStatus.OK);
	}
	

	@RequestMapping(value = "/getCrowdfund/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> listcrowfunding() {

		List<?> crowdusers = (List<?>) userService.listcrowfunding();
		//System.out.println("userGet :" + users);

		return new ResponseEntity<List<?>>(crowdusers, HttpStatus.OK);
	}

	
	@RequestMapping(value = "/getMovieDistribution/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> listmoviedistrbution() {

		List<?> distribution= (List<?>) userService.listmoviedistribution();
		//System.out.println("userGet :" + users);

		return new ResponseEntity<List<?>>(distribution, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/moviedistributiondetails/{mvId}",method= RequestMethod.GET)
	public ResponseEntity<List<?>> getMovieDistributionDetails(@PathVariable("mvId") long mvId) {
		List<?> moviedata = (List<?>) userService.getmoviedistrbutiondetails(mvId);
		return new ResponseEntity<List<?>>(moviedata, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getMovieDistriDetailById/{movieDistributionId}",method= RequestMethod.GET)
	public ResponseEntity<List<?>> getMovieDistriDetailById(@PathVariable("movieDistributionId") long movieDistributionId) {
		List<?> moviedata = (List<?>)userService.getMovieRentDetailById(movieDistributionId);
		return new ResponseEntity<List<?>>(moviedata, HttpStatus.OK);
	}

}
