package com.cg.model;


import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class Source {
	/*@NotEmpty(message="Enter driver name")
	@Pattern(regexp="[a-z]{3}+.[a-z]{1}[0-9]{1}+.[A-z]{1}[a-z]{5}",message="please type valid format")*/
	private String driverName;
	/*@NotEmpty(message="Enter Connection String")
	@Pattern(regexp="[a-z]{4}+:[a-z]{1}[0-9]{1}+:[a-z]{3}+://[a-z]{9}+/~/[a-z]{4}",message="please type valid format")*/
	private String connectionString;
	/*@Pattern(regexp="[a-z]{2}",message="only 2 characters are allowed")
	@NotEmpty(message="Enter user name")*/
	private String userName;
	 /*@Size(min = 0, max = 0,message="")*/
	private String password;
	public String getDriverName() {
		return driverName;
	}
	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}
	public String getConnectionString() {
		return connectionString;
	}
	public void setConnectionString(String connectionString) {
		this.connectionString = connectionString;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	}


