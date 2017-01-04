package com.a2z.model;

import org.springframework.security.crypto.codec.Base64;

public class Text {

	public static void main(String[] args) {
		System.out.println("hello world");
		String name = "cmVudWthZGV2";
		byte[] bytes = name.getBytes();
		byte[] decodeBytes = Base64.decode(bytes);
		String decodedPassword = new String(decodeBytes);
		System.out.println("Password:"+decodedPassword);

	}

}
