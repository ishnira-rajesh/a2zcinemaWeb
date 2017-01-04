package com.a2z.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.UUID;

public class Utils {
	
	public static String getTempPassword() {
		UUID tempPwd = null;
		tempPwd = java.util.UUID.randomUUID();
		System.out.println("tempPwd:"+tempPwd);
		return tempPwd.toString().substring(0, 8).toUpperCase();
	}
	
	/*public static Date DateFormate(String date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dts = new Date();
		try {
			dts = (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")).parse(date.replaceAll("Z$", "+0000"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sdf.format(dts);
	}*/
	
	/*public static Date DateFormate (String date) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dts = new Date();
		     dts.parse(sdf);
		try {
			dts = (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")).parse(date.replaceAll("Z$", "+0000"));
			sdf.format(dts);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return dts;
	}*/
	//String format = "2016-12-19T18:30:00.000Z";
	/*public static Date DateFormate(String format) {
		String cdate = null;
		Date datef  = new Date();
		try {
			Date date = (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")).parse(format.replaceAll("Z$", "+0000"));
			System.out.println("string: " + string);
			System.out.println("defaultTimezone: " + defaultTimezone);
			System.out.println("date: " + (new SimpleDateFormat("yyyy-MM-dd")).format(date));
			cdate = (new SimpleDateFormat("yyyy-MM-dd")).format(date);
			System.out.println("cdate: " + cdate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return datef;
	}*/
	
	public static void main(String[] args) {
		System.out.println("Created By Rajesh");
		//String pass = "milana@123";
		//byte[] bytes = pass.getBytes();
		//byte[] encodedBytes = Base64.encode(bytes );
		//String encodedPassword = new String(encodedBytes);
		//System.out.println("Password : "+encodedPassword);
		
		String string = "2016-12-19T18:30:00.000Z";
		String defaultTimezone = TimeZone.getDefault().getID();
		try {
			Date date = (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")).parse(string.replaceAll("Z$", "+0000"));
			System.out.println("string: " + string);
			System.out.println("defaultTimezone: " + defaultTimezone);
			System.out.println("date: " + (new SimpleDateFormat("yyyy-MM-dd")).format(date));
		
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
