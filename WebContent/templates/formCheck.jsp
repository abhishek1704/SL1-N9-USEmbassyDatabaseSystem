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
//save just user name in session
String username=request.getParameter("username");
String password=request.getParameter("password");
       

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
	
		ResultSet rs2 = st.executeQuery("select * from employee");
		while(rs2.next()) {
			if((username.equals(rs2.getString("emp_id")) && password.equals(rs2.getString("password"))))
			{
			    session.setAttribute("username", username);
			    res = "./emp_mid.jsp";
			    f = 1;			    
			    break;
			}
		}
		if (f != 1)
	    	res = "./login.html";
		
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