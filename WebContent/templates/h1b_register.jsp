<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<!DOCTYPE html>
<html>
<body>

<%

try 
{
	String connectionURL = "jdbc:mysql://localhost:3306/Embassy?autoReconnect=true&useSSL=false"; 
	int candidateId = 0;
	 ResultSet rs;
	Connection connection = null; 
	
	Class.forName("com.mysql.jdbc.Driver"); 
	
	connection = DriverManager.getConnection(connectionURL, "abhi", "abhi123");
	String query = "CALL getnextid(?);";
	CallableStatement stmt = connection.prepareCall(query);
	stmt.registerOutParameter(1, java.sql.Types.VARCHAR);
    stmt.execute();
    String id = stmt.getString(1);
    pageContext.setAttribute("id", id, PageContext.SESSION_SCOPE);
    pageContext.setAttribute("id", id);
    session.setAttribute("id", id);
    System.out.println(stmt.getString(1));
   /* rs = stmt.getResultSet();
    if (rs.next()) {
        out.println(rs.getString(1));
    }*/
    


	connection.close();
}
catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}

String id= (String) pageContext.getAttribute("id", PageContext.SESSION_SCOPE);

%>


<link rel="stylesheet" href="homepage_files/home_css.css">
<div class="colorstrip">
	<div>
		<img src="homepage_files/embassyLogo.png" class="logo_img">

	</div>
	<div class="name">
		<p>U.S. Embassy & Consulates<br>India</p>
	</div>
</div>

<div class="colorstrip2">
	
		<p class="strip2para"><b>Air Quality Data:</b> U.S. Embassy and Consulates’ air quality monitors measure PM 2.5 data.</p>
	
</div>

<div class="redstrip"/>

  <div class="topNav">
    <a href="./home.html">Home</a>
  <a href="./visa_page.html">Visas</a>
  <a href="./citizen_services_page.html">U.S. Citizen Services</a>
  <a href="./statuspage.html">View Status</a>
  <a href="#./heathcare.html">Our Relationship</a>
	  <a href="#./heathcare.html">Education & Culture</a>

  </div>


<div class="visa_page_buttons">
	<p>Your registration ID is:</p>
	<div class="reg_id"><%= id %></div>
        <p>Please select a security question:</p>
			<select name="security" id="security">
  				<option value="na">--Select one--</option>
    				<option value="mother_name">What is the given name of your mother?</option>
    				<option value="father_name">What is the given name of your father?</option>
    				<option value="child_name">What name did your family used to call you when you were  child?</option>
    				<option value="city">In what city did you meet your spouse/significant other?</option>
    				<option value="8city">In which city did you live when you were 8 years old?</option>
    				<option value="pet">What was the name of your first pet?</option>
				<option value="teacher_name">What is the last name of your favourite teacher?</option>
				<option value="job">In which city did you have your first job?</option>
				<option value="bf">What was the name of your first boyfriend/girl friend?</option>
				<option value="other">Other</option>
  				</select>
	<br><br>
	<form  action="./h1b_page1.jsp" method="post" id="myform">
		<label for="sec_question">Answer</label>
		<input type="text" name="sec_question" id="sec_question"><br><br>	
		<input type="submit" class="fill_the_form" value="Submit" name="Fill the Form ">
	</form>		
</div>
</body>
</html>
