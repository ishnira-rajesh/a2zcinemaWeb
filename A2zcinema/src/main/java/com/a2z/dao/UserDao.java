package com.a2z.dao;

import java.util.List;

import com.a2z.model.CrowdFunding;
import com.a2z.model.Email;
import com.a2z.model.MovieDistribution;
import com.a2z.model.User;

public interface UserDao {
	User findUserByUserName(String userName);
	public Long findUserIdByUserName(String userName);
	public void saveUser(User users);
    public List<?> findAllUsers(); //for audition and single user details
	public List<?> getUserDetailsProfile(long userId);
	User findUserByUserId(long userId);
	//public void updateUserByuserId(long userId, String email, String mobile);
	public Email saveSendEmail(Email email);
	
	  public List<?> getcrowfunding();
	    
	    public List<?> getmovieDistribution();
	    public List<?> getmovieDistributionDetail(long mvId);
	    public CrowdFunding getCrowdFundingById(long getmDataId);
	    public List<?> getMovieRentDetailById(long getmDataId);
	    public MovieDistribution getMovieRentDetailUniById(long getmDataId);
	    
	    public User findUserByEmail(String email);
		public String changeForgotPassword(String email, String old_password, String newEncodedPassword);
}
