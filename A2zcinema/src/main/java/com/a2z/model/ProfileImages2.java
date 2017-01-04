package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "profile_image")
public class ProfileImages2 implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "profile_image_id", unique = true, nullable = false)
	private long profileImageId;
	
	@Column(name = "profile_image_name")
	private String profileImageName;
	
	@Column(name = "profile_image_type")
	private String profileImageType;
	
	@Column(name = "profile_image_size")
	private long profileImageSize;
	
	@Column(name = "profile_image_data")
	private byte[] profileImageData;
	
	public long getProfileImageId() {
		return profileImageId;
	}
	public void setProfileImageId(long profileImageId) {
		this.profileImageId = profileImageId;
	}
	public String getProfileImageName() {
		return profileImageName;
	}
	public void setProfileImageName(String profileImageName) {
		this.profileImageName = profileImageName;
	}
	public String getProfileImageType() {
		return profileImageType;
	}
	public void setProfileImageType(String profileImageType) {
		this.profileImageType = profileImageType;
	}
	public long getProfileImageSize() {
		return profileImageSize;
	}
	public void setProfileImageSize(long profileImageSize) {
		this.profileImageSize = profileImageSize;
	}
	public byte[] getProfileImageData() {
		return profileImageData;
	}
	public void setProfileImageData(byte[] profileImageData) {
		this.profileImageData = profileImageData;
	}
	
	

}
