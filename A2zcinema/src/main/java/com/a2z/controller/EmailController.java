package com.a2z.controller;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.a2z.model.CrowdFunding;
import com.a2z.model.Email;
import com.a2z.model.MovieDistribution;
import com.a2z.service.UserService;
import com.a2z.to.EmailTo;
import com.a2z.to.UserTo;
import com.a2z.util.Utils;

@RestController
public class EmailController {
	@Autowired
	UserService userService;
	
	@Autowired
	JavaMailSenderImpl mailSender;
	
	@RequestMapping(value = "/saveSendEmail/", method = RequestMethod.POST)
	public Email saveSendEmail(@RequestBody final EmailTo emailTo, UriComponentsBuilder ucBuilder) {
		final Email email = userService.saveSendEmail(emailTo);
		
		  mailSender.send(new MimeMessagePreparator() {
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				    
				    messageHelper.setFrom(new InternetAddress(email.getEmailFrom(),email.getName()));
				    messageHelper.setTo(email.getEmailTo());
	                messageHelper.setSubject(email.getSubject());
	                messageHelper.setText("Name: "+email.getName()+ "  , " + "message: " +email.getMessage());
	                
				}
	        });
		return email;
	}
	
	
	@RequestMapping(value = "/saveContactEmail/", method = RequestMethod.POST)
	public Email saveContactEmail(@RequestBody final EmailTo emailTo, UriComponentsBuilder ucBuilder) {
		
		final Email email = userService.saveSendEmail(emailTo);
		final CrowdFunding crowdFunding = userService.getCrowdFundingById(emailTo.getmDataId());
		
		  mailSender.send(new MimeMessagePreparator() {
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				    
				    messageHelper.setFrom(new InternetAddress(email.getEmailFrom(),email.getName()));
				    messageHelper.setTo(email.getEmailTo());
	                messageHelper.setSubject(email.getSubject());
	                
	                String bgColor = "#1797be";
	                StringBuffer body = new StringBuffer("<table align='center' width='600' border='0' cellpadding='5' cellspacing='' style='border: 1px solid #dfdfdf;'>");
					body.append("<tr>"
					    +"<td colspan='4' class='header-bg' style='background-color:"+bgColor+"'><img src='https://s3.amazonaws.com/a2zcinema-pics/a2zcinema_logo.png'></td>"
					  +"</tr>");
					
					body.append("<tr>"
					    +"<td colspan='4' bgcolor='#f5f5f5'><span style='color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-weight: bold; text-align: left; text-decoration: none;'>Interesting for Crowd Funding</span></td>"
					  +"</tr>");
					  
					body.append("<tr>"
					    +"<td colspan='4'><span style='color: #4c4c4c;	font-family: Arial, Helvetica, sans-serif;	font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'> Dear</span>&nbsp;<span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;' >A2zcinemaworld</span><br>"
					  +"</tr>");
					
					body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Name</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+email.getName()+"</span></td>"
					  +"</tr>");
					
					body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Contact No</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+emailTo.getContact()+"</span></td>"
					  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Movie Name</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+crowdFunding.getMovieName()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Director Name</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+crowdFunding.getDirectorName()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Production House</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+crowdFunding.getProHouseName()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Producer</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+crowdFunding.getProducerName()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Message</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td colspan='4'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>"+email.getMessage()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
					    +"<td colspan='3'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>regards<br>"
					      +email.getName()+"</span></td>" 
					 +" </tr>");
					
					body.append("</table>");
					
					messageHelper.setText(body.toString(), true);
				}
	        });
		  
		  sendResponseEmail(mailSender,email,crowdFunding);
		  
		return email;
	}
	
    public static void sendResponseEmail(JavaMailSenderImpl mailSender, final Email email,final CrowdFunding crowdFunding){
		
    	mailSender.send(new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
			    
			    messageHelper.setFrom("a2zcinemaworld@gmail.com");
			    messageHelper.setTo(email.getEmailFrom());
                messageHelper.setSubject("Thank You Interested for Crowd Funding");
                
                String bgColor = "#1797be";
                StringBuffer body = new StringBuffer("<table align='center' width='600' border='0' cellpadding='5' cellspacing='' style='border: 1px solid #dfdfdf;'>");
				body.append("<tr>"
				    +"<td colspan='4' class='header-bg' style='background-color:"+bgColor+"'><img src='https://s3.amazonaws.com/a2zcinema-pics/a2zcinema_logo.png'></td>"
				  +"</tr>");
				
				body.append("<tr>"
				    +"<td colspan='4' bgcolor='#f5f5f5'><span style='color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-weight: bold; text-align: left; text-decoration: none;'>Thank You , Interested for Crowd Funding</span></td>"
				  +"</tr>");
				  
				body.append("<tr>"
				    +"<td colspan='4'><span style='color: #4c4c4c;	font-family: Arial, Helvetica, sans-serif;	font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'> Dear</span>&nbsp;<span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;' >"+email.getName()+"</span><br>"
				  +"</tr>");
				
				body.append("<tr>"
				    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Name</span></td>"
				    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
				    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+email.getName()+"</span></td>"
				  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Movie Name</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+crowdFunding.getMovieName()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Director Name</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+crowdFunding.getDirectorName()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Production House</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+crowdFunding.getProHouseName()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Producer</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+crowdFunding.getProducerName()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Your Message</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td colspan='4'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>"+email.getMessage()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
				    +"<td colspan='3'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>regards<br>"
				      +" The A2zcinemworld.com Team"+"</span></td>" 
				 +" </tr>");
				
				body.append("</table>");
				
				messageHelper.setText(body.toString(), true);
			}
        });
	}
	
	@RequestMapping(value = "/saveContactEmailMovie/", method = RequestMethod.POST)
	public Email saveContactEmailMovie(@RequestBody final EmailTo emailTo, UriComponentsBuilder ucBuilder) {
		
		final Email email = userService.saveSendEmail(emailTo);
		final MovieDistribution mdistribution = userService.getMovieRentDetailUniById(emailTo.getmDataId());
		
		  mailSender.send(new MimeMessagePreparator() {
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				    
				    messageHelper.setFrom(new InternetAddress(email.getEmailFrom(),email.getName()));
				    messageHelper.setTo(email.getEmailTo());
	                messageHelper.setSubject(email.getSubject());
	                
	                String bgColor = "#1797be";
	                StringBuffer body = new StringBuffer("<table align='center' width='600' border='0' cellpadding='5' cellspacing='' style='border: 1px solid #dfdfdf;'>");
					body.append("<tr>"
					    +"<td colspan='4' class='header-bg' style='background-color:"+bgColor+"'><img src='https://s3.amazonaws.com/a2zcinema-pics/a2zcinema_logo.png'></td>"
					  +"</tr>");
					
					body.append("<tr>"
					    +"<td colspan='4' bgcolor='#f5f5f5'><span style='color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-weight: bold; text-align: left; text-decoration: none;'>Interested IN Theater/Multiplex For Rent</span></td>"
					  +"</tr>");
					  
					body.append("<tr>"
					    +"<td colspan='4'><span style='color: #4c4c4c;	font-family: Arial, Helvetica, sans-serif;	font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'> Dear</span>&nbsp;<span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;' >A2zcinemaworld</span><br>"
					  +"</tr>");
					
					body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Name</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+email.getName()+"</span></td>"
					  +"</tr>");
					
					body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Contact No</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+emailTo.getContact()+"</span></td>"
					  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Theater/Multiplex</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getMultiplexName()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Theater Owner</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getTheaterOwnerName()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Theater Address</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getTheaterAddress()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Theater City</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getTheaterCity()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Rent Period</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getTheaterRent()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Message</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
						    +"<td colspan='4'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>"+email.getMessage()+"</span></td>"
						  +"</tr>");
					
					body.append("<tr>"
					    +"<td colspan='3'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>regards<br>"
					      +email.getName()+"</span></td>" 
					 +" </tr>");
					
					body.append("</table>");
					
					messageHelper.setText(body.toString(), true);
				}
	        });
		  sendResponseMovieEmail(mailSender,email,mdistribution);
		return email;
	}
	
	
	private void sendResponseMovieEmail(JavaMailSenderImpl mailSender, final Email email, final MovieDistribution mdistribution) {
		 
		mailSender.send(new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
			    
			    messageHelper.setFrom("a2zcinemaworld@gmail.com");
			    messageHelper.setTo(email.getEmailFrom());
                messageHelper.setSubject("Thank You Interested In Theater/Multiplex for Rent");
                
                String bgColor = "#1797be";
                StringBuffer body = new StringBuffer("<table align='center' width='600' border='0' cellpadding='5' cellspacing='' style='border: 1px solid #dfdfdf;'>");
				body.append("<tr>"
				    +"<td colspan='4' class='header-bg' style='background-color:"+bgColor+"'><img src='https://s3.amazonaws.com/a2zcinema-pics/a2zcinema_logo.png'></td>"
				  +"</tr>");
				
				body.append("<tr>"
				    +"<td colspan='4' bgcolor='#f5f5f5'><span style='color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-weight: bold; text-align: left; text-decoration: none;'>Thank You , Interested In Theater/Multiplex For Rent</span></td>"
				  +"</tr>");
				  
				body.append("<tr>"
				    +"<td colspan='4'><span style='color: #4c4c4c;	font-family: Arial, Helvetica, sans-serif;	font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'> Dear</span>&nbsp;<span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;' >"+email.getName()+"</span><br>"
				  +"</tr>");
				
				body.append("<tr>"
				    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Name</span></td>"
				    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
				    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+email.getName()+"</span></td>"
				  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Theater/Multiplex</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getMultiplexName()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Theater Owner</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getTheaterOwnerName()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Theater Address</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getTheaterAddress()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Theater City</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getTheaterCity()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Rent Period</span></td>"
					    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
					    +"<td width='78%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+mdistribution.getTheaterRent()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td width='20%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Your Message</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
					    +"<td colspan='4'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>"+email.getMessage()+"</span></td>"
					  +"</tr>");
				
				body.append("<tr>"
				    +"<td colspan='3'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>regards<br>"
				      +" The A2zcinemaworld.com Team "+"</span></td>" 
				 +" </tr>");
				
				body.append("</table>");
				
				messageHelper.setText(body.toString(), true);
			}
        });
	}


	@RequestMapping(value = "/sendpwdemail/", method = RequestMethod.POST)
	public UserTo sendpwdemail(@RequestBody UserTo userTo, UriComponentsBuilder ucBuilder) {
		  final UserTo useTo;
		  String res = null;
		  String isValid;
		  useTo = userService.getUserByEmail(userTo.getEmail().toLowerCase());
		  if(userTo.getEmail().toLowerCase().equalsIgnoreCase(useTo.getEmail())){
			  
			  final String temp_pwd = Utils.getTempPassword();
			  
			  if(useTo !=null && temp_pwd !=null){
				  isValid = "true";
				  res = userService.changeForgotPassword(userTo.getEmail().toLowerCase(),useTo.getPassword(), temp_pwd);
				  
				  mailSender.send(new MimeMessagePreparator() {
					@Override
					public void prepare(MimeMessage mimeMessage) throws Exception {
					MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					    
					    messageHelper.setTo(useTo.getEmail());
					    messageHelper.setFrom("a2zcinemaworld@gmail.com");
		                messageHelper.setSubject("Forgot Password");
		                //messageHelper.setText("Name: "+useTo.getFirstName()+" "+useTo.getLastName()+ "," + "Password: " +temp_pwd);
		                String bgColor = "#1797be";
		                StringBuffer body = new StringBuffer("<table align='center' width='600' border='0' cellpadding='5' cellspacing='' style='border: 1px solid #dfdfdf;'>");
						body.append("<tr>"
						    +"<td colspan='4' class='header-bg' style='background-color:"+bgColor+"'><img src='https://s3.amazonaws.com/a2zcinema-pics/a2zcinema_logo.png'></td>"
						  +"</tr>");
						
						body.append("<tr>"
						    +"<td colspan='4' bgcolor='#f5f5f5'><span style='color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-weight: bold; text-align: left; text-decoration: none;'>Your Password has been reset</span></td>"
						  +"</tr>");
						  
						body.append("<tr>"
						    +"<td colspan='4'><span style='color: #4c4c4c;	font-family: Arial, Helvetica, sans-serif;	font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'> Dear</span>&nbsp;<span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;' >"+useTo.getFirstName()+" "+useTo.getLastName()+"</span><br>"
						      +"<span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>we received a request for password change for user name "+useTo.getUserName()+"</span></td>"
						  +"</tr>");
						
						body.append("<tr>"
						    +"<td width='6%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>User&nbsp;Name</span></td>"
						    +"<td width='2%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td width='92%'><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+useTo.getUserName()+"</span></td>"
						  +"</tr>");
						
						body.append("<tr>"
						    +"<td><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>Password</span></td>"
						    +"<td><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>:</span></td>"
						    +"<td><span style='color: #333333; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: none;'>"+temp_pwd+"</span></td>"
						  +"</tr>");
						
						body.append("<tr>"
							    +"<td colspan='4'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>Click here to login with your new password</span>&nbsp;<span ><a href='http://a2zcinemaworld.com/' target='_blank' style='color: #008cc6; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; text-align: left; text-decoration: underline;'>Click Here</a></span>.&nbsp;<span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'></span></td>"
							  +"</tr>");
						
						body.append("<tr>"
						    +"<td colspan='3'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>Best regards<br>"
						      +"The team</span></td>"
						 +" </tr>");
						
						body.append("</table>");
						
						messageHelper.setText(body.toString(), true);
					}
		        });
			  useTo.setIsUserValid(isValid);
		     }
		  }else{
			  isValid = "false";
			  String message = "Your email do not match . please enter registered e-mail id.";
			  useTo.setIsUserValid(isValid);
			  useTo.setErrorMessege(message); 
		  }
		  
		return useTo;
	}

}
