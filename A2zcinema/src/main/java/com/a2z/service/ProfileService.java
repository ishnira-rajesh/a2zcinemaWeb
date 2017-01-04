package com.a2z.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.a2z.model.Address;
import com.a2z.model.AgencyProfilePersonalInfo;
import com.a2z.model.ImageVideo;
import com.a2z.model.PhysicalDetails;
import com.a2z.model.ProfessinalWorkExp;
import com.a2z.model.ProfileImages;
import com.a2z.model.User;
import com.a2z.model.UserProfilePersonalInfo;
import com.a2z.to.AddressTo;
import com.a2z.to.AgencyProfilePersonalInfoTo;
import com.a2z.to.ImageVideoTo;
import com.a2z.to.PhysicalDetailsTo;
import com.a2z.to.ProfessinalWorkExpTo;
import com.a2z.to.ProfileImagesTo;
import com.a2z.to.UserProfilePersonalInfoTo;
import com.a2z.to.UserTo;

public interface ProfileService {
	public UserProfilePersonalInfo saveUserProfilePersonalInfo(UserProfilePersonalInfoTo userProfilePersonalInfoTo);
	public PhysicalDetails saveUserPhysicalDetails(PhysicalDetailsTo physicalDetailsTo);
	public Address saveUserAddressDetails(AddressTo addressTo);
	public ProfessinalWorkExp saveUserProWorkExp(ProfessinalWorkExpTo professinalWorkExpTo);
	public AgencyProfilePersonalInfo saveAgencyProfilePersonalInfo(AgencyProfilePersonalInfoTo agencyProfilePersonalInfoTo);
	
	public List<?> getProfileDetailsById(long userId);
	public List<?> getPhysicalDetailsById(long userId);
	public List<?> getAddressDetailsById(long userId);
	public List<?> getExpDetailsById(long userId);
	public List<?> getAgnProfileDetailsById(long userId);
	public ImageVideo saveImageVideo(ImageVideoTo imageVideoTo);
	public List<?> getUserVideoById(long userId);
	public void saveUploadImage(MultipartFile file);
	
	public ProfileImages uploadMultipleFile(ProfileImagesTo profileImagesTo);
	public List<?> getProfileImageByUserId(long userId);
	public Long deleteProfileImageByUserId(long profileImageId);
	public String changeUserPassword(Long userId, String password, String newPassword);
	
	public String uploadUserPicFile(Long userId, String userPic);
	public List<?> getUserPicFileByUserId(Long userId);
	
}
