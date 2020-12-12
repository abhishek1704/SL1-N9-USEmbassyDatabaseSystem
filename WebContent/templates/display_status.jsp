<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    
<!DOCTYPE html>
<html>
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
	<h2>APPLICATION FORM STATUS</h2>
	
	<br>

    <%String appid = session.getAttribute("app_id").toString();
    	out.println("Application id : " + appid + "<br>");
    	String name = session.getAttribute("fullName").toString();
    	out.println("Applicant name : " + name + "<br>");
    	String status = session.getAttribute("status").toString();
    	out.println("Status : " + status + "<br>");
    	if (status.equals("Rejected")) {
    		out.println("Description : Address doesn't match as given in the papers");    
    	}
    %>
		
</div>

</html>