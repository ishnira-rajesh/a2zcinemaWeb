package com.a2z.service;

import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.codec.Base64;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.a2z.dao.ProfileDao;
import com.a2z.dao.UserDao;
import com.a2z.model.Address;
import com.a2z.model.AgencyProfilePersonalInfo;
import com.a2z.model.ImageVideo;
import com.a2z.model.PhysicalDetails;
import com.a2z.model.ProfessinalWorkExp;
import com.a2z.model.ProfileImages;
import com.a2z.model.ProfileImages2;
import com.a2z.model.User;
import com.a2z.model.UserProfilePersonalInfo;
import com.a2z.to.AddressTo;
import com.a2z.to.AgencyProfilePersonalInfoTo;
import com.a2z.to.ImageVideoTo;
import com.a2z.to.PhysicalDetailsTo;
import com.a2z.to.ProfessinalWorkExpTo;
import com.a2z.to.ProfileImagesTo;
import com.a2z.to.UserProfilePersonalInfoTo;
import com.a2z.util.Utils;

@Service("profileService")
@Transactional
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	private ProfileDao profileDao;
	@Autowired
	private UserDao userDao;
	
	public UserProfilePersonalInfo saveUserProfilePersonalInfo(UserProfilePersonalInfoTo userProfilePersonalInfoTo) {
		UserProfilePersonalInfo uppI = new UserProfilePersonalInfo();
		if(userProfilePersonalInfoTo.getProfileDetailsId()!=null){
			System.out.println("userProfilePersonalInfoTo.getProfileDetailsId()"+userProfilePersonalInfoTo.getProfileDetailsId());
			uppI.setProfileDetailsId(userProfilePersonalInfoTo.getProfileDetailsId());
			uppI.setFatherName(userProfilePersonalInfoTo.getFatherName());
			uppI.setGender(userProfilePersonalInfoTo.getGender());
			uppI.setDob(userProfilePersonalInfoTo.getDob());
			uppI.setAge(userProfilePersonalInfoTo.getAge());
			uppI.setWhatsupNo(userProfilePersonalInfoTo.getWhatsupNo());
			uppI.setLandlineNo(userProfilePersonalInfoTo.getLandlineNo());
			uppI.setEduQualification(userProfilePersonalInfoTo.getEduQualification());
			uppI.setCourseRelatedProfession(userProfilePersonalInfoTo.getCourseRelatedProfession());
			uppI.setLanguage(userProfilePersonalInfoTo.getLanguage());
			uppI.setProfileType(userProfilePersonalInfoTo.getProfileType());
			uppI.setAboutme(userProfilePersonalInfoTo.getAboutme());
			User user = userDao.findUserByUserId(userProfilePersonalInfoTo.getUserId());
			user.setUserId(userProfilePersonalInfoTo.getUserId());
			user.setMobile(userProfilePersonalInfoTo.getMobile());
			user.setEmail(userProfilePersonalInfoTo.getEmail());
			user.setFirstName(userProfilePersonalInfoTo.getFirstName());
			uppI.setUser(user);
			//user.getUserProfilePersonalInfo().add(uppI);
			profileDao.saveUserProfilePersonalInfo(uppI);
		}else{
			uppI.setFatherName(userProfilePersonalInfoTo.getFatherName());
			uppI.setGender(userProfilePersonalInfoTo.getGender());
			uppI.setDob(userProfilePersonalInfoTo.getDob());
			uppI.setAge(userProfilePersonalInfoTo.getAge());
			uppI.setWhatsupNo(userProfilePersonalInfoTo.getWhatsupNo());
			uppI.setLandlineNo(userProfilePersonalInfoTo.getLandlineNo());
			uppI.setEduQualification(userProfilePersonalInfoTo.getEduQualification());
			uppI.setCourseRelatedProfession(userProfilePersonalInfoTo.getCourseRelatedProfession());
			uppI.setLanguage(userProfilePersonalInfoTo.getLanguage());
			uppI.setProfileType(userProfilePersonalInfoTo.getProfileType());
			uppI.setAboutme(userProfilePersonalInfoTo.getAboutme());
			User user = userDao.findUserByUserId(userProfilePersonalInfoTo.getUserId());
			user.setUserId(userProfilePersonalInfoTo.getUserId());
			user.setMobile(userProfilePersonalInfoTo.getMobile());
			user.setEmail(userProfilePersonalInfoTo.getEmail());
			uppI.setUser(user);
			//user.getUserProfilePersonalInfo().add(uppI);
			profileDao.saveUserProfilePersonalInfo(uppI);
		}
		return uppI;
		
	}
	
	public PhysicalDetails saveUserPhysicalDetails(PhysicalDetailsTo physicalDetailsTo) {
		PhysicalDetails upd = new PhysicalDetails();
		if(physicalDetailsTo.getPhysicalDetailId()!=null){
			upd.setPhysicalDetailId(physicalDetailsTo.getPhysicalDetailId());
			upd.setComplexion(physicalDetailsTo.getComplexion());
			upd.setSkinQuality(physicalDetailsTo.getSkinQuality());
			upd.setEyeColor(physicalDetailsTo.getEyeColor());
			upd.setHeightUnit(physicalDetailsTo.getHeightUnit());
			upd.setWeightUnit(physicalDetailsTo.getWeightUnit());
			upd.setPhysique(physicalDetailsTo.getPhysique());
			upd.setFacialHair(physicalDetailsTo.getFacialHair());
			upd.setHairStyle(physicalDetailsTo.getHairStyle());
			upd.setHairColor(physicalDetailsTo.getHairColor());
			upd.setHairLength(physicalDetailsTo.getHairLength());
			
			User user = userDao.findUserByUserId(physicalDetailsTo.getUserId());
			user.setUserId(physicalDetailsTo.getUserId());
			upd.setUser(user);
			profileDao.saveUserPhysicalDetails(upd);
		}else{
			upd.setComplexion(physicalDetailsTo.getComplexion());
			upd.setSkinQuality(physicalDetailsTo.getSkinQuality());
			upd.setEyeColor(physicalDetailsTo.getEyeColor());
			upd.setHeightUnit(physicalDetailsTo.getHeightUnit());
			upd.setWeightUnit(physicalDetailsTo.getWeightUnit());
			upd.setPhysique(physicalDetailsTo.getPhysique());
			upd.setFacialHair(physicalDetailsTo.getFacialHair());
			upd.setHairStyle(physicalDetailsTo.getHairStyle());
			upd.setHairColor(physicalDetailsTo.getHairColor());
			upd.setHairLength(physicalDetailsTo.getHairLength());
			
			User user = userDao.findUserByUserId(physicalDetailsTo.getUserId());
			user.setUserId(physicalDetailsTo.getUserId());
			upd.setUser(user);
			profileDao.saveUserPhysicalDetails(upd);
		}
		return upd;
	}


	public Address saveUserAddressDetails(AddressTo addressTo) {
		Address addm = new Address();
		if(addressTo.getAddressId()!=null){
			addm.setAddressId(addressTo.getAddressId());
			addm.setPrAddress(addressTo.getPrAddress());
			addm.setPrCountry(addressTo.getPrCountry());
			addm.setPrState(addressTo.getPrState());
			addm.setPrDistrict(addressTo.getPrDistrict());
			addm.setPrZipPostal(addressTo.getPrZipPostal());
			
			addm.setPmAddress(addressTo.getPmAddress());
			addm.setPmCountry(addressTo.getPmCountry());
			addm.setPmState(addressTo.getPmState());
			addm.setPmDistrict(addressTo.getPmDistrict());
			addm.setPmZipPostal(addressTo.getPmZipPostal());
			
			User user = userDao.findUserByUserId(addressTo.getUserId());
			user.setUserId(addressTo.getUserId());
			addm.setUser(user);
			profileDao.saveUserAddressDetails(addm);
		}else{
			addm.setPrAddress(addressTo.getPrAddress());
			addm.setPrCountry(addressTo.getPrCountry());
			addm.setPrState(addressTo.getPrState());
			addm.setPrDistrict(addressTo.getPrDistrict());
			addm.setPrZipPostal(addressTo.getPrZipPostal());
			
			addm.setPmAddress(addressTo.getPmAddress());
			addm.setPmCountry(addressTo.getPmCountry());
			addm.setPmState(addressTo.getPmState());
			addm.setPmDistrict(addressTo.getPmDistrict());
			addm.setPmZipPostal(addressTo.getPmZipPostal());
			
			User user = userDao.findUserByUserId(addressTo.getUserId());
			user.setUserId(addressTo.getUserId());
			addm.setUser(user);
			profileDao.saveUserAddressDetails(addm);
		}
		return addm;
	}

	public ProfessinalWorkExp saveUserProWorkExp(ProfessinalWorkExpTo professinalWorkExpTo) {
		ProfessinalWorkExp proWorkExp = new ProfessinalWorkExp();
		if(professinalWorkExpTo.getProfessionalDetailsId()!=null){
			proWorkExp.setProfessionalDetailsId(professinalWorkExpTo.getProfessionalDetailsId());
			proWorkExp.setPreWorkInd(professinalWorkExpTo.getPreWorkInd());
			proWorkExp.setNameWorkWithDir(professinalWorkExpTo.getNameWorkWithDir());
			proWorkExp.setNameWorkFilm(professinalWorkExpTo.getNameWorkFilm());
			proWorkExp.setNameWorkProHouse(professinalWorkExpTo.getNameWorkProHouse());
			proWorkExp.setFileIndIntreste(professinalWorkExpTo.getFileIndIntreste());
			proWorkExp.setReason(professinalWorkExpTo.getReason());
			
			User user = userDao.findUserByUserId(professinalWorkExpTo.getUserId());
			System.out.println("addressTo.getUserId() :"+professinalWorkExpTo.getUserId());
			user.setUserId(professinalWorkExpTo.getUserId());
			proWorkExp.setUser(user);
			profileDao.saveUserProWorkExp(proWorkExp);
		}else{
			proWorkExp.setPreWorkInd(professinalWorkExpTo.getPreWorkInd());
			proWorkExp.setNameWorkWithDir(professinalWorkExpTo.getNameWorkWithDir());
			proWorkExp.setNameWorkFilm(professinalWorkExpTo.getNameWorkFilm());
			proWorkExp.setNameWorkProHouse(professinalWorkExpTo.getNameWorkProHouse());
			proWorkExp.setFileIndIntreste(professinalWorkExpTo.getFileIndIntreste());
			proWorkExp.setReason(professinalWorkExpTo.getReason());
			
			User user = userDao.findUserByUserId(professinalWorkExpTo.getUserId());
			System.out.println("addressTo.getUserId() :"+professinalWorkExpTo.getUserId());
			user.setUserId(professinalWorkExpTo.getUserId());
			proWorkExp.setUser(user);
			profileDao.saveUserProWorkExp(proWorkExp);
		}
		return proWorkExp;
		
	}

	public AgencyProfilePersonalInfo saveAgencyProfilePersonalInfo(AgencyProfilePersonalInfoTo agencyProfilePersonalInfoTo) {
		
		AgencyProfilePersonalInfo appI = new AgencyProfilePersonalInfo();
		if(agencyProfilePersonalInfoTo.getProfileDetailsAgencyId()!=null){
			System.out.println("yes");
			appI.setProfileDetailsAgencyId(agencyProfilePersonalInfoTo.getProfileDetailsAgencyId());
			appI.setNameOfAgency(agencyProfilePersonalInfoTo.getNameOfAgency());
			appI.setOfficeContNo(agencyProfilePersonalInfoTo.getOfficeContNo());
			appI.setWebsite(agencyProfilePersonalInfoTo.getWebsite());
			appI.setService(agencyProfilePersonalInfoTo.getService());
			appI.setAboutme(agencyProfilePersonalInfoTo.getAboutme());
			
			User user = userDao.findUserByUserId(agencyProfilePersonalInfoTo.getUserId());
			System.out.println("agencyProfilePersonalInfoTo.getUserId() :"+agencyProfilePersonalInfoTo.getUserId());
			user.setUserId(agencyProfilePersonalInfoTo.getUserId());
			user.setMobile(agencyProfilePersonalInfoTo.getMobile());
			user.setEmail(agencyProfilePersonalInfoTo.getEmail());
			user.setFirstName(agencyProfilePersonalInfoTo.getFirstName());
			appI.setUser(user);
			profileDao.saveAgencyProfilePersonalInfo(appI);
		}else{
			System.out.println("no null");
			appI.setNameOfAgency(agencyProfilePersonalInfoTo.getNameOfAgency());
			appI.setOfficeContNo(agencyProfilePersonalInfoTo.getOfficeContNo());
			appI.setWebsite(agencyProfilePersonalInfoTo.getWebsite());
			appI.setService(agencyProfilePersonalInfoTo.getService());
			appI.setAboutme(agencyProfilePersonalInfoTo.getAboutme());
			
			User user = userDao.findUserByUserId(agencyProfilePersonalInfoTo.getUserId());
			System.out.println("agencyProfilePersonalInfoTo.getUserId() :"+agencyProfilePersonalInfoTo.getUserId());
			user.setUserId(agencyProfilePersonalInfoTo.getUserId());
			user.setMobile(agencyProfilePersonalInfoTo.getMobile());
			user.setEmail(agencyProfilePersonalInfoTo.getEmail());
			appI.setUser(user);
			profileDao.saveAgencyProfilePersonalInfo(appI);
		}
		return appI;
	}

	public List<?> getProfileDetailsById(long userId) {
		return profileDao.getProfileDetailsById(userId);
	}

	public List<?> getPhysicalDetailsById(long userId) {
		return profileDao.getPhysicalDetailsById(userId);
	}

	public List<?> getAddressDetailsById(long userId) {
		return profileDao.getAddressDetailsById(userId);
	}

	public List<?> getExpDetailsById(long userId) {
		return profileDao.getExpDetailsById(userId);
	}
	public List<?> getAgnProfileDetailsById(long userId) {
		return profileDao.getAgnProfileDetailsById(userId);
	}
	
	public ImageVideo saveImageVideo(ImageVideoTo imageVideoTo) {
		ImageVideo image = new ImageVideo();
		if(imageVideoTo.getImageVideoId()!=null){
			image.setImageVideoId(imageVideoTo.getImageVideoId());
			image.setVideoUrlOne(imageVideoTo.getVideoUrlOne());
			image.setVideoUrlTwo(imageVideoTo.getVideoUrlTwo());
			image.setVideoUrlThree(imageVideoTo.getVideoUrlThree());
			User user = userDao.findUserByUserId(imageVideoTo.getUserId());
			System.out.println("imageVideoTo.getUserId() :"+imageVideoTo.getUserId());
			user.setUserId(imageVideoTo.getUserId());
			image.setUser(user);
			profileDao.saveImageVideo(image);
		}else{
			image.setVideoUrlOne(imageVideoTo.getVideoUrlOne());
			image.setVideoUrlTwo(imageVideoTo.getVideoUrlTwo());
			image.setVideoUrlThree(imageVideoTo.getVideoUrlThree());
			User user = userDao.findUserByUserId(imageVideoTo.getUserId());
			System.out.println("user :"+user);
			user.setUserId(imageVideoTo.getUserId());
			image.setUser(user);
			profileDao.saveImageVideo(image);
		}
		return image;
	}
	
	public List<?> getUserVideoById(long userId) {
		return profileDao.getUserVideoById(userId);
	}

	@Override
	public void saveUploadImage(MultipartFile file) {
		
		ProfileImages2 prf = new ProfileImages2();
		try {
			prf.setProfileImageName(file.getOriginalFilename());
			prf.setProfileImageType(file.getContentType());
			prf.setProfileImageSize(file.getSize());
			prf.setProfileImageData(file.getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}
		profileDao.saveUploadImage(prf);
		
	}

	@Override
	public ProfileImages uploadMultipleFile(ProfileImagesTo profileImagesTo) {
		ProfileImages profileImages = new ProfileImages();
		profileImages.setImageName(profileImagesTo.getImageName());
        User user = userDao.findUserByUserId(profileImagesTo.getUserId());
		user.setUserId(profileImagesTo.getUserId());
		profileImages.setUser(user);
		profileDao.uploadMultipleFile(profileImages);
		return profileImages;
	}

	@Override
	public List<?> getProfileImageByUserId(long userId) {
		return profileDao.getProfileImageByUserId(userId);
	}

	@Override
	public Long deleteProfileImageByUserId(long profileImageId) {
		return profileDao.deleteProfileImageByUserId(profileImageId);
	}
	
	@Override
	public String changeUserPassword(Long userId, String password, String newPassword) {
		User user = userDao.findUserByUserId(userId);
		
		byte[] bytes = password.getBytes();
		byte[] encodedBytes = Base64.encode(bytes );
		
		byte[] newbytes = newPassword.getBytes();
		byte[] newenBytes = Base64.encode(newbytes );
		
		try{
			String enPassword = new String(encodedBytes);
			String ennewPassword = new String(newenBytes);
			return profileDao.changeUserPassword(user.getUserName(), enPassword, ennewPassword);
    	}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public String uploadUserPicFile(Long userId, String userPic) {
		
		return profileDao.uploadUserPicFile(userId, userPic);
	}

	@Override
	public List<?> getUserPicFileByUserId(Long userId) {
		// TODO Auto-generated method stub
		return profileDao.getUserPicFileByUserId(userId);
	}

}
