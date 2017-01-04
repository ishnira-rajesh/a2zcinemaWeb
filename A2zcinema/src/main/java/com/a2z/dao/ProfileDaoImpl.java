package com.a2z.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.a2z.model.Address;
import com.a2z.model.AgencyProfilePersonalInfo;
import com.a2z.model.ImageVideo;
import com.a2z.model.PhysicalDetails;
import com.a2z.model.ProfessinalWorkExp;
import com.a2z.model.ProfileImages;
import com.a2z.model.ProfileImages2;
import com.a2z.model.User;
import com.a2z.model.UserProfilePersonalInfo;

@Repository("profileDao")
@Transactional
public class ProfileDaoImpl extends AbstractDao<Integer, UserProfilePersonalInfo> implements ProfileDao {

	public UserProfilePersonalInfo saveUserProfilePersonalInfo(UserProfilePersonalInfo userProfilePersonalInfo) {
		getSession().merge(userProfilePersonalInfo);
		return userProfilePersonalInfo;
	}

	public PhysicalDetails saveUserPhysicalDetails(PhysicalDetails physicalDetails) {
		getSession().merge(physicalDetails);
		return physicalDetails;
	}

	public Address saveUserAddressDetails(Address address) {
		getSession().merge(address);
		return address;
	}

	public ProfessinalWorkExp saveUserProWorkExp(ProfessinalWorkExp professinalWorkExp) {
		getSession().merge(professinalWorkExp);
		return professinalWorkExp;
	}

	public AgencyProfilePersonalInfo saveAgencyProfilePersonalInfo(AgencyProfilePersonalInfo agencyProfilePersonalInfo) {
		getSession().merge(agencyProfilePersonalInfo);
		return agencyProfilePersonalInfo;
	}
	
	public ImageVideo saveImageVideo(ImageVideo imageVideo) {
		getSession().merge(imageVideo);
		return imageVideo;
	}

	public List<?> getProfileDetailsById(long userId) {
		List<?> updata = null;
		String query=" SELECT u.email_id,u.first_name,u.contact_no,pd.profile_details_id,pd.father_name, "+ 
				" pd.gender,pd.dob, "+
				" pd.age,pd.whatsup_no,pd.landline_no, "+
				" pd.education_qualification,pd.course_related_profession,pd.language,pd.profile_type,pd.aboutme  "+
				" FROM profile_details pd "+
				" LEFT OUTER JOIN user u ON pd.user_id = u.user_id "+
				" WHERE pd.user_id = ? ";

		updata = this.getSession().createSQLQuery(query)
		    .setParameter(0, userId)
		    .setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		   System.out.println("********** data "+updata);
		   return updata;
		}
	
	public List<?> getPhysicalDetailsById(long userId) {
		List<?> uphdata = null;
		String query=" SELECT pd.physical_details_id,pd.complexion,pd.skin_quality,pd.eye_color, " +
				     " pd.height_unit,pd.weight_unit,pd.physique, " +
				     " pd.facial_hair,pd.hair_style,pd.hair_color,pd.hair_length " +
				     " FROM physical_details pd WHERE pd.user_id = ?";

		uphdata = this.getSession().createSQLQuery(query)
		    .setParameter(0, userId)
		    .setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		   //System.out.println("********** uphdata "+uphdata);
		   return uphdata;
		}

	public List<?> getAddressDetailsById(long userId) {
		List<?> addata = null;
		String query=" SELECT a.address_id,a.pr_address,a.pr_country,a.pr_state,a.pr_district,a.pr_zip_postal, " +
					 " a.pm_address,a.pm_country,a.pm_state,a.pm_district,a.pm_zip_postal " +
				     " FROM address a WHERE a.user_id = ?";

		addata = this.getSession().createSQLQuery(query)
		    .setParameter(0, userId)
		    .setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		  // System.out.println("********** uphdata "+addata);
		   return addata;
		}

