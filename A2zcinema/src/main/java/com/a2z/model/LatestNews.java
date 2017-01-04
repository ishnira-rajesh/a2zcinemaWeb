package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "latest_news")
public class LatestNews implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "latest_nesws_id", unique = true, nullable = false)
	private Long latestNeswsId;
	
	@Column(name = "news_heading")
	private String newsHeading;
	
	@Column(name = "news_url")
	private String newsUrl;

	public Long getLatestNeswsId() {
		return latestNeswsId;
	}

	public void setLatestNeswsId(Long latestNeswsId) {
		this.latestNeswsId = latestNeswsId;
	}

	public String getNewsHeading() {
		return newsHeading;
	}

	public void setNewsHeading(String newsHeading) {
		this.newsHeading = newsHeading;
	}

	public String getNewsUrl() {
		return newsUrl;
	}

	public void setNewsUrl(String newsUrl) {
		this.newsUrl = newsUrl;
	}
	
	

}
