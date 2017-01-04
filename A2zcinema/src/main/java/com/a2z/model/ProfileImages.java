package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "profile_image")
public class ProfileImages implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "profile_image_id", unique = true, nullable = false)
	private long profileImageId;
	
	@Column(name = "image_name")
	private String imageName;
	
	@OneToOne
	@JoinColumn(name = "user_id")
	private User user;

	public long getProfileImageId() {
		return profileImageId;
	}

	public void setProfileImageId(long profileImageId) {
		this.profileImageId = profileImageId;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	

}