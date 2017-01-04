package com.a2z.controller;

import java.util.List;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.a2z.dao.AdminDao;
import com.a2z.model.CelibrityImages;
import com.a2z.model.CelibrityPadMemberImage;
import com.a2z.model.CrowdFunding;
import com.a2z.model.GifPhoto;
import com.a2z.model.LatestAuditionNews;
import com.a2z.model.LatestEvents;
import com.a2z.model.LatestMovieNews;
import com.a2z.model.LatestNews;
import com.a2z.model.LatestPosterPhoto;
import com.a2z.model.MovieDistribution;
import com.a2z.model.MovieTrailer;
import com.a2z.model.PadMemberImages;
import com.a2z.model.User;
import com.a2z.service.AdminService;
import com.a2z.to.CelibrityImagesTo;
import com.a2z.to.CelibrityPadMemberImageTo;
import com.a2z.to.CrowdFundingTo;
import com.a2z.to.GifPhotoTo;
import com.a2z.to.LatestAuditionNewsTo;
import com.a2z.to.LatestEventsTo;
import com.a2z.to.LatestMovieNewsTo;
import com.a2z.to.LatestNewsTo;
import com.a2z.to.LatestPosterPhotoTo;
import com.a2z.to.MovieDistributionTo;
import com.a2z.to.MovieTrailerTo;
import com.a2z.to.PadMemberImagesTo;
import com.a2z.to.UserTo;

