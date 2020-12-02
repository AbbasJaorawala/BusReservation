package com.skitm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReservationDao {
	String sql="Select `source`,`destination`,`journey_date`,`journey_time`,`amount` from fare where source=? and destination=?";

	public boolean check(String Jsource,String Jdestination) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_management_system","root","root");
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,Jsource);
			st.setString(2,Jdestination);
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
