package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "latest_movie_news")
public class LatestMovieNews implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "latest_movie_id", unique = true, nullable = false)
	private Long latestMovieId;
	
	@Column(name = "movie_heading")
	private String movieHeading;
	
	@Column(name = "movie_url")
	private String movieUrl;

	public Long getLatestMovieId() {
		return latestMovieId;
	}

	public void setLatestMovieId(Long latestMovieId) {
		this.latestMovieId = latestMovieId;
	}

	public String getMovieHeading() {
		return movieHeading;
	}

	public void setMovieHeading(String movieHeading) {
		this.movieHeading = movieHeading;
	}

	public String getMovieUrl() {
		return movieUrl;
	}

	public void setMovieUrl(String movieUrl) {
		this.movieUrl = movieUrl;
	}
	
	
}
