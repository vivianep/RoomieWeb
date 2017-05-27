package com.roomieweb.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Base64;

import com.roomieweb.model.Meeting;

public class Util {

public static String codifySHA256(String text) throws NoSuchAlgorithmException{
		

		MessageDigest digest = MessageDigest.getInstance("SHA-256");
		byte[] hash = digest.digest(text.getBytes(StandardCharsets.UTF_8));
		String encoded = Base64.getEncoder().encodeToString(hash);

		return encoded;		
	}
	
	

	
	
}
