<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="../css/style1.css"/>
</head>
<body class="form-v4">

<% 
		String employer_name = request.getParameter("name_org");
		session.setAttribute("employer_name", employer_name);
		session.setAttribute("loc", request.getParameter("loc"));

%>
	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>INFORMATION</h2>
				<p class="text-2"><br><br><br><br><br>A fulltime job requires 30 or more hours of work in a week</p>
				<p class="text-2"><br>Enter the listed salary without the extra bonuses/overtime</p>
				
			</div>
			<form class="form-detail" action="./h1b_control.jsp" method="post" id="myform" onsubmit="">
				<h2>Employment Details</h2>

			
				<div class="form-row">
					<label for="job_title">Job title:</label>
					<input type="text" name="job_title" id="job_title" class="input-text">
				</div>
				<label for="fulltime">Is this a fulltime job?</label>
				<div class="form-group">
						<label for="yes" class="sex">Yes</label>
						
						<div class="form-row form-row-1">	
							<input type="radio" id="yes" name="fulltime" value="yes">
						</div>	
						
						<label for="no">No</label>
						
						<div class="form-row form-row-1">
							<input type="radio" id="no" name="fulltime" value="no">
						</div>
					
				</div>
				<br>


				<div class="form-row">
					<label for="salary">Salary</label>
					<input type="number" name="salary" id="salary" class="input-text">
				</div>

				<div class="form-row">
					<label for="emp_date">Employement date:</label>
					<input type="text" name="emp_date" id="emp_date" class="input-text" required pattern="\d{1,2}/\d{1,2}/\d{4}">
				</div>

				<div class="form-row">
					<label for="income">Annual income:</label>
					<input type="number" name="income" id="income" class="input-text">
				</div>
				
  				
				<br><br>
				

				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Submit">

				</div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

</body>
</html>