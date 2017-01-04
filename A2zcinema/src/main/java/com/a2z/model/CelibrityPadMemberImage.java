package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "celibrity_padmember_image")
public class CelibrityPadMemberImage implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "celibrity_pad_image_id", unique = true, nullable = false)
	private long celibrityPadImageId;
	
	@Column(name = "celibrity_pad_name")
	private String celibrityPadName;
	
	@Column(name = "celibrity_pad_image_name")
	private String celibrityPadImageName;
	

	public long getCelibrityPadImageId() {
		return celibrityPadImageId;
	}

	public void setCelibrityPadImageId(long celibrityPadImageId) {
		this.celibrityPadImageId = celibrityPadImageId;
	}

	public String getCelibrityPadName() {
		return celibrityPadName;
	}

	public void setCelibrityPadName(String celibrityPadName) {
		this.celibrityPadName = celibrityPadName;
	}

	public String getCelibrityPadImageName() {
		return celibrityPadImageName;
	}

	public void setCelibrityPadImageName(String celibrityPadImageName) {
		this.celibrityPadImageName = celibrityPadImageName;
	}
	
	
	

}