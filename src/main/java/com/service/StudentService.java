package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.modal.Student;

public class StudentService {

	public String registerStudent(Student student) {

//		 String nic = student.getNic();
//		 String name = student.getName();
//		 String dob = student.getDob();
//		 String address = student.getAddress();
//		 String province = student.getProvince();
//		 String district = student.getDistrict();
//		 String email = student.getEmail();
//		 String password = student.getPassword();

		Student students = new Student();
		
		 try {
			/*
			 * Connection connection = DbConnection.getConnection(); String query =
			 * "insert into students(nic,name,birthday,address,province,district,email,password) values (?,?,?,?,?,?,?,?)"
			 * ; PreparedStatement preparedStatement = connection.prepareStatement(query);
			 */
			 
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mvc","root","0252236720yvg@");
			Statement statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery("insert into students(nic,name,dob,address,province,district,email,password) values (?,?,?,?,?,?,?,?)");
			if(resultSet.next()) {
				students.setNic(resultSet.getString("nic"));
				students.setName(resultSet.getString("name"));
				students.setDob(resultSet.getString("dob"));
				students.setAddress(resultSet.getString("address"));
				students.setProvince(resultSet.getString("province"));
				students.setDistrict(resultSet.getString("district"));
				students.setEmail(resultSet.getString("email"));
				students.setPassword(resultSet.getString("password"));
				
			}
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		 
		 
		
		return null;
	}

}