	public List<?> getExpDetailsById(long userId) {
		List<?> pfdata = null;
		String query=" SELECT pd.professional_details_id,pd.previous_work_indusry,pd.name_worked_with_director, " +
				     " pd.name_worked_film,pd.name_worked_production_house, " +
				     " pd.film_industry_intrested,pd.reason " +
				     " FROM professional_details pd WHERE pd.user_id = ?";

		pfdata = this.getSession().createSQLQuery(query)
		    .setParameter(0, userId)
		    .setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		   //System.out.println("********** uphdata "+pfdata);
		   return pfdata;
		}
	
	public List<?> getAgnProfileDetailsById(long userId) {
		List<?> agndata = null;
		String query=" SELECT u.email_id,u.first_name,u.contact_no,pda.Profile_details_agency_id,pda.name_of_agency,pda.office_contact_no, " +
				     " pda.website,pda.service,pda.aboutme " +
				     " FROM profile_details_agency pda "+
				     " LEFT OUTER JOIN user u ON pda.user_id = u.user_id "+
				     " WHERE pda.user_id = ?";

		agndata = this.getSession().createSQLQuery(query)
		    .setParameter(0, userId)
		    .setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		   //System.out.println("********** uphdata "+agndata);
		   return agndata;
		}
	
	public List<?> getUserVideoById(long userId) {
		List<?> vidodata = null;
		String quert = " SELECT iv.image_video_id,iv.user_id, "+
				       " iv.video_url_one,iv.video_url_two, "+
				       " iv.video_url_three "+
				       " FROM image_video iv WHERE iv.user_id=?";
		vidodata = this.getSession().createSQLQuery(quert)
			    .setParameter(0, userId)
			    .setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		return vidodata;
	}

	@Override
	public void saveUploadImage(ProfileImages2 file) {
		getSession().merge(file);
	}

	@Override
	public ProfileImages uploadMultipleFile(ProfileImages profileImages) {
		getSession().merge(profileImages);
		return profileImages;
	}

	@Override
	public List<?> getProfileImageByUserId(long userId) {
		List<?> vidodata = null;
		String quert = " SELECT PI.profile_image_id,PI.user_id,PI.image_name "+
				       " FROM profile_image PI WHERE PI.user_id=? ORDER BY PI.profile_image_id DESC LIMIT 5 ";
		vidodata = this.getSession().createSQLQuery(quert)
			    .setParameter(0, userId)
			    .setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		return vidodata;
	}

	@Override
	public Long deleteProfileImageByUserId(long profileImageId) {
		return (long) this.getSession()
				.createSQLQuery("DELETE FROM profile_image WHERE profile_image_id=?")
				.setParameter(0,profileImageId).executeUpdate();
	}
	
	@Override
	public String changeUserPassword(String userName, String password, String newPassword) {
		//System.out.println("userName:"+userName);
		//System.out.println("password:"+password);
		//System.out.println("newPassword:"+newPassword);
		
		String res = "No";
		Query query = this.getSession()
				.createSQLQuery(
						"update user set password=?,is_rest_password=0  where user.username=? AND user.password=?")
				
				.setParameter(0, newPassword)
				.setParameter(1, userName)
				.setParameter(2, password);
		int r = query.executeUpdate();
		if (r > 0) {
			res = "Successfully";
		} else {
			res = "InvalidOldPwd";
		}
		return res;
	}

	@Override
	public String uploadUserPicFile(Long userId, String userPic) {
		String res = "No";
		Query query = this.getSession()
				.createSQLQuery(
						"update user set user_pic=? where user.user_id=? ")
				.setParameter(0, userPic)
				.setParameter(1, userId);
		int r = query.executeUpdate();
		if (r > 0) {
			res = "Successfully";
		} else {
			res = "InvalidOldPwd";
		}
		return res;
	}

	@Override
	public List<?> getUserPicFileByUserId(Long userId) {
		List<?> upic = null;
		String quert = " SELECT u.user_pic FROM user u WHERE u.user_id=? ";
		upic = this.getSession().createSQLQuery(quert)
			    .setParameter(0, userId)
			    .setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		return upic;
	}
	
}
	


