package com.skitm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.skitm.db.Register;
public class RegisterDao {
	@SuppressWarnings("unused")
	public int  registration(Register register) {
		String sql="INSERT INTO `register`(`user_id`, `username`, `firstname`, `lastname`, `age`, `address`, `phone_no`, `email`, `PASSWORD`) values(?,?,?,?,?,?,?,?,?)";
		int result=0;			
		try(Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
				PreparedStatement st=con.prepareStatement(sql);) {
			Class.forName("com.mysql.jdbc.Driver");
			st.setInt(1, 1);
			st.setString(2, register.getUsername());
			st.setString(3,register.getFirstName());
			st.setString(4,register.getLastName());
			st.setString(5, register.getAge());
			st.setString(6, register.getAddress());
			st.setString(7, register.getPhoneNo());
			st.setString(8, register.getEmail());
			st.setString(9, register.getPassword());
			ResultSet rs=st.executeQuery();
			result=st.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
