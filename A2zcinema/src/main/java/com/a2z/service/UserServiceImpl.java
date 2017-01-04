package com.a2z.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.codec.Base64;
import org.springframework.stereotype.Service;

import com.a2z.dao.UserDao;
import com.a2z.model.CrowdFunding;
import com.a2z.model.Email;
import com.a2z.model.MovieDistribution;
import com.a2z.model.User;
import com.a2z.to.EmailTo;
import com.a2z.to.UserTo;


@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userdao;
	
	//private static List<User> users;	
	public User findUserByUserName(String userName) {
		try{
			return userdao.findUserByUserName(userName);
    	}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	public Long findUserIdByUserName(String userName) {
		return userdao.findUserIdByUserName(userName);
	}
	
	public UserTo saveUser(UserTo userTo) {
        User userm = new User();
 		
		userm.setFirstName(userTo.getFirstName());
		userm.setLastName(userTo.getLastName());
		userm.setMobile(userTo.getMobile());
		userm.setProfessionCat(userTo.getProfessionCat());
		userm.setActorType(userTo.getActorType());
		userm.setBackSupportTeam(userTo.getBackSupportTeam());
		userm.setRegAgency(userTo.getRegAgency());
		userm.setUserName(userTo.getUserName());
		userm.setEmail(userTo.getEmail());
		userm.setUserRole("ROLE_USER");
		userm.setUserPic("default.png");
		userm.setIsRestPassword(false);
		byte[] bytes = userTo.getPassword().getBytes();
		byte[] encodedBytes = Base64.encode(bytes );
		userm.setPassword(new String(encodedBytes));
		userm.setSignupId(userTo.getSignupId());
		
		/*UserProfilePersonalInfo userProfile = new UserProfilePersonalInfo();
		userm.getUserProfilePersonalInfo().add(userProfile );
		userProfile.setUser(userm);*/
		
		userdao.saveUser(userm);
		
		User  user = userdao.findUserByUserName(userTo.getUserName());
		if(user != null){
			UserTo	usrTo = convertUserToUserTo(user);
			return usrTo;
		}else{
			return  new UserTo();
		}
		
		
		
	}

	public UserTo validateUser(String userName, String password) {
		User user = userdao.findUserByUserName(userName);
		String isValid;
		 UserTo userm = new UserTo();
		if(user !=null){
			String dbPassword = user.getPassword();
			byte[] bytes = dbPassword.getBytes();
			byte[] decodeBytes = Base64.decode(bytes);
			String decodedPassword = new String(decodeBytes);
			
			if(password.equalsIgnoreCase(decodedPassword))
			{
				 isValid = "true";
				 userm = convertUserToUserTo(user);
				 userm.setIsUserValid(isValid);
				 userm.setUserRole(user.getUserRole());
			}else{
				isValid = "false";
				String message = "Invailed password.";
				userm.setIsUserValid(isValid);
				userm.setErrorMessege(message);
			}
			
		}else{
			isValid = "false";
			String message = "Invailed Username.";
			userm.setIsUserValid(isValid);
			userm.setErrorMessege(message);
		}
		return userm;
	}

	private UserTo convertUserToUserTo(User user) {
		UserTo userm = new UserTo();
		
		userm.setUserId(user.getUserId());
		userm.setFirstName(user.getFirstName());
		userm.setLastName(user.getLastName());
		userm.setMobile(user.getMobile());
		userm.setProfessionCat(user.getProfessionCat());
		userm.setActorType(user.getActorType());
		userm.setBackSupportTeam(user.getBackSupportTeam());
		userm.setRegAgency(user.getRegAgency());
		userm.setUserName(user.getUserName());
		userm.setEmail(user.getEmail());
		userm.setIsRestPassword(user.getIsRestPassword());
		userm.setPassword(user.getPassword());
		userm.setUserPic(user.getUserPic());
		userm.setIsRestPassword(user.getIsRestPassword());
		return userm;
	}

	public User autologin(String username, String password) {
		User user = userdao.findUserByUserName(username);
		
		String dbPassword =user.getPassword();
		byte[] bytes = dbPassword.getBytes();
		byte[] decodeBytes = Base64.decode(bytes);
		String decodedPassword = new String(decodeBytes);
		
		/*String isValid = "false";
		if(password.equalsIgnoreCase(decodedPassword)){
			isValid = "true";
		}
		
		user.setIsValid(isValid);*/
		
		return user;
	}
	
	public List<?> findAllUsers() {
		return userdao.findAllUsers();
	}
	
	public List<?> getUserDetailsProfile(Long userId) {
		return userdao.getUserDetailsProfile(userId);
	}

	@Override
	public Email saveSendEmail(EmailTo emailTo) {
		Email email = new Email();
		email.setEmailTo("a2zcinemaworld@gmail.com");
		email.setEmailFrom(emailTo.getEmailFrom());
		email.setName(emailTo.getName());
		email.setSubject(emailTo.getSubject());
		email.setMessage(emailTo.getMessage());
		userdao.saveSendEmail(email);
		return email;
	}
	
	public List<?> listcrowfunding() {
		// TODO Auto-generated method stub
		return userdao.getcrowfunding();
	}

	@Override
	public List<?> listmoviedistribution() {
		// TODO Auto-generated method stub
		return userdao.getmovieDistribution();
	}

	@Override
	public List<?> getmoviedistrbutiondetails(Long mvId) {
		
		return userdao.getmovieDistributionDetail(mvId);
	}

	@Override
	public CrowdFunding getCrowdFundingById(long getmDataId) {
		try{
			return userdao.getCrowdFundingById(getmDataId);
    	}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<?> getMovieRentDetailById(long getmDataId) {
		
	    return userdao.getMovieRentDetailById(getmDataId);
	}

	@Override
	public MovieDistribution getMovieRentDetailUniById(long getmDataId) {
		// TODO Auto-generated method stub
		return userdao.getMovieRentDetailUniById(getmDataId);
	}
	
	@Override
	public UserTo getUserByEmail(String email) {
		User user = userdao.findUserByEmail(email);
		UserTo userTo = new UserTo();
		String isValid;
		if(user !=null){
			if(email.equalsIgnoreCase(user.getEmail())){
				 isValid = "true";
				userTo = convertUserToUserTo(user);
			}else{
				isValid = "false";
				String message = "Your email do not match . please enter registered e-mail id.";
				userTo.setErrorMessege(message);
			}
		}else{
			isValid = "false";
			String message = "Your email do not match . please enter registered e-mail id.";
			userTo.setErrorMessege(message);
		}
		return userTo;
	}

	@Override
	public String changeForgotPassword(String email, String old_password, String newEncodedPassword) {
		
		byte[] bytes = newEncodedPassword.getBytes();
		byte[] encodedBytes = Base64.encode(bytes );
		try{
			String encodedPassword = new String(encodedBytes);
			return userdao.changeForgotPassword(email, old_password, encodedPassword);
    	}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
