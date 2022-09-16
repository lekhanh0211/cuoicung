package com.shop.test;

import org.mindrot.jbcrypt.BCrypt;

public class Ma_Hoa {
	public static void main(String[] args) {
		System.out.println(BCrypt.hashpw("1234", BCrypt.gensalt(12)));
		//System.out.println(BCrypt.checkpw("1234", "$2a$12$2Hc0QGlomvaEYCTHP4EMvuRijEoJI0zGs5b59jj6t./sjmmt2.a8."));
	}
}
