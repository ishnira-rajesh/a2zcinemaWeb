package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "movie_trailer_image")
public class MovieTrailer implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "movie_trailer_image_id", unique = true, nullable = false)
	private long movieTrailerImageId;
	
	@Column(name = "movie_trailer_name")
	private String movieTrailerName;
	
	@Column(name = "movie_trailer_image_name")
	private String movieTrailerImageName;
	
	@Column(name = "movie_trailer_url")
	private String movieTrailerUrl;

	public long getMovieTrailerImageId() {
		return movieTrailerImageId;
	}

	public void setMovieTrailerImageId(long movieTrailerImageId) {
		this.movieTrailerImageId = movieTrailerImageId;
	}

	public String getMovieTrailerName() {
		return movieTrailerName;
	}

	public void setMovieTrailerName(String movieTrailerName) {
		this.movieTrailerName = movieTrailerName;
	}

	public String getMovieTrailerImageName() {
		return movieTrailerImageName;
	}

	public void setMovieTrailerImageName(String movieTrailerImageName) {
		this.movieTrailerImageName = movieTrailerImageName;
	}

	public String getMovieTrailerUrl() {
		return movieTrailerUrl;
	}

	public void setMovieTrailerUrl(String movieTrailerUrl) {
		this.movieTrailerUrl = movieTrailerUrl;
	}

    	

}