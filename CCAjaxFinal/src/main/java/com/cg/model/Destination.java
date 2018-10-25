package com.cg.model;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Destination {
	@NotEmpty(message="Enter driver name")
	@Pattern(regexp="[a-z]{3}+.[a-z]{1}[0-9]{1}+.[A-z]{1}[a-z]{5}",message="please type valid format")
	private String DdriverName;
	@NotEmpty(message="Enter Connection String")
	@Pattern(regexp="[a-z]{4}+:[a-z]{1}[0-9]{1}+:[a-z]{3}+://[a-z]{9}+/~/[a-z]{4}",message="please type valid format")
	private String DconnectionString;
	@Pattern(regexp="[a-z]{2}",message="only 2 characters are allowed")
	@NotEmpty(message="Enter user name")
	private String DuserName;
	 @Size(min = 0, max = 0,message="please make password as empty")
	private String Dpassword;
	public String getDdriverName() {
		return DdriverName;
	}
	public void setDdriverName(String ddriverName) {
		DdriverName = ddriverName;
	}
	public String getDconnectionString() {
		return DconnectionString;
	}
	public void setDconnectionString(String dconnectionString) {
		DconnectionString = dconnectionString;
	}
	public String getDuserName() {
		return DuserName;
	}
	public void setDuserName(String duserName) {
		DuserName = duserName;
	}
	public String getDpassword() {
		return Dpassword;
	}
	public void setDpassword(String dpassword) {
		Dpassword = dpassword;
	}
	
}
