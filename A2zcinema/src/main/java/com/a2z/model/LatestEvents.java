package com.a2z.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "latest_events")
public class LatestEvents implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "latest_events_id", unique = true, nullable = false)
	private Long latestEventId;
	
	@Column(name = "events_heading")
	private String eventHeading;
	
	@Column(name = "events_url")
	private String eventUrl;

	public Long getLatestEventId() {
		return latestEventId;
	}

	public void setLatestEventId(Long latestEventId) {
		this.latestEventId = latestEventId;
	}

	public String getEventHeading() {
		return eventHeading;
	}

	public void setEventHeading(String eventHeading) {
		this.eventHeading = eventHeading;
	}

	public String getEventUrl() {
		return eventUrl;
	}

	public void setEventUrl(String eventUrl) {
		this.eventUrl = eventUrl;
	}
	
	

}
