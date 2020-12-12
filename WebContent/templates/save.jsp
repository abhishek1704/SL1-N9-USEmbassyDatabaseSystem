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
String status=request.getParameter("status");
String appno = session.getAttribute("appno").toString();

System.out.println(status);
      		
      		
      		try 
      		{
      			String connectionURL = "jdbc:mysql://localhost:3306/Embassy?autoReconnect=true&useSSL=false"; 
      			
      			Connection connection = null; 
      			
      			Class.forName("com.mysql.jdbc.Driver"); 
      			
      			connection = DriverManager.getConnection(connectionURL, "abhi", "abhi123");
      			Statement st = connection.createStatement();		
      			int i=st.executeUpdate("update h1b_visa_application set status='"+status+"' where appl_no=" + appno);
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

</body>
</html>