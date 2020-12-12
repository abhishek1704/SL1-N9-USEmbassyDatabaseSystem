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
		String fullName = session.getAttribute("fullName").toString();
		String dob = session.getAttribute("dob").toString();
		String nid = session.getAttribute("nid").toString();		
		String addr = session.getAttribute("addr").toString();
		String country = session.getAttribute("country").toString();

		
		String jobTitle = request.getParameter("job_title");
		String salary = request.getParameter("salary");		
		String petitioner_info = "Y";

		
	   /// response.sendRedirect("./h1b_page2.html");
		
	

try 
{
	String connectionURL = "jdbc:mysql://localhost:3306/Embassy?autoReconnect=true&useSSL=false"; 
	
	Connection connection = null; 
	
	Class.forName("com.mysql.jdbc.Driver"); 
	
	connection = DriverManager.getConnection(connectionURL, "abhi", "abhi123");
	Statement st = connection.createStatement();	
	System.out.println("Hellllo");
	int i=st.executeUpdate("insert into tourist_visa_application(app_fullName, sex, birth_date, natid, addr, travel_info, passport_info, criminal_activity, country_of_origin, status)values('"+fullName+"','"+"M"+"','"+"2000-12-12"+"','"+nid+"','"+addr+"','"+"Y"+"','"+"Y"+"','"+"N"+"','"+country+"','"+"in proccess"+"')");       
	out.println("Data is successfully inserted!");
	int f = 0;
	/*
	if(!connection.isClosed()) {		
	
		ResultSet rs2 = st.executeQuery("select * from user_login");
		while(rs2.next()) {
			if((username.equals(rs2.getString("username")) && password.equals(rs2.getString("password"))))
			{
			    session.setAttribute("username", username);
			    res = "./home.jsp";
			    f = 1;			    
			    break;
			}
		}
		if (f != 1)
	    	res = "./login.html";
		
		response.sendRedirect(res);
		
	}*/
	connection.close();
}
catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
%>



			<a href="./home.html" class="register">Go to Homepage</a>

</body>
</html>