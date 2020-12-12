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
<% out.println("Hellllo !"); %>
<%
		String first_name = session.getAttribute("first_name").toString();
String mid_name = session.getAttribute("mid_name").toString();
String last_name = session.getAttribute("last_name").toString();

		String dob = session.getAttribute("dob").toString();
		String zcode = session.getAttribute("zcode").toString();		
		String addr = session.getAttribute("addr").toString();

	   /// response.sendRedirect("./h1b_page2.html");
		
	

try 
{
	String connectionURL = "jdbc:mysql://localhost:3306/Embassy?autoReconnect=true&useSSL=false"; 
	
	Connection connection = null; 
	
	Class.forName("com.mysql.jdbc.Driver"); 
	
	connection = DriverManager.getConnection(connectionURL, "abhi", "abhi123");
	Statement st = connection.createStatement();	
	int i=st.executeUpdate("insert into passport_renewal_application(first_name, middle_name, last_name, birth_date, sex, mailing_address, zipcode, recent_passport_details, occupation, status)values('"+first_name+"','"+mid_name+"','"+last_name+"','"+"2000-12-12"+"','"+"M"+"','"+addr+"','"+zcode+"','"+"Y"+"','"+"Temp"+"','"+"in proccess"+"')");
	out.println("Data is successfully inserted!");
	Statement st2 = connection.createStatement();	
/*	if (i != -1) {
		i = st2.executeUpdate("update Applications set security_ans='"+ans+"' where app_id='"+id+"'");
	}*/
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