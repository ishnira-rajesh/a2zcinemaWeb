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
@Table(name = "physical_details")
public class PhysicalDetails implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long physicalDetailId;
	private String complexion;
	private String skinQuality;
	private String eyeColor;
	private String heightUnit;
	private String weightUnit;
	private String physique;
	private String facialHair;
	private String hairStyle;
	private String hairColor;
	private String hairLength;
	private User user;
	
	public PhysicalDetails() {
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "physical_details_id", unique = true, nullable = false)
	public Long getPhysicalDetailId() {
		return physicalDetailId;
	}

	public void setPhysicalDetailId(Long physicalDetailId) {
		this.physicalDetailId = physicalDetailId;
	}
	@Column(name = "complexion")
	public String getComplexion() {
		return complexion;
	}

	public void setComplexion(String complexion) {
		this.complexion = complexion;
	}
	@Column(name = "skin_quality")
	public String getSkinQuality() {
		return skinQuality;
	}

	public void setSkinQuality(String skinQuality) {
		this.skinQuality = skinQuality;
	}
	@Column(name = "eye_color")
	public String getEyeColor() {
		return eyeColor;
	}

	public void setEyeColor(String eyeColor) {
		this.eyeColor = eyeColor;
	}
	@Column(name = "height_unit")
	public String getHeightUnit() {
		return heightUnit;
	}

	public void setHeightUnit(String heightUnit) {
		this.heightUnit = heightUnit;
	}
	@Column(name = "weight_unit")
	public String getWeightUnit() {
		return weightUnit;
	}

	public void setWeightUnit(String weightUnit) {
		this.weightUnit = weightUnit;
	}
	@Column(name = "physique")
	public String getPhysique() {
		return physique;
	}

	public void setPhysique(String physique) {
		this.physique = physique;
	}
	@Column(name = "facial_hair")
	public String getFacialHair() {
		return facialHair;
	}

	public void setFacialHair(String facialHair) {
		this.facialHair = facialHair;
	}
	@Column(name = "hair_style")
	public String getHairStyle() {
		return hairStyle;
	}

	public void setHairStyle(String hairStyle) {
		this.hairStyle = hairStyle;
	}
	@Column(name = "hair_color")
	public String getHairColor() {
		return hairColor;
	}
	
	public void setHairColor(String hairColor) {
		this.hairColor = hairColor;
	}
	@Column(name = "hair_length")
	public String getHairLength() {
		return hairLength;
	}

	public void setHairLength(String hairLength) {
		this.hairLength = hairLength;
	}

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
