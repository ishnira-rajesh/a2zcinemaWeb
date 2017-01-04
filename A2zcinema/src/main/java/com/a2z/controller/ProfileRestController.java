package com.a2z.controller;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import com.a2z.model.Address;
import com.a2z.model.AgencyProfilePersonalInfo;
import com.a2z.model.AjaxResponse;
import com.a2z.model.ImageVideo;
import com.a2z.model.PhysicalDetails;
import com.a2z.model.ProfessinalWorkExp;
import com.a2z.model.ProfileImages;
import com.a2z.model.User;
import com.a2z.model.UserProfilePersonalInfo;
import com.a2z.service.ProfileService;
import com.a2z.to.AddressTo;
import com.a2z.to.AgencyProfilePersonalInfoTo;
import com.a2z.to.ImageVideoTo;
import com.a2z.to.PhysicalDetailsTo;
import com.a2z.to.ProfessinalWorkExpTo;
import com.a2z.to.ProfileImagesTo;
import com.a2z.to.UserProfilePersonalInfoTo;
import com.a2z.to.UserTo;

@RestController
@PropertySource(value = { "classpath:application.properties" })
public class ProfileRestController {
	
	private static final Logger logger = LoggerFactory
			.getLogger(ProfileRestController.class);

	
	@Autowired
	ProfileService profileService;
	
	@RequestMapping(value = "/profile/", method = RequestMethod.POST)
	public UserProfilePersonalInfo userProfilePersonalInfo(
			@RequestBody UserProfilePersonalInfoTo userProfilePersonalInfoTo, UriComponentsBuilder ucBuilder) {
		UserProfilePersonalInfo userProfilePersonalInfo = profileService.saveUserProfilePersonalInfo(userProfilePersonalInfoTo);
		return userProfilePersonalInfo;
	}

	@RequestMapping(value = "/physicalDetails/", method = RequestMethod.POST)
	public PhysicalDetails userPhysicalDetails(@RequestBody PhysicalDetailsTo physicalDetailsTo,
			UriComponentsBuilder ucBuilder) {
		PhysicalDetails uphydetails = profileService.saveUserPhysicalDetails(physicalDetailsTo);
		return uphydetails;
	}

	@RequestMapping(value = "/userAddress/", method = RequestMethod.POST)
	public Address userAddressDetails(@RequestBody AddressTo addressTo, UriComponentsBuilder ucBuilder) {
		Address uaddres = profileService.saveUserAddressDetails(addressTo);
		return uaddres;
	}

	@RequestMapping(value = "/userProExp/", method = RequestMethod.POST)
	public ProfessinalWorkExp userProfessinalExpDetails(@RequestBody ProfessinalWorkExpTo professinalWorkExpTo,
			UriComponentsBuilder ucBuilder) {
		ProfessinalWorkExp prowrkex = profileService.saveUserProWorkExp(professinalWorkExpTo);
		return prowrkex;
	}
	
	@RequestMapping(value = "/uploadMultipleFile/", method = RequestMethod.POST)
	public ProfileImages uploadMultipleFile(@RequestBody ProfileImagesTo profileImagesTo) {
		ProfileImages profileImages = profileService.uploadMultipleFile(profileImagesTo);
		return profileImages;
	}
	
	@RequestMapping(value = "/uploadUserPicFile/", method = RequestMethod.POST)
	public UserTo uploadUserPicFile(@RequestBody UserTo userTo) {
		String res = "NO";
		if(userTo !=null){
			res = profileService.uploadUserPicFile(userTo.getUserId(),userTo.getUserPic());
			userTo.setIsUserValid(res);
			String str = "User Pic Uploaded Successfully.";
			userTo.setErrorMessege(str);
		}
		userTo.setIsUserValid(res);
		return userTo;
	}
	
