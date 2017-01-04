package com.a2z.dao;

import java.util.List;

import com.a2z.model.Address;
import com.a2z.model.AgencyProfilePersonalInfo;
import com.a2z.model.ImageVideo;
import com.a2z.model.PhysicalDetails;
import com.a2z.model.ProfessinalWorkExp;
import com.a2z.model.ProfileImages;
import com.a2z.model.ProfileImages2;
import com.a2z.model.User;
import com.a2z.model.UserProfilePersonalInfo;
import com.a2z.to.UserTo;

public interface ProfileDao {
	public UserProfilePersonalInfo saveUserProfilePersonalInfo(UserProfilePersonalInfo userProfilePersonalInfo);
	public PhysicalDetails saveUserPhysicalDetails(PhysicalDetails physicalDetails);
	public Address saveUserAddressDetails(Address address);
	public ProfessinalWorkExp saveUserProWorkExp(ProfessinalWorkExp professinalWorkExp);
	public AgencyProfilePersonalInfo saveAgencyProfilePersonalInfo(AgencyProfilePersonalInfo agencyProfilePersonalInfo);
	
	public List<?> getProfileDetailsById(long userId);
	public List<?> getPhysicalDetailsById(long userId);
	public List<?> getAddressDetailsById(long userId);
	public List<?> getExpDetailsById(long userId);
	public List<?> getAgnProfileDetailsById(long userId);
	
	public ImageVideo saveImageVideo(ImageVideo imageVideo);
	public List<?> getUserVideoById(long userId);
	
	public void saveUploadImage(ProfileImages2 file);
	public ProfileImages uploadMultipleFile(ProfileImages profileImages);
	public List<?> getProfileImageByUserId(long userId);
	
	public Long deleteProfileImageByUserId(long profileImageId);
	
	public String changeUserPassword(String userName, String password, String newPassword);
	
	public String uploadUserPicFile(Long userId, String userPic);
	public List<?> getUserPicFileByUserId(Long userId);
	
	
}
