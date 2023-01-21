<%@ page import="java.sql.*"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="java.util.Scanner"%>
<%
String s = request.getParameter("val");
if (s == null || s.trim().equals("")) {
	out.print("Please enter email");
} else {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resumebuilder", "root", "root");
		PreparedStatement ps = con.prepareStatement("select * from resume where email=?");
		System.out.println("reached");
		ps.setString(1, s);
		ResultSet rs = ps.executeQuery();
		ResultSetMetaData rsMetaData = rs.getMetaData();
		JSONObject json = new JSONObject();
        while (rs.next()) {
        	for(int i = 1; i <= rsMetaData.getColumnCount(); i++) {
                json.put(rsMetaData.getColumnName(i), rs.getString(rsMetaData.getColumnName(i)));
             }
        }
        out.print(json);
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
%>