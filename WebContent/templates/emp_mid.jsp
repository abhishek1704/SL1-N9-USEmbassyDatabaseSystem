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
      		
      		String name=(String)session.getAttribute("username"); 
      		
      		%>

<%
String app_id = " ";
try 
{
	String connectionURL = "jdbc:mysql://localhost:3306/Embassy?autoReconnect=true&useSSL=false"; 
	
	Connection connection = null; 
	
	Class.forName("com.mysql.jdbc.Driver"); 
	
	connection = DriverManager.getConnection(connectionURL, "abhi", "abhi123");
	Statement st1 = connection.createStatement();		
	String res = "";
	int f = 0;
	if(!connection.isClosed()) {		
	
		ResultSet rs2 = st1.executeQuery("select * from Applications where emp_id='"+name+"'");
			    String fullName = " ";
			    String status = " ";
			    String app_no = " ";
				Statement st2 = connection.createStatement();		
			    while (rs2.next()) {
			    	app_id = rs2.getString("app_id");
				    System.out.println(app_id);
				    app_no = rs2.getString("app_no");
				   
				    System.out.println(app_no);
				    if (app_no.charAt(0) == '1') {
						ResultSet rs1;
				    	rs1 = st2.executeQuery("select * from h1b_visa_application where appl_no=" + app_no);
				    	rs1.next();
			    		System.out.println(rs1.getString("status"));
				    	if (rs1.getString("status").equals("in proccess")) {
				    		System.out.println("Hurraaaaaaahhhh");
					    	session.setAttribute("appno", app_no);
					    	session.setAttribute("appid", app_id);
					    	session.setAttribute("fullName", rs1.getString("ben_name"));
					    	session.setAttribute("nat", rs1.getString("nationality"));
					    	session.setAttribute("addr", rs1.getString("ben_addr"));
					    	session.setAttribute("job", rs1.getString("job_title"));
					    	session.setAttribute("occ", rs1.getString("occupation"));
					    	session.setAttribute("loc", rs1.getString("location"));
				    		break;
				    	}
	
				    } /*
			    else if (app_no.charAt(0) == '4') {
			    	rs1 = st.executeQuery("select * from tourist_visa_application where appl_no=" + app_no);
			    	rs1.next();
			    	fullName = rs1.getString("app_fullname");
			    	status = rs1.getString("status");
			    }*/
			    }
		
		response.sendRedirect("./emp_page.jsp");
		
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