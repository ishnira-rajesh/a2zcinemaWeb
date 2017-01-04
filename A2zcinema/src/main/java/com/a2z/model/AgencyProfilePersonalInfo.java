package com.a2z.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "profile_details_agency")
public class AgencyProfilePersonalInfo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "profile_details_agency_id", unique = true, nullable = false)
	private Long profileDetailsAgencyId;
	
	@Column(name = "name_of_agency")
	private String nameOfAgency;
	
	@Column(name = "office_contact_no")
	private String officeContNo;
	
	@Column(name = "website")
	private String website;

	@Column(name = "service")
	private String service;
	
	@Column(name = "aboutme")
	private String aboutme;
	
	@OneToOne
	@JoinColumn(name = "user_id")
	private User user;

	
	public Long getProfileDetailsAgencyId() {
		return profileDetailsAgencyId;
	}

	public void setProfileDetailsAgencyId(Long profileDetailsAgencyId) {
		this.profileDetailsAgencyId = profileDetailsAgencyId;
	}

	public String getNameOfAgency() {
		return nameOfAgency;
	}

	public void setNameOfAgency(String nameOfAgency) {
		this.nameOfAgency = nameOfAgency;
	}

	public String getOfficeContNo() {
		return officeContNo;
	}

	public void setOfficeContNo(String officeContNo) {
		this.officeContNo = officeContNo;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}
	

	public String getAboutme() {
		return aboutme;
	}

	public void setAboutme(String aboutme) {
		this.aboutme = aboutme;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
