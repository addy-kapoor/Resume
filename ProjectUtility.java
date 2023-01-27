package com.resumebuilder.org.util;

import java.util.Base64;

public class ProjectUtility {
	public static final String getBasicAuthenticationHeader(String username, String password) {
	    String valueToEncode = username + ":" + password;
	    return "Basic " + Base64.getEncoder().encodeToString(valueToEncode.getBytes());
	}
}
