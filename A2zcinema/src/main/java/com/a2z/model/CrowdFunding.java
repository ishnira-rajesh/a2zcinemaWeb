package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "crowd_funding")
public class CrowdFunding implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "crowd_funding_id", unique = true, nullable = false)
	private Long crowdFundingId;
	
	@Column(name = "movie_name")
	private String movieName;
	
	@Column(name = "director_name")
	private String directorName;
	
	@Column(name = "pro_house_name")
	private String proHouseName;
	
	@Column(name = "producer_name")
	private String producerName;
	
	@Column(name = "star_cast")
	private String starCast;
	
	@Column(name = "contact_person_name")
	private String contactPersonName;
	
	@Column(name = "contact_no")
	private String contactNo;
	
	@Column(name = "enquiry_email")
	private String enquiryEmail;
	
	@Column(name = "total_budget")
	private String totalBudget;
	
	@Column(name = "appeale_amount")
	private String appealeAmount;
	
	@Column(name = "remaining_amount")
	private String remainingAmount;

	
	
	public Long getCrowdFundingId() {
		return crowdFundingId;
	}

	public void setCrowdFundingId(Long crowdFundingId) {
		this.crowdFundingId = crowdFundingId;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getDirectorName() {
		return directorName;
	}

	public void setDirectorName(String directorName) {
		this.directorName = directorName;
	}

	public String getProHouseName() {
		return proHouseName;
	}

	public void setProHouseName(String proHouseName) {
		this.proHouseName = proHouseName;
	}

	public String getProducerName() {
		return producerName;
	}

	public void setProducerName(String producerName) {
		this.producerName = producerName;
	}

	public String getStarCast() {
		return starCast;
	}

	public void setStarCast(String starCast) {
		this.starCast = starCast;
	}

	public String getContactPersonName() {
		return contactPersonName;
	}

	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEnquiryEmail() {
		return enquiryEmail;
	}

	public void setEnquiryEmail(String enquiryEmail) {
		this.enquiryEmail = enquiryEmail;
	}

	public String getTotalBudget() {
		return totalBudget;
	}

	public void setTotalBudget(String totalBudget) {
		this.totalBudget = totalBudget;
	}

	public String getAppealeAmount() {
		return appealeAmount;
	}

	public void setAppealeAmount(String appealeAmount) {
		this.appealeAmount = appealeAmount;
	}

	public String getRemainingAmount() {
		return remainingAmount;
	}

	public void setRemainingAmount(String remainingAmount) {
		this.remainingAmount = remainingAmount;
	}
	
	

}
