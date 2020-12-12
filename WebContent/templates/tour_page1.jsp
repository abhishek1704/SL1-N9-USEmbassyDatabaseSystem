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
    <link rel="stylesheet" href="../css/style1.css"/>
</head>
<body class="form-v4">

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


%>

	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>INFORMATION</h2>
				<p class="text-1">Enter the name as listed in your passport. If only one name is listed in your passport, enter that name.</p>
				<p class="text-2"><br><br><br><br><br><br><br><br>Enter as per your birth certificate.If day or month is unknown, enter as shown in the passport. Format: dd/mm/yyyy</p>
				<p class="text-2"><br><br><br><br><br><br><br>Your National ID Number is a unique number that your government provides. The U.S. 
				Government provides unique numbers to those who seek employment (Social Security Number) or pay taxes (Taxpayer ID). </p>
			</div>
										<form class="form-detail"  method="post" id="myform" action="./tour_page2.jsp" target="#">
											<h2>Personal Information</h2>
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
											<select name="cars" id="cars">
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
												<label for="dob">Date of Birth:</label>
												<input type="text" name="dob" id="dob" class="input-text" required pattern="\d{1,2}/\d{1,2}/\d{4}">
											</div>
											<div class="form-row">
												<label for="pob">Place of Birth:</label>
												<input type="text" name="pob" id="pob" class="input-text">
											</div>
											
											<label for="origin">Country/Region of Origin:</label>
											
											<select name="country" id="country">
											<!-- ASIAN  -->
												<option value="na">--Select one--</option>
												<option value="AF">Afghanistan</option>
												<option value="AM">Armenia</option>
												<option value="AZ">Azerbaijan</option>
												<option value="BH">Bahrain</option>
												<option value="BD">Bangladesh</option>
												<option value="BT">Bhutan</option>
												<option value="IO">British Indian Ocean Territory</option>
												<option value="BN">Brunei Darussalam</option>
												<option value="KH">Cambodia</option>
												<option value="CN">China</option>
												<option value="CX">Christmas Island</option>
												<option value="CC">Cocos (Keeling) Islands</option>
												<option value="GE">Georgia</option>
												<option value="HK">Hong Kong</option>
												<option value="IN">India</option>
												<option value="ID">Indonesia</option>
												<option value="IR">Iran</option>
												<option value="IQ">Iraq</option>
												<option value="IL">Israel</option>
												<option value="JP">Japan</option>
												<option value="JO">Jordan</option>
												<option value="KZ">Kazakhstan</option>
												<option value="KP">Korea, Democratic People's Republic of</option>
												<option value="KR">Korea, Republic of</option>
												<option value="KW">Kuwait</option>
												<option value="KG">Kyrgyzstan</option>
												<option value="LA">Lao</option>
												<option value="LB">Lebanon</option>
												<option value="MY">Malaysia</option>
												<option value="MV">Maldives</option>
												<option value="MN">Mongolia</option>
												<option value="MM">Myanmar (Burma)</option>
												<option value="NP">Nepal</option>
												<option value="OM">Oman</option>
												<option value="PK">Pakistan</option>
												<option value="PH">Philippines</option>
												<option value="QA">Qatar</option>
												<option value="RU">Russian Federation</option>
												<option value="SA">Saudi Arabia</option>
												<option value="SG">Singapore</option>
												<option value="LK">Sri Lanka</option>
												<option value="SY">Syria</option>
												<option value="TW">Taiwan</option>
												<option value="TJ">Tajikistan</option>
												<option value="TH">Thailand</option>
												<option value="TP">East Timor</option>
												<option value="TM">Turkmenistan</option>
												<option value="AE">United Arab Emirates</option>
												<option value="UZ">Uzbekistan</option>
												<option value="VN">Vietnam</option>
												<option value="YE">Yemen</option>
											
																
											</select>
											
											<br><br><br>
											<div class="form-row">
												<label for="nid">National Identification Number:</label>
												<input type="text" name="nid" id="nid" class="input-text" >
											</div>	
											
											
												
											<br>												
											

											<div class="form-row-last">
												
												<input type="submit" name="next" class="register" value="Next" >

											</div>
										</form>
		</div>
	</div>
<!--	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	<script>
		// just for the demos, avoids form submit
		jQuery.validator.setDefaults({
		  	debug: true,
		  	success:  function(label){
        		label.attr('id', 'valid');
   		 	},
		});
		$( "#myform" ).validate({
		  	rules: {
			    password: "required",
		    	comfirm_password: {
		      		equalTo: "#password"
		    	}
		  	},
		  	messages: {
		  		first_name: {
		  			required: "Please enter a firstname"
		  		},
		  		last_name: {
		  			required: "Please enter a lastname"
		  		},
		  		dob: {
		  			required: "Please enter your date of birth"
		  		},
		  		
		  	}
		});
	</script>  -->
</body>
</html>