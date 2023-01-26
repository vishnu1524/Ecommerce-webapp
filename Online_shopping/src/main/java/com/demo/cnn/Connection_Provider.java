package com.demo.cnn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connection_Provider {
	public static Connection getCon() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","admin");
			return con;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}