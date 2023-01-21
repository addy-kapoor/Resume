
package com.resumebuilder.org.repository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.resumebuilder.org.controller.DatabaseConnector;
import com.resumebuilder.org.model.ResumeBuilder;

//import com.empeligibility.org.controller.DatabaseConnector;
//import com.empeligibility.org.model.Employee;

public class ResumeBuilderRepository {
	public void saveEmployee(ResumeBuilder resume) throws SQLException  {    //EMPLOYEE EMP
	PreparedStatement ps = null;
	Connection con = null;
	try {
        con = DatabaseConnector.getInstance().getConnection();  
        ps = con.prepareStatement("insert into resume values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,resume.getEmail());
        ps.setString(2,resume.getName());
        ps.setString(3,resume.getMobNo());
        ps.setString(4 ,resume.getLinkedIn());
        ps.setString(5,resume.getLocation()); 
        ps.setString(6,resume.getClgName1());
        ps.setString(7,resume.getClgName2());
        ps.setString(8,resume.getDegree1());
        ps.setString(9,resume.getDegree2());
        ps.setInt(10,resume.getYear1());
        ps.setInt(11,resume.getYear2());
        ps.setString(12,resume.getAbout());
        ps.setString(13,resume.getCompany1());
        ps.setString(14,resume.getCompany2());
        ps.setString(15,resume.getRole1());
        ps.setString(16,resume.getRole2());
        ps.setString(17,resume.getPlatforms());
        ps.setString(18,resume.getDesignation1());
        ps.setString(19,resume.getDesignation1());
        ps.setString(20,resume.getProgLang());
        ps.executeUpdate();  
	}catch(Exception e) {
		System.out.println(e);
		if (ps != null){  
            ps.close();  
        }if(con != null){  
            con.close();
        }
	}
	
}
}