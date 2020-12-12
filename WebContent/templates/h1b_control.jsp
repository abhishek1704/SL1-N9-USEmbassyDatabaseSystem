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
<%final int appl_no = 1006; %>
<%
		String fullName = session.getAttribute("fullName").toString();
		String dob = session.getAttribute("dob").toString();
		String Nat = session.getAttribute("Nat").toString();		
		String employer_name = session.getAttribute("employer_name").toString();
		
		String jobTitle = request.getParameter("job_title");
	//	String occupation = session.getAttribute("occ").toString();
		String location = session.getAttribute("loc").toString();
		String addr = session.getAttribute("addr").toString();

		String salary = request.getParameter("salary");	
		String ans = session.getAttribute("ans").toString();		
		String id = session.getAttribute("id").toString();		
		String petitioner_info = "Y";
		
		String [] date = dob.split("/");
		String d = date[0];
		String m = date[1];
		String y = date[2];
		dob = y + "-" + m + "-" + d;
		
	   /// response.sendRedirect("./h1b_page2.html");
		
	

try 
{
	String connectionURL = "jdbc:mysql://localhost:3306/Embassy?autoReconnect=true&useSSL=false"; 
	
	Connection connection = null; 
	
	Class.forName("com.mysql.jdbc.Driver"); 
	
	connection = DriverManager.getConnection(connectionURL, "abhi", "abhi123");
	Statement st = connection.createStatement();	
	int i=st.executeUpdate("insert into h1b_visa_application(ben_name, ben_dob, ben_gender, ben_addr, nationality, job_title, hrs_per_week, salary, employer_name, occupation, full_time_position, location, status)values('"+fullName+"','"+dob	+"','"+"M"+"','"+addr+"','"+Nat+"','"+jobTitle+"','"+60+"','"+salary+"','"+employer_name+"','"+"Sales"+"','"+"Y"+"','"+location+"','"+"in proccess"+"')");
	out.println("Data is successfully inserted!");
	Statement st2 = connection.createStatement();	
	if (i != -1) {
		i = st2.executeUpdate("update Applications set security_ans='"+ans+"' where app_id='"+id+"'");
	}
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