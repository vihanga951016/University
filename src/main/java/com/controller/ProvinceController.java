package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.modal.District;
import com.modal.Province;
import com.service.DbConnection;
import com.service.ProvinceService;


public class ProvinceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			ProvinceService provinceService = new ProvinceService(DbConnection.getConnection());
			String op = request.getParameter("operation");
			if(op.equals("province")) {
		
				List<Province> provinceList = provinceService.getAllProvince();
				Gson json = new Gson();
				String provinces = json.toJson(provinceList);
				response.setContentType("text/html");
				response.getWriter().write(provinces);
			}
			
			
			if(op.equals("district")) {
				int id = Integer.parseInt(request.getParameter("id"));
				List<District> districtList = provinceService.getDistrictsByProvince(id);
				Gson json = new Gson();
				String districts = json.toJson(districtList);
				response.setContentType("text/html");
				response.getWriter().write(districts);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
