package com.a2z.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.transform.Transformers;
import org.springframework.stereotype.Repository;

import com.a2z.model.CrowdFunding;
import com.a2z.model.Email;
import com.a2z.model.MovieDistribution;
import com.a2z.model.User;
@Repository("usersDao")
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {
	
	public User findUserByUserName(String userName) {
		
		Query query = this.getSession().createQuery(" from User u where u.userName=:username");
		query.setParameter("username", userName);
		User user = (User) query.uniqueResult();
		
		return user;
	}
	
	public Long findUserIdByUserName(String userName) {
		return (Long) this.getSession()
				.createQuery("SELECT u.user_id FROM user u WHERE u.username=?")
				.setParameter(0,userName).uniqueResult();
	}
	
	public void saveUser(User users) {
		getSession().saveOrUpdate(users);
	}
	
	

	public List<?> findAllUsers() {
		List<?> userdata = null;
		
		String query = " SELECT u.user_id,u.profession,u.actorType,u.backSupportTeam,u.user_pic,u.regAgency,u.first_name,u.last_name, "+ 
				" pd.language,pd.aboutme,pd1.previous_work_indusry,pd.age,pd1.film_industry_intrested, "+
				" a.pr_district,a.pr_state,pda.aboutme AS aboutAgn "+
				" FROM user u "+
				" LEFT OUTER JOIN profile_details pd ON u.user_id = pd.user_id "+
				" LEFT OUTER JOIN professional_details pd1 ON u.user_id = pd1.user_id "+
				" LEFT OUTER JOIN profile_details_agency pda ON u.user_id = pda.user_id"+
				" LEFT OUTER JOIN address a ON u.user_id = a.user_id ";
		
		userdata = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return userdata;
	}

	
	public List<?> getUserDetailsProfile(long userId) {
		List<?> userDetailsdata = null;
		String query=" SELECT "+ 
				" iv.video_url_one,iv.video_url_two,iv.video_url_three,"+
				" u.profession,u.first_name,u.last_name,pd.gender,u.email_id,"+
				" pd.language,u.contact_no,pd.father_name,pd.profile_type,pda.profile_type_reg,pd.age,"+
				" phd.complexion,phd.skin_quality,phd.height_unit,"+
				" phd.weight_unit,phd.physique,phd.facial_hair,phd.hair_style,"+
				" phd.hair_color,phd.eye_color,phd.hair_length,"+
				" prd.previous_work_indusry,prd.name_worked_with_director,"+
				" prd.name_worked_film,prd.name_worked_production_house,prd.film_industry_intrested,prd.reason,"+
				" a.pr_country,a.pr_district "+
				" FROM user u "+
				" LEFT OUTER JOIN profile_details pd ON u.user_id = pd.user_id"+
				" LEFT OUTER JOIN profile_details_agency pda ON u.user_id = pda.user_id"+
				" LEFT OUTER JOIN physical_details phd ON u.user_id = phd.user_id"+
				" LEFT OUTER JOIN professional_details prd ON u.user_id = prd.user_id"+
				" LEFT OUTER JOIN address a ON u.user_id = a.user_id "+
				" LEFT OUTER JOIN image_video iv ON iv.user_id = a.user_id "+
				" WHERE u.user_id = ?";
		
		userDetailsdata = this.getSession().createSQLQuery(query)
				.setParameter(0, userId)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		//System.out.println("********** data "+userDetailsdata);
		return userDetailsdata;
	}
	
	public User findUserByUserId(long userId) {
		return (User) getSession().get(User.class, userId);
	}

	@Override
	public Email saveSendEmail(Email email) {
		getSession().merge(email);
		return email;
	}
	/*@Override
	public void updateUserByuserId(long userId, String email, String mobile) {
		this.getSession()
				.createSQLQuery("UPDATE user set email_id=?,contact_no=? WHERE user_id=?")
				.setParameter(0, email)
				.setParameter(1, mobile)
				.setParameter(2, userId).executeUpdate();
	}*/
	
	

	public List<?> getcrowfunding() {
		List<?> userdatacrow=null;
		String query = " SELECT * FROM crowd_funding cf ";
		
		userdatacrow = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return userdatacrow;
	}

	@Override
	public List<?> getmovieDistribution() {
		List<?> moviedistribution=null;
		String query = " SELECT * FROM movie_distribution md  ";
		
		moviedistribution = this.getSession().createSQLQuery(query)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
	    return moviedistribution;
	}

	@Override
	public List<?> getmovieDistributionDetail(long mvId) {
		List<?> moviedistributiondata = null;
		
		String query=" SELECT cf.crowd_funding_id,cf.movie_name,cf.director_name, "+
				     " cf.pro_house_name,cf.producer_name "+
				     " FROM crowd_funding cf WHERE cf.crowd_funding_id=? ";
		
		moviedistributiondata = this.getSession().createSQLQuery(query)
				.setParameter(0, mvId)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		return moviedistributiondata;
	}

	@Override
	public CrowdFunding getCrowdFundingById(long getmDataId) {
		
		Query query = this.getSession().createQuery(" from CrowdFunding u where u.crowdFundingId=:getmDataId");
		query.setParameter("getmDataId", getmDataId);
		CrowdFunding crowd = (CrowdFunding) query.uniqueResult();
		
		return crowd;
	}

	@Override
	public List<?> getMovieRentDetailById(long getmDataId) {
         List<?> moviedistributiondata = null;
		
		String query=" SELECT md.movie_distribution_id,md.multiplex_name,md.theater_owner_name,md.theater_city,md.theater_rent FROM movie_distribution md WHERE md.movie_distribution_id=? ";
		
		moviedistributiondata = this.getSession().createSQLQuery(query)
				.setParameter(0, getmDataId)
				.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		return moviedistributiondata;
	}

	@Override
	public MovieDistribution getMovieRentDetailUniById(long getmDataId) {

		Query query = this.getSession().createQuery(" from MovieDistribution u where u.movieDistributionId=:getmDataId");
		query.setParameter("getmDataId", getmDataId);
		MovieDistribution crowd = (MovieDistribution) query.uniqueResult();
		
		return crowd;
	}
	
	@Override
	public User findUserByEmail(String email) {
		Query query = this.getSession().createQuery(" from User u where u.email=:email");
		query.setParameter("email", email);
		User user = (User) query.uniqueResult();
		return user;
	}

	@Override
	public String changeForgotPassword(String email, String old_password, String newEncodedPassword) {
		String res = null;
		Query query = this.getSession()
				.createSQLQuery(
						"update user set password=?,is_rest_password=1  where user.email_id=? AND user.password=?")
				.setParameter(0, newEncodedPassword)
				.setParameter(1, email)
				.setParameter(2, old_password);
		int r = query.executeUpdate();
		if (r > 0) {
			res = "Password Changed.";
		}
		return res;
	}
	
}
