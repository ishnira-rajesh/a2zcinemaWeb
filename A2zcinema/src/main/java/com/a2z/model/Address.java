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
@Table(name = "address")
public class Address implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "address_id", unique = true, nullable = false)
	private Long addressId;
	
	@Column(name = "pr_address")
	private String prAddress;
	
	@Column(name = "pr_country")
	private String prCountry;
	
	@Column(name = "pr_state")
	private String prState;
	
	@Column(name = "pr_district")
	private String prDistrict;
	
	@Column(name = "pr_zip_postal")
	private String prZipPostal;
	
	@Column(name = "pm_address")
	private String pmAddress;
	
	@Column(name = "pm_country")
	private String pmCountry;
	
	@Column(name = "pm_state")
	private String pmState;
	
	@Column(name = "pm_district")
	private String pmDistrict;
	
	@Column(name = "pm_zip_postal")
	private String pmZipPostal;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id")
	private User user;

	public Long getAddressId() {
		return addressId;
	}

	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	public String getPrAddress() {
		return prAddress;
	}

	public void setPrAddress(String prAddress) {
		this.prAddress = prAddress;
	}

	public String getPrCountry() {
		return prCountry;
	}

	public void setPrCountry(String prCountry) {
		this.prCountry = prCountry;
	}

	public String getPrState() {
		return prState;
	}

	public void setPrState(String prState) {
		this.prState = prState;
	}

	public String getPrDistrict() {
		return prDistrict;
	}

	public void setPrDistrict(String prDistrict) {
		this.prDistrict = prDistrict;
	}

	public String getPrZipPostal() {
		return prZipPostal;
	}

	public void setPrZipPostal(String prZipPostal) {
		this.prZipPostal = prZipPostal;
	}

	public String getPmAddress() {
		return pmAddress;
	}

	public void setPmAddress(String pmAddress) {
		this.pmAddress = pmAddress;
	}

	public String getPmCountry() {
		return pmCountry;
	}

	public void setPmCountry(String pmCountry) {
		this.pmCountry = pmCountry;
	}

	public String getPmState() {
		return pmState;
	}

	public void setPmState(String pmState) {
		this.pmState = pmState;
	}

	public String getPmDistrict() {
		return pmDistrict;
	}

	public void setPmDistrict(String pmDistrict) {
		this.pmDistrict = pmDistrict;
	}

	public String getPmZipPostal() {
		return pmZipPostal;
	}

	public void setPmZipPostal(String pmZipPostal) {
		this.pmZipPostal = pmZipPostal;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	
}
