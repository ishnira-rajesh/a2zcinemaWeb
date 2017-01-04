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
@Table(name = "professional_details")
public class ProfessinalWorkExp implements Serializable  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "professional_details_id", unique = true, nullable = false)
	private Long professionalDetailsId;
	
	@Column(name = "previous_work_indusry")
	private String preWorkInd;
	
	@Column(name = "name_worked_with_director")
	private String nameWorkWithDir;
	
	@Column(name = "name_worked_film")
	private String nameWorkFilm;
	
	@Column(name = "name_worked_production_house")
	private String nameWorkProHouse;
	
	@Column(name = "film_industry_intrested")
	private String fileIndIntreste;
	
	@Column(name = "reason")
	private String reason;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id")
	private User user;
	
	public Long getProfessionalDetailsId() {
		return professionalDetailsId;
	}

	public void setProfessionalDetailsId(Long professionalDetailsId) {
		this.professionalDetailsId = professionalDetailsId;
	}

	public String getPreWorkInd() {
		return preWorkInd;
	}

	public void setPreWorkInd(String preWorkInd) {
		this.preWorkInd = preWorkInd;
	}

	public String getNameWorkWithDir() {
		return nameWorkWithDir;
	}

	public void setNameWorkWithDir(String nameWorkWithDir) {
		this.nameWorkWithDir = nameWorkWithDir;
	}

	public String getNameWorkFilm() {
		return nameWorkFilm;
	}

	public void setNameWorkFilm(String nameWorkFilm) {
		this.nameWorkFilm = nameWorkFilm;
	}

	public String getNameWorkProHouse() {
		return nameWorkProHouse;
	}

	public void setNameWorkProHouse(String nameWorkProHouse) {
		this.nameWorkProHouse = nameWorkProHouse;
	}

	public String getFileIndIntreste() {
		return fileIndIntreste;
	}

	public void setFileIndIntreste(String fileIndIntreste) {
		this.fileIndIntreste = fileIndIntreste;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	
}
