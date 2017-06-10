package com.roomieweb.util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;

import com.roomieweb.model.Meeting;

public class Util {

public static String codifySHA256(String text) throws NoSuchAlgorithmException{
		

		MessageDigest digest = MessageDigest.getInstance("SHA-256");
		byte[] hash = digest.digest(text.getBytes(StandardCharsets.UTF_8));
		String encoded = Base64.getEncoder().encodeToString(hash);

		return encoded;		
	}
	
	
		public static String retrieveDate(String datetime) {
		

			int year = Integer.parseInt(datetime.substring(0,4));
			int month = Integer.parseInt(datetime.substring(5, 7));
			int date = Integer.parseInt(datetime.substring(8,10));
			return date+"/"+month+"/"+year;
		
		}

		public static String retrieveHour(String datetime) {
			
			return datetime.substring(11,16);
		
		
		}

		public static Date getHour(int minutes, int seconds){
			
			Calendar calendar = Calendar.getInstance();
			
			int currentDay = calendar.get(Calendar.DATE);
			int currentMonth = calendar.get(Calendar.MONTH);
			int currentYear = calendar.get(Calendar.YEAR);
			int currentHour = calendar.get(Calendar.HOUR_OF_DAY);
			calendar.set(currentYear, currentMonth, currentDay, currentHour, minutes,seconds );
			System.out.println(calendar.getTime());
			return calendar.getTime();
			
		}
		
		
		
		
		public static Date convertStringToDate(String time) {
			
			
			Calendar calendar = Calendar.getInstance();
			
			int year = Integer.parseInt(time.substring(0,4));
			int month = Integer.parseInt(time.substring(5, 7))-1;
			int date = Integer.parseInt(time.substring(8,10));
			int hour =Integer.parseInt(time.substring(11,13));
			int minutes =Integer.parseInt(time.substring(14,16));
			calendar.set(year, month, date,hour, minutes,0);
			
			return calendar.getTime();

			
			
			
		}
		
		public static boolean isOnCurrentHour(Meeting m) {
			
			Calendar calendar = Calendar.getInstance();
			Date currentTime = calendar.getTime();
			Date endHour = getHour(59,59);
			Date initialHour = getHour(0,0);
			//calendar.set(, month, date);
			Date startDate = convertStringToDate(m.getStartTime());
			Date endDate = convertStringToDate(m.getEndTime());
			 if(initialHour.before(startDate) && startDate.before(endHour) ) {
		    	if(endDate.after(currentTime))
		    		return true;
		    }  
		    return false;
		
		}



	
	
}
