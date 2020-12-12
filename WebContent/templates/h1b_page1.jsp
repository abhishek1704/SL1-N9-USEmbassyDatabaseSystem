<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Form-v4 by Colorlib</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/opensans-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/line-awesome/css/line-awesome.min.css">
	<!-- Jquery -->
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="../css/style1.css">
</head>
<body class="form-v4">
<%

String ans = request.getParameter("sec_question");
System.out.println(ans);

session.setAttribute("ans", ans);

%>
	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>INFORMATION</h2>
				<p class="text-1">Enter the name as listed in your passport. If only one name is listed in your passport, enter that name.</p>
				<p class="text-2"><br><br>Enter as per your birth certificate</p>
				<p class="text-2"><br><br><br><br>If day or month is unknown, enter as shown in the passport. Format: mm/dd/yyyy</p>
				<p class="text-2"><br><br><br><br><br><br><br><br><br><br><br>Enter only if you have completed and have the certificate.</p>
				
			</div>
			<form class="form-detail" action="./h1b_page2.jsp" method="post" id="myform">
				<h2>Benificiary Information</h2>
				<div class="form-group">
					<div class="form-row form-row-1">
						<label for="first_name">First Name</label>
						<input type="text" name="first_name" id="first_name" class="input-text">
					</div>
					<div class="form-row form-row-1 ">
						<label for="middle_name">Middle Name</label>
						<input type="text" name="middle_name" id="middle_name" class="input-text">
					</div>
					<div class="form-row form-row-1 ">
						<label for="last_name">Last Name</label>
						<input type="text" name="last_name" id="last_name" class="input-text">
					</div>
				</div>

			
				<label for="sex">Sex:</label>
				<div class="form-group">
						<label for="male" class="sex">Male</label>
						
						<div class="form-row form-row-1">	
							<input type="radio" id="male" name="gender" value="male">
						</div>	
						
						<label for="female">Female</label>
						
						<div class="form-row form-row-1">
							<input type="radio" id="female" name="gender" value="female">
						</div>
					
				</div>
				<br>
				<label for="marital">Marital status:</label>
  				<select name="marital" id="marital">
    					<option value="na">--Select one--</option>
    					<option value="married">Married</option>
    					<option value="commonlaw">Common law marriage</option>
    					<option value="civilunion">Civil Union/Domestic partnership</option>
    					<option value="single">Single</option>
    					<option value="widowed">Widowed</option>
    					<option value="divorced">Divorced</option>
  				</select>
				<br><br>
				<div class="form-row">
					<label for="dob">Date of birth:</label>
					<input type="text" name="dob" id="dob" class="input-text" required pattern="\d{1,2}/\d{1,2}/\d{4}">
				</div>
				<div class="form-row">
					<label for="pob">Place of birth:</label>
					<input type="text" name="pob" id="pob" class="input-text">
				</div>
				
				<div class="form-row">
					<label for="nationality">Nationality:</label>
					<input type="text" name="nationality" id="nationality" class="input-text">
				</div>
				<div class="form-row">
					<label for="ben_addr">Address</label>
					<input type="text" name="ben_addr" id="ben_addr" class="input-text">
				</div>
				
				<label for="education">Highest level of education:</label>
  				<select name="education" id="education">
    					<option value="na">--Select one--</option>
    					<option value="primary">Primary</option>
    					<option value="secondary">Secondary</option>
    					<option value="higher_secondary">Higher secondary</option>
					<option value="diploma">Diploma</option>    
					<option value="graduation">Graduation</option>
    					<option value="post_graduation/masters">Post-Graduation/Masters</option>
    
  				</select>
				<br><br>
				<div class="form-row">
					<label for="study">Major field of study:</label>
					<input type="text" name="study" id="study" class="input-text">
				</div>

				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Next">
				</div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	
	<script>
/*
form=document.getElementById("myform");


function next() {
    form.action="h1b_page2.html";
    form.submit();
}

*/		
	</script>

</body>
</html>