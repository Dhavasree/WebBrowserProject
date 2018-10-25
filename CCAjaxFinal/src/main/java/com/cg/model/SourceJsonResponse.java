package com.cg.model;

import java.util.Map;

public class SourceJsonResponse {
	private Source source;
	   private boolean validated;
	   private Map<String, String> errorMessages;
	public Source getSource() {
		return source;
	}
	public void setSource(Source source) {
		this.source = source;
	}
	public boolean isValidated() {
		return validated;
	}
	public void setValidated(boolean validated) {
		this.validated = validated;
	}
	public Map<String, String> getErrorMessages() {
		return errorMessages;
	}
	public void setErrorMessages(Map<String, String> errorMessages) {
		this.errorMessages = errorMessages;
	}
	   
}
