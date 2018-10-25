package com.cg.model;

import java.util.Map;

public class DestinationJsonResponse {
	private Destination destination;
	   private boolean validated;
	   private Map<String, String> errorMessages;
	public Destination getDestination() {
		return destination;
	}
	public void setDestination(Destination destination) {
		this.destination = destination;
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