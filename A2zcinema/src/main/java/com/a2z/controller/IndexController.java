package com.a2z.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getIndexPage() {
		return "index";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}

	@RequestMapping(value = "/homeRed", method = RequestMethod.GET)
	public String homeRed() {
		return "actorProfile";
	}

	@RequestMapping(value = "/actorProfile", method = RequestMethod.GET)
	public String getActorProfile() {
		//System.out.println("actorProfile call Correct");
		return "actorProfile";
	}

	@RequestMapping(value = "/backSupportProfile", method = RequestMethod.GET)
	public String getBackSupportProfile() {
		// System.out.println("backSupportProfile call Correct");
		return "backSupportProfile";
	}

	@RequestMapping(value = "/agencyProfile", method = RequestMethod.GET)
	public String getAgencyProfile() {
		// System.out.println("agencyProfile call Correct");
		return "agencyProfile";
	}

	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
	public String aboutus() {
		return "aboutus";
	}

	@RequestMapping(value = "/crowdfunding", method = RequestMethod.GET)
	public String crowdfunding() {
		return "crowdfunding";
	}

	@RequestMapping(value = "/moviemaking", method = RequestMethod.GET)
	public String moviemaking() {
		return "moviemaking";
	}

	@RequestMapping(value = "/moviebooking", method = RequestMethod.GET)
	public String moviebooking() {
		return "moviebooking";
	}

	@RequestMapping(value = "/bannerposting", method = RequestMethod.GET)
	public String bannerposting() {
		return "bannerposting";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		return "contact";
	}

	@RequestMapping(value = "/onlinedistribution", method = RequestMethod.GET)
	public String onlinedistribution() {
		return "onlinedistribution";
	}

	@RequestMapping(value = "/scriptwriting", method = RequestMethod.GET)
	public String scriptwriting() {
		return "scriptwriting";
	}

	@RequestMapping(value = "/storyboarding", method = RequestMethod.GET)
	public String storyboarding() {
		return "storyboarding";
	}

	@RequestMapping(value = "/onlineaudition", method = RequestMethod.GET)
	public String onlineaudition() {
		return "onlineaudition";
	}

	@RequestMapping(value = "/useronedetalis", method = RequestMethod.GET)
	public String useronedetalis() {
		return "useronedetalis";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value = "/privacypolicy", method = RequestMethod.GET)
	public String privacypolicy() {
		return "privacypolicy";
	}
	
	@RequestMapping(value = "/termconditions", method = RequestMethod.GET)
	public String termconditions() {
		return "termconditions";
	}
	
	
	/*========================ADMIN PART ============================================*/
	@RequestMapping(value = "/adminDashboard", method = RequestMethod.GET)
	public String adminDashboard() {
		return "adminDashboard";
	}
	
	@RequestMapping(value = "/adminProfileupload", method = RequestMethod.GET)
	public String adminProfileupload() {
		return "adminProfileupload";
	}
	
	@RequestMapping(value = "/adminUrllink", method = RequestMethod.GET)
	public String adminUrllink() {
		return "adminUrllink";
	}
	
	@RequestMapping(value = "/adminPostervideo", method = RequestMethod.GET)
	public String adminPostervideo() {
		return "adminPostervideo";
	}
	
	@RequestMapping(value = "/adminReport", method = RequestMethod.GET)
	public String adminReport() {
		return "adminReport";
	}
	
	@RequestMapping(value = "/adminCrowfunding", method = RequestMethod.GET)
	public String adminCrowfunding() {
		return "adminCrowfunding";
	}
	
	@RequestMapping(value = "/adminMovieDistribution", method = RequestMethod.GET)
	public String adminMovieDistribution() {
		return "adminMovieDistribution";
	}



}
