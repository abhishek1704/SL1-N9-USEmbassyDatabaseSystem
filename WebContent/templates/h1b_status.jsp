<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String app_id=request.getParameter("app_id");
String ans = request.getParameter("answer");

try 
{
	String connectionURL = "jdbc:mysql://localhost:3306/Embassy?autoReconnect=true&useSSL=false"; 
	
	Connection connection = null; 
	
	Class.forName("com.mysql.jdbc.Driver"); 
	
	connection = DriverManager.getConnection(connectionURL, "abhi", "abhi123");
	Statement st = connection.createStatement();		
	String res = "";
	int f = 0;
	if(!connection.isClosed()) {		
	
		ResultSet rs2 = st.executeQuery("select * from Applications");
		ResultSet rs1;
		System.out.println(ans);	
		while(rs2.next()) {
			if((app_id.equals(rs2.getString("app_id"))) && (ans.equals(rs2.getString("security_ans"))))
			{
			    res = "./display_status.jsp";
			    session.setAttribute("app_id", app_id);
			    String fullName = " ";
			    String status = " ";
			    String app_no = rs2.getString("app_no");
			    System.out.println(app_no);
			    if (app_no.charAt(0) == '1') {
			    	rs1 = st.executeQuery("select * from h1b_visa_application where appl_no=" + app_no);
			    	rs1.next();
			    	fullName = rs1.getString("ben_name");
			    	status = rs1.getString("status");
			    } else if (app_no.charAt(0) == '4') {
			    	rs1 = st.executeQuery("select * from tourist_visa_application where appl_no=" + app_no);
			    	rs1.next();
			    	fullName = rs1.getString("app_fullname");
			    	status = rs1.getString("status");
			    }
			    session.setAttribute("fullName", fullName);
			    session.setAttribute("status", status);

			    f = 1; 
			    break;
			}
		}
		if (f != 1)
	    	res = "./statuspage.html";
		
		response.sendRedirect(res);
		
	}
	connection.close();
}
catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
%>

</body>
</html>