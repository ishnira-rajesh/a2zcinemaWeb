package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "movie_distribution")
public class MovieDistribution implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "movie_distribution_id", unique = true, nullable = false)
	private Long movieDistributionId;
	
	@Column(name = "multiplex_name")
	private String multiplexName;
	
	@Column(name = "theater_owner_name")
	private String theaterOwnerName;
	
	@Column(name = "theater_address")
	private String theaterAddress;
	
	@Column(name = "theater_city")
	private String theaterCity;
	
	@Column(name = "theater_state")
	private String theaterState;
	
	@Column(name = "contact_person_name")
	private String contactPersonName;
	
	@Column(name = "contact_no")
	private String contactNo;
	
	@Column(name = "enquiry_email")
	private String enquiryEmail;
	
	@Column(name = "theater_rent")
	private String theaterRent;

	public Long getMovieDistributionId() {
		return movieDistributionId;
	}

	public void setMovieDistributionId(Long movieDistributionId) {
		this.movieDistributionId = movieDistributionId;
	}

	public String getMultiplexName() {
		return multiplexName;
	}

	public void setMultiplexName(String multiplexName) {
		this.multiplexName = multiplexName;
	}

	public String getTheaterOwnerName() {
		return theaterOwnerName;
	}

	public void setTheaterOwnerName(String theaterOwnerName) {
		this.theaterOwnerName = theaterOwnerName;
	}

	public String getTheaterAddress() {
		return theaterAddress;
	}

	public void setTheaterAddress(String theaterAddress) {
		this.theaterAddress = theaterAddress;
	}

	public String getTheaterCity() {
		return theaterCity;
	}

	public void setTheaterCity(String theaterCity) {
		this.theaterCity = theaterCity;
	}

	public String getTheaterState() {
		return theaterState;
	}

	public void setTheaterState(String theaterState) {
		this.theaterState = theaterState;
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

	public String getTheaterRent() {
		return theaterRent;
	}

	public void setTheaterRent(String theaterRent) {
		this.theaterRent = theaterRent;
	}
	
	
	

}