	@RequestMapping(value = "UserPicFileByUserId/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> UserPicFileByUserId(@PathVariable("userId") long userId) {
		UserTo uses = new UserTo();
		uses.setUserId(userId);
		// System.out.println("Fetching User with id " + uses.getUserId());
		List<?> user = (List<?>) profileService.getUserPicFileByUserId(uses.getUserId());
		return new ResponseEntity<List<?>>(user, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/saveImageVideo/", method = RequestMethod.POST)
	public ImageVideo saveImageVideo(@RequestBody ImageVideoTo imageVideoTo,
			UriComponentsBuilder ucBuilder) {
		ImageVideo imageVideo = profileService.saveImageVideo(imageVideoTo);
		return imageVideo;
	}

	@RequestMapping(value = "/agencyprofileinfo/", method = RequestMethod.POST)
	public AgencyProfilePersonalInfo userAgencyProfilePersonalInfo(
			@RequestBody AgencyProfilePersonalInfoTo agencyProfilePersonalInfoTo, UriComponentsBuilder ucBuilder) {
		System.out.println("getOfficeContNo :" + agencyProfilePersonalInfoTo.getOfficeContNo() + "," + "getService:"
				+ agencyProfilePersonalInfoTo.getService() + "," + "getWebsite:"
				+ agencyProfilePersonalInfoTo.getWebsite());
		AgencyProfilePersonalInfo appinfo = profileService.saveAgencyProfilePersonalInfo(agencyProfilePersonalInfoTo);
		return appinfo;
	}

	@RequestMapping(value = "/getProfileDetailsById/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getProfileDetailsById(@PathVariable("userId") long userId) {
		UserProfilePersonalInfoTo uses = new UserProfilePersonalInfoTo();
		uses.setUserId(userId);
		// System.out.println("Fetching User with id " + uses.getUserId());
		List<?> user = (List<?>) profileService.getProfileDetailsById(uses.getUserId());
	   
	    logger.debug("getUserDetailsProfile*******************8 :"+user);
		return new ResponseEntity<List<?>>(user, HttpStatus.OK);
	}

	/*
	 * ==============================All get type
	 * method=================================
	 */

	@RequestMapping(value = "/getPhysicalDetailsById/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getPhysicalDetailsById(@PathVariable("userId") long userId) {
		PhysicalDetailsTo uses = new PhysicalDetailsTo();
		uses.setUserId(userId);
		// System.out.println("Fetching User with id " + uses.getUserId());
		List<?> user = (List<?>) profileService.getPhysicalDetailsById(uses.getUserId());
		// System.out.println("getPhysicalDetailsById :"+user);
		return new ResponseEntity<List<?>>(user, HttpStatus.OK);
	}

	@RequestMapping(value = "/getAddressDetailsById/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getAddressDetailsById(@PathVariable("userId") long userId) {
		AddressTo addr = new AddressTo();
		addr.setUserId(userId);
		// System.out.println("Fetching User with id " + addr.getUserId());
		List<?> addrs = (List<?>) profileService.getAddressDetailsById(addr.getUserId());
		// System.out.println("getPhysicalDetailsById :"+addrs);
		return new ResponseEntity<List<?>>(addrs, HttpStatus.OK);
	}

	@RequestMapping(value = "/getExpDetailsById/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getExpDetailsById(@PathVariable("userId") long userId) {
		ProfessinalWorkExpTo pfwork = new ProfessinalWorkExpTo();
		pfwork.setUserId(userId);
		// System.out.println("Fetching User with id " + pfwork.getUserId());
		List<?> pfworkex = (List<?>) profileService.getExpDetailsById(pfwork.getUserId());
		// System.out.println("getExpDetailsById :"+pfworkex);
		return new ResponseEntity<List<?>>(pfworkex, HttpStatus.OK);
	}

	@RequestMapping(value = "/getAgnProfileDetailsById/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getAgnProfileDetailsById(@PathVariable("userId") long userId) {
		AgencyProfilePersonalInfoTo agpinfo = new AgencyProfilePersonalInfoTo();
		agpinfo.setUserId(userId);
		// System.out.println("Fetching User with id " + agpinfo.getUserId());
		List<?> agpinfolist = (List<?>) profileService.getAgnProfileDetailsById(agpinfo.getUserId());
		// System.out.println("getExpDetailsById :"+agpinfolist);
		return new ResponseEntity<List<?>>(agpinfolist, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getUserVideoById/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getUserVideoById(@PathVariable("userId") long userId) {
		ImageVideoTo agpinfo = new ImageVideoTo();
		agpinfo.setUserId(userId);
		List<?> agpinfolist = (List<?>) profileService.getUserVideoById(agpinfo.getUserId());
		return new ResponseEntity<List<?>>(agpinfolist, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/getProfileImageByUserId/{userId}", method = RequestMethod.GET)
	public ResponseEntity<List<?>> getProfileImageByUserId(@PathVariable("userId") long userId) {
		ProfileImagesTo agpinfo = new ProfileImagesTo();
		agpinfo.setUserId(userId);
		List<?> agpinfolist = (List<?>) profileService.getProfileImageByUserId(agpinfo.getUserId());
		return new ResponseEntity<List<?>>(agpinfolist, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/deleteProfileImageByUserId/{profileImageId}", method = RequestMethod.GET)
	public Long deleteProfileImageByUserId(@PathVariable("profileImageId") long profileImageId) {
		ProfileImagesTo profileImagesTo = new ProfileImagesTo();
		profileImagesTo.setProfileImageId(profileImageId);
		Long profileImages = profileService.deleteProfileImageByUserId(profileImagesTo.getProfileImageId());
		return profileImages;
	}
	
	@RequestMapping(value = "/changeUserPassword/", method = RequestMethod.POST)
	public UserTo changeUserPassword(@RequestBody UserTo userTo, UriComponentsBuilder ucBuilder) {
		//String res = "NO";
		String isValid = "No";
		try {
			if (userTo.getNewPassword().equals(userTo.getPassword())) {
				//isValid = "NotSame";
				String message = "New password should be different from current password !";
				//userTo.setIsUserValid(isValid);
				userTo.setErrorMessege(message); 
			}else{
				if(userTo.getNewPassword().equals(userTo.getConfirmNewPassword())){
					isValid = profileService.changeUserPassword(userTo.getUserId(),userTo.getPassword(),userTo.getNewPassword());
					//isValid = "true";
					userTo.setIsUserValid(isValid);
					String message = "Your password changed successfully.";
					userTo.setErrorMessege(message); 
				}else{
					//isValid = "false";
					userTo.setIsUserValid(isValid);
					String message = "Your new password or confirm password not match !";
					userTo.setErrorMessege(message); 
				}
		  }
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		/*if (userTo.getNewPassword().equals(userTo.getPassword())) {
			isValid = "NotSame";
			String message = "New password should be different from current password !";
			userTo.setIsUserValid(isValid);
			userTo.setErrorMessege(message); 
		}else{
			if(userTo.getNewPassword().equals(userTo.getConfirmNewPassword())){
				res = profileService.changeUserPassword(userTo.getUserId(),userTo.getPassword(),userTo.getNewPassword());
				isValid = "true";
				userTo.setIsUserValid(isValid);
				String message = "Your password changed successfully.";
				userTo.setErrorMessege(message); 
			}else{
				isValid = "false";
				userTo.setIsUserValid(isValid);
				String message = "Your new password or confirm password not match !";
				userTo.setErrorMessege(message); 
			}
		}*/
		return userTo;
	}
	
}
