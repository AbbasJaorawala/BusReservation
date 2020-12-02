package com.skitm.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;
import com.mysql.cj.xdevapi.PreparableStatement;
@SuppressWarnings("unused")
public class LoginDao {
	String sql="Select `username`,`password` from login where username=? and password=?";

	public boolean check(String username,String password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,username);
			st.setString(2,password);
			ResultSet rs=st.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
