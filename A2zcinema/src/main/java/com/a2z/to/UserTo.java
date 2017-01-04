package com.a2z.to;

import javax.persistence.Transient;

public class UserTo {
	  
	private Long userId;
	private String firstName;
	private String lastName;
	private String mobile;
	private String professionCat;
	private String actorType;
	private String backSupportTeam;
	private String regAgency;
	private String userName;
	private String email;
	private String password;
	private String rePassword;
	private int signupId;
	private String isUserValid;
	private String errorMessege;
	private String userRole;
	private Boolean isRestPassword;
	private String newPassword;
	private String confirmNewPassword;
	private String userPic;
	//private String uMessege;
	//private String pMessege;
	
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getProfessionCat() {
		return professionCat;
	}

	public void setProfessionCat(String professionCat) {
		this.professionCat = professionCat;
	}

	public String getActorType() {
		return actorType;
	}

	public void setActorType(String actorType) {
		this.actorType = actorType;
	}

	public String getBackSupportTeam() {
		return backSupportTeam;
	}

	public void setBackSupportTeam(String backSupportTeam) {
		this.backSupportTeam = backSupportTeam;
	}

	public String getRegAgency() {
		return regAgency;
	}

	public void setRegAgency(String regAgency) {
		this.regAgency = regAgency;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	public int getSignupId() {
		return signupId;
	}

	public void setSignupId(int signupId) {
		this.signupId = signupId;
	}

	public String getIsUserValid() {
		return isUserValid;
	}

	public void setIsUserValid(String isUserValid) {
		this.isUserValid = isUserValid;
	}

	public String getErrorMessege() {
		return errorMessege;
	}

	public void setErrorMessege(String errorMessege) {
		this.errorMessege = errorMessege;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public Boolean getIsRestPassword() {
		return isRestPassword;
	}

	public void setIsRestPassword(Boolean isRestPassword) {
		this.isRestPassword = isRestPassword;
	}
	
	@Transient
	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
	@Transient
	public String getConfirmNewPassword() {
		return confirmNewPassword;
	}

	public void setConfirmNewPassword(String confirmNewPassword) {
		this.confirmNewPassword = confirmNewPassword;
	}

	public String getUserPic() {
		return userPic;
	}

	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}
	
	
	
}