@RestController
public class AdminMainController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	JavaMailSenderImpl mailSender;
	
	
	@RequestMapping(value = "/saveLatestNews/", method = RequestMethod.POST)
	public LatestNews saveLatestNews(@RequestBody LatestNewsTo latestNewsTo,UriComponentsBuilder ucBuilder) {
		LatestNews latestNews = adminService.saveLatestNews(latestNewsTo);
		return latestNews;
	}
	
	@RequestMapping(value = "/saveLatestEvents/", method = RequestMethod.POST)
	public LatestEvents saveLatestEvents(@RequestBody LatestEventsTo latestEventsTo,UriComponentsBuilder ucBuilder) {
		LatestEvents latestEvents = adminService.saveLatestEvents(latestEventsTo);
		return latestEvents;
	}
	
	@RequestMapping(value = "/saveLatestMoviesNews/", method = RequestMethod.POST)
	public LatestMovieNews saveLatestMoviesNews(@RequestBody LatestMovieNewsTo latestMovieNewsTo,UriComponentsBuilder ucBuilder) {
		LatestMovieNews latestMovieNews = adminService.saveLatestMoviesNews(latestMovieNewsTo);
		return latestMovieNews;
	}
	
	@RequestMapping(value = "/saveLatestAuditionNews/", method = RequestMethod.POST)
	public LatestAuditionNews saveLatestAuditionNews(@RequestBody LatestAuditionNewsTo latestAuditionNewsTo,UriComponentsBuilder ucBuilder) {
		LatestAuditionNews latestAuditionNews = adminService.saveLatestAuditionNews(latestAuditionNewsTo);
		return latestAuditionNews;
	}
	
	@RequestMapping(value = "/uploadCelibrityImage/", method = RequestMethod.POST)
	public CelibrityImages uploadCelibrityImage(@RequestBody CelibrityImagesTo celibrityImagesTo) {
		CelibrityImages celibrityImages = adminService.uploadCelibrityImage(celibrityImagesTo);
		return celibrityImages;
	}
	
	@RequestMapping(value = "/uploadCelibrityPadMemberImage/", method = RequestMethod.POST)
	public CelibrityPadMemberImage uploadCelibrityPadMemberImage(@RequestBody CelibrityPadMemberImageTo celibrityPadMemberImageTo) {
		CelibrityPadMemberImage celibrityPadMemberImage = adminService.uploadCelibrityPadMemberImage(celibrityPadMemberImageTo);
		return celibrityPadMemberImage;
	}
	
	@RequestMapping(value = "/uploadCelibrityPadMemberImageTwo/", method = RequestMethod.POST)
	public PadMemberImages uploadCelibrityPadMemberImageTwo(@RequestBody PadMemberImagesTo padMemberImagesTo) {
		PadMemberImages padMemberImages = adminService.uploadCelibrityPadMemberImageTwo(padMemberImagesTo);
		return padMemberImages;
	}
	
	@RequestMapping(value = "/uploadLatestPosterImage/", method = RequestMethod.POST)
	public LatestPosterPhoto uploadLatestPosterImage(@RequestBody LatestPosterPhotoTo latestPosterPhotoTo) {
		LatestPosterPhoto latestPosterPhoto = adminService.uploadLatestPosterImage(latestPosterPhotoTo);
		return latestPosterPhoto;
	}
	
	@RequestMapping(value = "/uploadMovieTrailerImage/", method = RequestMethod.POST)
	public MovieTrailer uploadMovieTrailerImage(@RequestBody MovieTrailerTo movieTrailerTo) {
		MovieTrailer movieTrailer = adminService.uploadMovieTrailerImage(movieTrailerTo);
		return movieTrailer;
	}
	
	
	@RequestMapping(value = "/uploadGifImage/", method = RequestMethod.POST)
	public GifPhoto uploadGifImage(@RequestBody GifPhotoTo gifPhotoTo) {
		GifPhoto gifPhoto = adminService.uploadGifImage(gifPhotoTo);
		return gifPhoto;
	}
	
	@RequestMapping(value = "/getAllUsers/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> listAllUsers() {
		List<?> users = (List<?>) adminService.adminFindAllUsers();
		return new ResponseEntity<List<?>>(users, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getLatestNews/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getLatestNews() {
		List<?> news = (List<?>) adminService.getLatestNews();
		return new ResponseEntity<List<?>>(news, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getLatestEvents/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getLatestEvents() {
		List<?> event = (List<?>) adminService.getLatestEvents();
		return new ResponseEntity<List<?>>(event, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getLatestMoviesNews/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getLatestMoviesNews() {
		List<?> movie = (List<?>) adminService.getLatestMoviesNews();
		return new ResponseEntity<List<?>>(movie, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/getLatestAuditionNews/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getLatestAuditionNews() {
		List<?> audition = (List<?>) adminService.getLatestAuditionNews();
		return new ResponseEntity<List<?>>(audition, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getCelibrityImage/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getCelibrityImage() {
		List<?> celiImage = (List<?>) adminService.getCelibrityImage();
		return new ResponseEntity<List<?>>(celiImage, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getCelibrityPadMenberImage/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getCelibrityPadMenberImage() {
		List<?> celiPadMemImage = (List<?>) adminService.getCelibrityPadMenberImage();
		return new ResponseEntity<List<?>>(celiPadMemImage, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getCelibrityPadMenberImageTwo/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getCelibrityPadMenberImageTwo() {
		List<?> celiPadMemImage = (List<?>) adminService.getCelibrityPadMenberImageTwo();
		return new ResponseEntity<List<?>>(celiPadMemImage, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getLatestPosterImage/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getLatestPosterImage() {
		List<?> posterImage = (List<?>) adminService.getLatestPosterImage();
		return new ResponseEntity<List<?>>(posterImage, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getMovieTrailerImage/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getMovieTrailerImage() {
		List<?> movieTrImage = (List<?>) adminService.getMovieTrailerImage();
		return new ResponseEntity<List<?>>(movieTrImage, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getGifImage/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getGifImage() {
		List<?> gifImage = (List<?>) adminService.getGifImage();
		return new ResponseEntity<List<?>>(gifImage, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/deleteLatestNews/{latestNeswsId}", method = RequestMethod.GET)
	public Long deleteLatestNews(@PathVariable("latestNeswsId") long latestNeswsId) {
		LatestNewsTo latestNewsTo = new LatestNewsTo();
		latestNewsTo.setLatestNeswsId(latestNeswsId);
		Long latestNews = adminService.deleteLatestNews(latestNewsTo.getLatestNeswsId());
		return latestNews;
	}
	
	@RequestMapping(value = "/deleteLatestEvent/{latestEventId}", method = RequestMethod.GET)
	public Long deleteLatestEvent(@PathVariable("latestEventId") long latestEventId) {
		LatestEventsTo latestEventsTo = new LatestEventsTo();
		latestEventsTo.setLatestEventId(latestEventId);
		Long latestNews = adminService.deleteLatestEvent(latestEventsTo.getLatestEventId());
		return latestNews;
	}
	
	@RequestMapping(value = "/deleteLatestMoviesNews/{latestMovieId}", method = RequestMethod.GET)
	public Long deleteLatestMoviesNews(@PathVariable("latestMovieId") long latestMovieId) {
		LatestMovieNewsTo latestMovieNewsTo = new LatestMovieNewsTo();
		latestMovieNewsTo.setLatestMovieId(latestMovieId);
		Long latestmovieNews = adminService.deleteLatestMoviesNews(latestMovieNewsTo.getLatestMovieId());
		return latestmovieNews;
	}
	
	@RequestMapping(value = "/deleteLatestAuditionNews/{latestAuditionId}", method = RequestMethod.GET)
	public Long deleteLatestAuditionNews(@PathVariable("latestAuditionId") long latestAuditionId) {
		LatestAuditionNewsTo latestAuditionNewsTo = new LatestAuditionNewsTo();
		latestAuditionNewsTo.setLatestAuditionId(latestAuditionId);
		Long latestauditionNews = adminService.deleteLatestAuditionNews(latestAuditionNewsTo.getLatestAuditionId());
		return latestauditionNews;
	}
	
	@RequestMapping(value = "/deleteCelibrityImage/{celibrityImageId}", method = RequestMethod.GET)
	public Long deleteCelibrityImage(@PathVariable("celibrityImageId") long celibrityImageId) {
		CelibrityImagesTo celibrityImagesTo = new CelibrityImagesTo();
		celibrityImagesTo.setCelibrityImageId(celibrityImageId);
		Long celibrityImages = adminService.deleteCelibrityImage(celibrityImagesTo.getCelibrityImageId());
		return celibrityImages;
	}
	
	@RequestMapping(value = "/deleteCelibrityPadMemberImage/{celibrityPadImageId}", method = RequestMethod.GET)
	public Long deleteCelibrityPadMemberImage(@PathVariable("celibrityPadImageId") long celibrityPadImageId) {
		CelibrityPadMemberImageTo celibrityImagesTo = new CelibrityPadMemberImageTo();
		celibrityImagesTo.setCelibrityPadImageId(celibrityPadImageId);
		Long celibrityImages = adminService.deleteCelibrityPadMemberImage(celibrityImagesTo.getCelibrityPadImageId());
		return celibrityImages;
	}
	
	@RequestMapping(value = "/deleteCelibrityPadMemberImageTwo/{padmemberImageId}", method = RequestMethod.GET)
	public Long deleteCelibrityPadMemberImageTwo(@PathVariable("padmemberImageId") long padmemberImageId) {
		PadMemberImagesTo padMemberImagesTo = new PadMemberImagesTo();
		padMemberImagesTo.setPadmemberImageId(padmemberImageId);
		Long padMemberImages = adminService.deleteCelibrityPadMemberImageTwo(padMemberImagesTo.getPadmemberImageId());
		return padMemberImages;
	}
	
	@RequestMapping(value = "/deleteLatestPosterImage/{posterImageId}", method = RequestMethod.GET)
	public Long deleteLatestPosterImage(@PathVariable("posterImageId") long posterImageId) {
		LatestPosterPhotoTo latestPosterPhotoTo = new LatestPosterPhotoTo();
		latestPosterPhotoTo.setPosterImageId(posterImageId);
		Long padMemberImages = adminService.deleteLatestPosterImage(latestPosterPhotoTo.getPosterImageId());
		return padMemberImages;
	}
	
	@RequestMapping(value = "/deleteMovieTrailerImage/{movieTrailerImageId}", method = RequestMethod.GET)
	public Long deleteMovieTrailerImage(@PathVariable("movieTrailerImageId") long movieTrailerImageId) {
		MovieTrailerTo movieTrailerTo = new MovieTrailerTo();
		movieTrailerTo.setMovieTrailerImageId(movieTrailerImageId);
		Long padMemberImages = adminService.deleteMovieTrailerImage(movieTrailerTo.getMovieTrailerImageId());
		return padMemberImages;
	}
	
	@RequestMapping(value = "/deleteGifImage/{gifImageId}", method = RequestMethod.GET)
	public Long deleteGifImage(@PathVariable("gifImageId") long gifImageId) {
		GifPhotoTo gifPhotoTo = new GifPhotoTo();
		gifPhotoTo.setGifImageId(gifImageId);
		Long deleteGifImage = adminService.deleteGifImage(gifPhotoTo.getGifImageId());
		return deleteGifImage;
	}
	
	//================Crowd Funding Start============= //
	
	@RequestMapping(value = "/saveCrowdFunding/", method = RequestMethod.POST)
	public CrowdFunding saveCrowdFunding(@RequestBody CrowdFundingTo crowdFundingTo,UriComponentsBuilder ucBuilder) {
		CrowdFunding crowd = adminService.saveCrowdFunding(crowdFundingTo);
		return crowd;
	}
	
	@RequestMapping(value = "/getCrowdFunding/", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getCrowdFunding() {
		List<?> crowdusers = (List<?>) adminService.getCrowdFunding();
		return new ResponseEntity<List<?>>(crowdusers, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/deleteCrowdFunding/{crowdFundingId}", method = RequestMethod.GET)
	public Long deleteCrowdFunding(@PathVariable("crowdFundingId") long crowdFundingId) {
		Long deletecrowd = adminService.deleteCrowdFunding(crowdFundingId);
		return deletecrowd;
	}
	
	//================Crowd Funding End============= //
	
	
	//================Movie Distribution Start============= //
	
		@RequestMapping(value = "/saveMovieDistribution/", method = RequestMethod.POST)
		public MovieDistribution saveMovieDistribution(@RequestBody MovieDistributionTo movieDistributionTo,UriComponentsBuilder ucBuilder) {
			MovieDistribution movieDis = adminService.saveMovieDistribution(movieDistributionTo);
			return movieDis;
		}
		
		@RequestMapping(value = "/getMovieDistributionAdmin/", method = RequestMethod.GET)
		public ResponseEntity<List<?>> getMovieDistribution() {
			List<?> movie = (List<?>) adminService.getMovieDistribution();
			return new ResponseEntity<List<?>>(movie, HttpStatus.OK);
		}
		
		@RequestMapping(value = "/deleteMovieDistributionAdmin/{movieDistributionId}", method = RequestMethod.GET)
		public Long deleteMovieDistributionAdmin(@PathVariable("movieDistributionId") long movieDistributionId) {
			Long deletecrowd = adminService.deleteMovieDistributionAdmin(movieDistributionId);
			return deletecrowd;
		}
		
		//================Movie Distribution End============= //
		
		
		@RequestMapping(value = "/birthdayWishesEmail/{userId}", method = RequestMethod.POST)
		public User birthdayWishesEmail(@PathVariable("userId") long userId) {
			final User user = adminService.getUserByUserId(userId);
			System.out.println("user:"+user.getFirstName());
			
			  mailSender.send(new MimeMessagePreparator() {
					@Override
					public void prepare(MimeMessage mimeMessage) throws Exception {
					MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					    
					    messageHelper.setFrom("a2zcinemaworld@gmail.com");
					    messageHelper.setTo(user.getEmail());
		                messageHelper.setSubject("Birthday Wishes Greeting");
		                
		                String bgColor = "#1797be";
		                StringBuffer body = new StringBuffer("<table align='center' width='600' border='0' cellpadding='5' cellspacing='' style='border: 1px solid #dfdfdf;'>");
						body.append("<tr>"
						    +"<td colspan='4' class='header-bg' style='background-color:"+bgColor+"'><img src='https://s3.amazonaws.com/a2zcinema-pics/a2zcinema_logo.png'></td>"
						  +"</tr>");
						
						body.append("<tr>"
						    +"<td colspan='4' bgcolor='#f5f5f5'><span style='color: #222222; font-family: Arial, Helvetica, sans-serif; font-size: 15px; font-weight: bold; text-align: left; text-decoration: none;'>A2zcinemaworld.com Wishes You Very Happy Birthday  </span></td>"
						  +"</tr>");
						
						body.append("<tr>"
							    +"<td colspan='12' class='header-bg'><img src='https://s3.amazonaws.com/a2zcinema-pics/a2zcinemabirthday.jpg' style='width: 600px;'></td>"
							  +"</tr>");
						
						body.append("<tr>"
						    +"<td colspan='3'><span style='color: #4c4c4c; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; text-align: left; text-decoration: none;'>Best regards<br>"
						      +"The a2zcinemaworld.com Team"+"</span></td>" 
						 +" </tr>");
						
						body.append("</table>");
						
						messageHelper.setText(body.toString(), true);
					}
		        });
	   return user;
	}	
	
}
