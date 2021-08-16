package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.modal.Student;

public class StudentService {

	public String registerStudent(Student student) {

		 String nic = student.getNic();
		 String name = student.getName();
		 String dob = student.getDob();
		 String address = student.getAddress();
		 String province = student.getProvince();
		 String district = student.getDistrict();
		 String email = student.getEmail();
		 String password = student.getPassword();
		
		 try {
			
			 Connection connection = DbConnection.getConnection(); 
			 String query = "insert into students(nic,name,birthday,address,province,district,email,password) values (?,?,?,?,?,?,?,?)";
			 PreparedStatement preparedStatement = connection.prepareStatement(query);
			 
			 preparedStatement.setString(1, nic);
			 preparedStatement.setString(2, name);
			 preparedStatement.setString(3, dob);
			 preparedStatement.setString(4, address);
			 preparedStatement.setString(5, province);
			 preparedStatement.setString(6, district);
			 preparedStatement.setString(7, email);
			 preparedStatement.setString(8, password);
			 
			 int i = preparedStatement.executeUpdate();
			 
			 if(i!=0) {
				 return "SUCCESS";
			 }else {
				 return "ERROR";
			 }

			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		 return "Something went wrong";
		 
	}

}
