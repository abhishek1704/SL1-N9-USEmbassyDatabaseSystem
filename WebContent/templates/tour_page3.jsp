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


	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>INFORMATION</h2><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<!--			<p class="text-1">Enter the name as listed in your passport. If only one name is listed in your passport, enter that name.</p>
				<p class="text-2"><br><br>Enter as per your birth certificate</p> -->
				<p class="text-2"><br><br><br><br><br><br><br><br><br><br>You must provide a primary phone number. The primary phone number should be the phone number at which you are most likely to be reached; this could be a land line or a cellular/mobile number. 
				If you have an additional land line or a cellular/mobile number please list that as your secondary phone number. </p>
		<br><br>You must provide an email address. The email address you provide will be used for correspondence purposes. Provide an email address that is secure and to which you have reasonable access. 

			</div>
										<form class="form-detail"action="./tour_page4.jsp" target="#" method="post" id="myform">
											<h2>Address and Phone Information</h2>
											
											
											
											<h3><label for="addr">Home Address </label></h3>
											<br>
											<label for="sa">Street Address (line 1)</label>
												<input type="text" name="sa1" id="sa1" class="input-text" >
												<br>
												<label for="sa">Street Address (line 2) optional</label>
												<input type="text" name="sa2" id="sa2" class="input-text" >
												<br>
												<label for="c">City</label>
												<input type="text" name="c" id="c" class="input-text" >
												<br>
												<label for="s">State</label>
												<input type="text" name="s" id="s" class="input-text" >
												
												<br>
												
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
											<br><br>
											
												<br><br>
											<label for="c">Primary Phone Number</label>
												<input type="text" name="p" id="p" class="input-text" >
														<br><br><br><br>
											<label for="e">Email Address </label>
												<input type="text" name="e" id="e" class="input-text" >
														<br><br>
											<br><br><br><br>														
											
											

											<div class="form-row-last">
									<!--			<input type="submit" name="back" class="register" value="Back" >
												<input type="submit" name="save" class="register" value="Save"> -->
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