package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "gif_image")
public class GifPhoto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "gif_image_id", unique = true, nullable = false)
	private long gifImageId;
	
	@Column(name = "gif_name")
	private String gifName;
	
	@Column(name = "gif_image_name")
	private String gifImageName;
	

	@Column(name = "gif_image_url")
	private String gifImageUrl;

	public long getGifImageId() {
		return gifImageId;
	}

	public void setGifImageId(long gifImageId) {
		this.gifImageId = gifImageId;
	}

	public String getGifName() {
		return gifName;
	}

	public void setGifName(String gifName) {
		this.gifName = gifName;
	}

	public String getGifImageName() {
		return gifImageName;
	}

	public void setGifImageName(String gifImageName) {
		this.gifImageName = gifImageName;
	}

	public String getGifImageUrl() {
		return gifImageUrl;
	}

	public void setGifImageUrl(String gifImageUrl) {
		this.gifImageUrl = gifImageUrl;
	}
	
    
}