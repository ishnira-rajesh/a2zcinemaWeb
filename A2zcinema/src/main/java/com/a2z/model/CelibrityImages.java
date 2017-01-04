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
@Table(name = "celibrity_image")
public class CelibrityImages implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "celibrity_image_id", unique = true, nullable = false)
	private long celibrityImageId;
	
	@Column(name = "celibrity_name")
	private String celibrityName;
	
	@Column(name = "celibrity_image_name")
	private String celibrityImageName;
	
	/*@OneToOne
	@JoinColumn(name = "user_id")
	private User user;*/

	public long getCelibrityImageId() {
		return celibrityImageId;
	}

	public void setCelibrityImageId(long celibrityImageId) {
		this.celibrityImageId = celibrityImageId;
	}

	public String getCelibrityName() {
		return celibrityName;
	}

	public void setCelibrityName(String celibrityName) {
		this.celibrityName = celibrityName;
	}

	public String getCelibrityImageName() {
		return celibrityImageName;
	}

	public void setCelibrityImageName(String celibrityImageName) {
		this.celibrityImageName = celibrityImageName;
	}

}