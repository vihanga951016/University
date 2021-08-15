package com.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.threads.ResizableExecutor;

import com.modal.Student;
import com.service.StudentService;

/**
 * Servlet implementation class StudentController
 */
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String nic = request.getParameter("nic");
		 String name = request.getParameter("name");
		 String dob = request.getParameter("birthday");
		 String address = request.getParameter("address");
		 String province = request.getParameter("province");
		 String district = request.getParameter("district");
		 String email = request.getParameter("email");
		 String password = request.getParameter("password");
		 String repassword = request.getParameter("psw-repeat");
		 
		 Student student = new Student();
		 
		 student.setNic(nic);
		 student.setName(name);
		 student.setDob(dob);
		 student.setAddress(address);
		 student.setProvince(province);
		 student.setDistrict(district);
		 student.setEmail(email);
		 student.setPassword(password);
		 student.setRepassword(repassword);
		 
		 StudentService studentService = new StudentService();
		 
		 String studentRegistered = studentService.registerStudent(student);
		 
		 if(studentRegistered.equals("SUCCESS")){
			 request.getRequestDispatcher("/student.jsp").forward(request, response);
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
