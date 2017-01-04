package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "padmember_image")
public class PadMemberImages implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "padmember_image_id", unique = true, nullable = false)
	private long padmemberImageId;
	
	@Column(name = "padmember_name")
	private String padmemberName;
	
	@Column(name = "padmember_image_name")
	private String padmemberImageName;

	public long getPadmemberImageId() {
		return padmemberImageId;
	}

	public void setPadmemberImageId(long padmemberImageId) {
		this.padmemberImageId = padmemberImageId;
	}

	public String getPadmemberName() {
		return padmemberName;
	}

	public void setPadmemberName(String padmemberName) {
		this.padmemberName = padmemberName;
	}

	public String getPadmemberImageName() {
		return padmemberImageName;
	}

	public void setPadmemberImageName(String padmemberImageName) {
		this.padmemberImageName = padmemberImageName;
	}
	
    
}