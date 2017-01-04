package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "poster_image")
public class LatestPosterPhoto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "poster_image_id", unique = true, nullable = false)
	private long posterImageId;
	
	@Column(name = "poster_name")
	private String posterName;
	
	@Column(name = "poster_image_name")
	private String posterImageName;

	public long getPosterImageId() {
		return posterImageId;
	}

	public void setPosterImageId(long posterImageId) {
		this.posterImageId = posterImageId;
	}

	public String getPosterName() {
		return posterName;
	}

	public void setPosterName(String posterName) {
		this.posterName = posterName;
	}

	public String getPosterImageName() {
		return posterImageName;
	}

	public void setPosterImageName(String posterImageName) {
		this.posterImageName = posterImageName;
	}
	
	
	

}