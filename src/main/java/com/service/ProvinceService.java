package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.modal.District;
import com.modal.Province;

public class ProvinceService {

	Connection con;
	PreparedStatement preparedStatement;
	String query;
	ResultSet resultSet;
	
	public ProvinceService(Connection con) {
		this.con = con;
	}
	
	public List<Province> getAllProvince(){
		List<Province> provinceList = new ArrayList<Province>();
		try {
			query = "select * from province";
			preparedStatement = this.con.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Province province = new Province();
				province.setProvinceId(resultSet.getInt("idprovince"));
				province.setProvinceName(resultSet.getString("provincename"));
				provinceList.add(province);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return provinceList;
		
	}
	
	public List<District> getDistrictsByProvince(int provinceId){
		List<District> districtList = new ArrayList<District>();
		try {
			query = "select * from district where provinceid=?";
			preparedStatement = this.con.prepareStatement(query);
			preparedStatement.setInt(1, provinceId);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				District district = new District();
				district.setDistrictId(resultSet.getInt("districtid"));
				district.setDistrictName(resultSet.getString("name"));
				district.setProvinceId(resultSet.getInt("provinceid"));
				districtList.add(district);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return districtList;
		
	}
}
