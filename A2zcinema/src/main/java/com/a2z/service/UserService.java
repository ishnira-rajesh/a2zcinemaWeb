package com.a2z.service;

import java.util.List;

import com.a2z.model.CrowdFunding;
import com.a2z.model.Email;
import com.a2z.model.MovieDistribution;
import com.a2z.model.User;
import com.a2z.to.EmailTo;
import com.a2z.to.UserTo;

public interface UserService {
	public User findUserByUserName(String userName);
	public Long findUserIdByUserName(String userName);
	public  UserTo saveUser(UserTo userTo);
	UserTo validateUser(String userName, String password);
	User autologin(String userName, String password);
	
	
	///=========------------- for audition and oneuser details
	public List<?> findAllUsers(); 
	public List<?> getUserDetailsProfile(Long userId);
	public Email saveSendEmail(EmailTo emailTo);
	
	 public List<?> listcrowfunding();
	 public List<?> listmoviedistribution();
	 public List<?> getmoviedistrbutiondetails(Long mvId);
	public CrowdFunding getCrowdFundingById(long getmDataId);
	public List<?> getMovieRentDetailById(long getmDataId);
	public MovieDistribution getMovieRentDetailUniById(long getmDataId);
	
	public UserTo getUserByEmail(String email);
	public String changeForgotPassword(String email, String old_password, String newEncodedPassword);

}
