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
    <link rel="stylesheet" href="../css/style1.css">
</head>
<body class="form-v4">
<% 
		String first_name = request.getParameter("first_name");
		String middle_name = request.getParameter("middle_name");
		String last_name = request.getParameter("last_name");
		
		session.setAttribute("fullName", first_name + " " + last_name);
		session.setAttribute("dob", request.getParameter("dob"));
		session.setAttribute("Nat", request.getParameter("nationality"));
		session.setAttribute("addr", request.getParameter("ben_addr"));

		%>

	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>INFORMATION</h2>
				<p class="text-1">Enter the name as listed in your passport. If only one name is listed in your passport, enter that name.</p>
				<p class="text-2"><br><br>Enter as listed in registration documents</p>
				
			</div>
			<form class="form-detail" action="./h1b_page3.jsp" method="post" id="myform">
				<h2>Petitioner Information</h2>
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

			
				<div class="form-row">
					<label for="name_org">Name of the organization:</label>
					<input type="text" name="name_org" id="name_org" class="input-text">
				</div>
				<label for="uni">Is this organization an university?</label>
				<div class="form-group">
						<label for="yes" class="sex">Yes</label>
						
						<div class="form-row form-row-1">	
							<input type="radio" id="yes" name="uni" value="yes">
						</div>	
						
						<label for="no">No</label>
						
						<div class="form-row form-row-1">
							<input type="radio" id="no" name="uni" value="no">
						</div>
					
				</div>
				<br>

				<div class="form-row">
					<label for="loc">Address</label>
					<input type="text" name="loc" id="loc" class="input-text">
				</div>

				<div class="form-row">
					<label for="company_phone">Phone number</label>
					<input type="number" name="company_phone" id="company_phone" class="input-text">
				</div>

				<label for="employees">No. of employees:</label>
  				<select name="employees" id="employees">
    					<option value="na">--Select one--</option>
    					<option value="fifty">50</option>
    					<option value="hundred">50-100</option>
    					<option value="thousand">100-1000</option>
    					<option value="five_thousand">1000-5000</option>
    					<option value="more">>5000</option>
    					
  				</select>
				<br><br>
				

				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Next">

				</div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

</body>
</html>