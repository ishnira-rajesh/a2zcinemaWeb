package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "latest_audition_news")
public class LatestAuditionNews implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "latest_audition_id", unique = true, nullable = false)
	private Long latestAuditionId;
	
	@Column(name = "audition_heading")
	private String auditionHeading;
	
	@Column(name = "audition_url")
	private String auditionUrl;

	public Long getLatestAuditionId() {
		return latestAuditionId;
	}

	public void setLatestAuditionId(Long latestAuditionId) {
		this.latestAuditionId = latestAuditionId;
	}

	public String getAuditionHeading() {
		return auditionHeading;
	}

	public void setAuditionHeading(String auditionHeading) {
		this.auditionHeading = auditionHeading;
	}

	public String getAuditionUrl() {
		return auditionUrl;
	}

	public void setAuditionUrl(String auditionUrl) {
		this.auditionUrl = auditionUrl;
	}
	
	
}
