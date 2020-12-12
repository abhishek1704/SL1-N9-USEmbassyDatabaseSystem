<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
    
    <%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="../css/empl_css.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
  <a href="#heathcare.html">Our Relationship</a>
  <a href="#heathcare.html">Education & Culture</a>
  <a href="#heathcare.html">Embassy & Consulates</a>
      <a href="./logout.jsp" class="active">Logout</a>
 

  </div>

	<h1 class="h1">H1B VISA</h1>
<div class="empl">
<%

String name = session.getAttribute("fullName").toString();
String nat = session.getAttribute("nat").toString();
String addr = session.getAttribute("addr").toString();
String job = session.getAttribute("job").toString();
String appid = session.getAttribute("appid").toString();
String occ = session.getAttribute("occ").toString();
String loc = session.getAttribute("loc").toString();
String app_no = session.getAttribute("appno").toString();


%>
 <div class="empl_1">
 		<img src="homepage_files/embassyLogo.png">
		<p> Applicant ID: <% out.println(appid); %></p>
		<p> Full name:  <% out.println(name); %></p>
		<p> Nationality: <% out.println(nat); %></p>
		<p> Address: <% out.println(addr); %></p>
		<p> Age: <% out.println(30); %></p>
		<p> Sex: <% out.println("M"); %></p>
		<p> Job Title:  <% out.println(job); %></p>
		<p> Occupation: <% out.println(occ); %></p>
		<p> Location:  <% out.println(loc); %></p>
		<p> Full Time position: YES</p>
		
  </div>
  
  <div class="empl_1">
    <div>	
		<br><br><br>
		<label for="pic" >Is it a full and clear image?</label>
			<label for="pic_yes">Yes</label>			
			<input type="radio" id="pic_yes" name="pic" value="Yes">
			<label for="pic_no">No</label>			
			<input type="radio" id="pic_no" name="pic" value="No">
		<br><br><br><br><br><br>
		<label for="pic" >Does the name match as given in the papers?</label>
			<label for="pic_yes">Yes</label>			
			<input type="radio" id="pic_yes" name="pic" value="Yes">
			<label for="pic_no">No</label>			
			<input type="radio" id="pic_no" name="pic" value="No">
		<br><br><br><br>
		<label for="pic" >Is the national eligible for H1B visa?</label>
			<label for="pic_yes">Yes</label>			
			<input type="radio" id="pic_yes" name="pic" value="Yes">
			<label for="pic_no">No</label>			
			<input type="radio" id="pic_no" name="pic" value="No">
		<br>
		<label for="pic" >Does the address match as given in the papers?</label>
			<label for="pic_yes"class="radio_address" >Yes</label>			
			<input type="radio" id="pic_yes" name="pic" value="Yes">
			<label for="pic_no">No</label>			
			<input type="radio" id="pic_no" name="pic" value="No">
		<br><br><br><br><br><br><br><br>
		<label for="pic" >Rate the importance of the occupation</label>
			<label for="occupation"class="occupation" >High</label>			
			<input type="radio" id="occupation" name="occupation" value="Yes">
			<label for="occupation">Medium</label>			
			<input type="radio" id="occupation" name="occupation" value="Medium">
			<label for="occupation">Low</label>			
			<input type="radio" id="occupation" name="occupation" value="Low">
		<br><br>
		<label for="pic" >Rate the importance of the location</label>
			<label for="occupation"class="occupation" >High</label>			
			<input type="radio" id="occupation" name="occupation" value="Yes">
			<label for="occupation">Medium</label>			
			<input type="radio" id="occupation" name="occupation" value="Medium">
			<label for="occupation">Low</label>			
			<input type="radio" id="occupation" name="occupation" value="Low">
		<br><br>
		<label for="pic" >Rate the importance of position</label>
			<label for="occupation"class="occupation" >High</label>			
			<input type="radio" id="occupation" name="occupation" value="Yes">
			<label for="occupation">Medium</label>			
			<input type="radio" id="occupation" name="occupation" value="Medium">
			<label for="occupation">Low</label>			
			<input type="radio" id="occupation" name="occupation" value="Low">


<br><br>

          <form method="post">
     
		<button type="submit" value="Accept" id="accept">Accept</button>
		<button  type="submit" value="Reject" id="reject">Reject</button>	
			</form>
		
		
	<script type="text/javascript">
	$("#accept").click(function() {
		var status= "Accepted";
			$.ajax({
			url: "./save.jsp",
			type: 'POST',
			data: {status: status},
			success: function(data) {
			alert(data);
		}
		});
		});
	
	$("#reject").click(function() {
		var status= "Rejected";
		$.ajax({
			url: "./save.jsp",
			type: 'POST',
			data: {status: status},
			success: function(data) {
			alert(data);
		}
		});
		});
</script>
</div>
</html>