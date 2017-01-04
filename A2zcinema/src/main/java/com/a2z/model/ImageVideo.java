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
@Table(name = "image_video")
public class ImageVideo implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "image_video_id", unique = true, nullable = false)
	private Long imageVideoId;
	
	@Column(name = "video_url_one")
	private String videoUrlOne;
	
	@Column(name = "video_url_two")
	private String videoUrlTwo;
	
	@Column(name = "video_url_three")
	private String videoUrlThree;

	@OneToOne
	@JoinColumn(name = "user_id")
	private User user;

	public Long getImageVideoId() {
		return imageVideoId;
	}

	public void setImageVideoId(Long imageVideoId) {
		this.imageVideoId = imageVideoId;
	}

	public String getVideoUrlOne() {
		return videoUrlOne;
	}

	public void setVideoUrlOne(String videoUrlOne) {
		this.videoUrlOne = videoUrlOne;
	}

	public String getVideoUrlTwo() {
		return videoUrlTwo;
	}

	public void setVideoUrlTwo(String videoUrlTwo) {
		this.videoUrlTwo = videoUrlTwo;
	}

	public String getVideoUrlThree() {
		return videoUrlThree;
	}

	public void setVideoUrlThree(String videoUrlThree) {
		this.videoUrlThree = videoUrlThree;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
