package com.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/universitydb","root","0252236720yvg@");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return con;
	}
}
