package com.a2z.model;

import java.io.Serializable;

public class AjaxResponse implements Serializable {
	private static final long serialVersionUID = 1L;
	
	protected Integer status; // ERROR or SUCCESS
	protected String errorCode; // Error Code - message bundle will have the
	protected String message; // Additional details if any for error or success
	protected Object data;
	protected String other;
	protected String datetime;
	public static Integer ERROR = 0;
	public static Integer SUCCESS = 1;
	public static Integer ERRORNULL = -1;

	public AjaxResponse() {

	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public static Integer getERROR() {
		return ERROR;
	}

	public static void setERROR(Integer eRROR) {
		ERROR = eRROR;
	}

	public static Integer getSUCCESS() {
		return SUCCESS;
	}

	public static void setSUCCESS(Integer sUCCESS) {
		SUCCESS = sUCCESS;
	}

	public static Integer getERRORNULL() {
		return ERRORNULL;
	}

	public static void setERRORNULL(Integer eRRORNULL) {
		ERRORNULL = eRRORNULL;
	}
	
	

}
