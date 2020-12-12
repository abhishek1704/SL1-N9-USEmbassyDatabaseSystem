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
		String first_name = request.getParameter("first_name");
		String middle_name = request.getParameter("middle_name");
		String last_name = request.getParameter("last_name");
		
		session.setAttribute("fullName", first_name + last_name);
		session.setAttribute("dob", request.getParameter("dob"));
		session.setAttribute("nid", request.getParameter("nid"));

%>






	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>INFORMATION</h2>
	<!--			<p class="text-1">Enter the name as listed in your passport. If only one name is listed in your passport, enter that name.</p>
				<p class="text-2"><br><br>Enter as per your birth certificate</p>
				<p class="text-2"><br><br><br><br>If day or month is unknown, enter as shown in the passport. Format: mm/dd/yyyy</p>
		-->		
			</div>
										<form class="form-detail" action="./tour_page3.jsp" target="#" method="post" id="myform">
											<h2>Travel Information</h2>
											<label for="doa">Date of Arrival in U.S.</label>
											<div class="form-group">
												
												<div class="form-row form-row-1">
													
													<select name="day" id="day">
													
											<option value="1">01</option>
											<option value="2">02</option>
											<option value="3">03</option>
											<option value="4">04</option>
											<option value="5">05</option>
											<option value="6">06</option>
											<option value="7">07</option>
											<option value="8">08</option>
											<option value="9">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											</select>
											
													</div>
												<div class="form-row form-row-1 ">
													
										<select name="month" id="month">
										<option value="January">Jan</option>
										<option value="Feb">Feb</option>
										<option value="Mar">Mar</option>
										<option value="Apr">Apr</option>
										<option value="May">May</option>
										<option value="Jun">Jun</option>
										<option value="Jul">Jul</option>
										<option value="Aug">Aug</option>
										<option value="Sep">Sep</option>
										<option value="Oct">Oct</option>
										<option value="Nov">Nov</option>
										<option value="Dec">Dec</option>
										</select>
												</div>
												<div class="form-row form-row-1 ">
													
													
													<select name="year" id="year">
													<option value="20">2020</option>
													<option value="21">2021</option>
													<option value="22">2022</option>
													</select>
												</div>
												
											</div>
											<br>
											<div class="form-row">
												<label for="dob">Arrival City</label>
												<input type="text" name="acity" id="acity" class="input-text" >
											</div>
											
											<label for="doa">Date of Departure from U.S.</label>
											<div class="form-group">
												
												<div class="form-row form-row-1">
													
													<select name="day" id="day">
													
											<option value="1">01</option>
											<option value="2">02</option>
											<option value="3">03</option>
											<option value="4">04</option>
											<option value="5">05</option>
											<option value="6">06</option>
											<option value="7">07</option>
											<option value="8">08</option>
											<option value="9">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											</select>
											
													</div>
												<div class="form-row form-row-1 ">
													
										<select name="month" id="month">
										<option value="January">Jan</option>
										<option value="Feb">Feb</option>
										<option value="Mar">Mar</option>
										<option value="Apr">Apr</option>
										<option value="May">May</option>
										<option value="Jun">Jun</option>
										<option value="Jul">Jul</option>
										<option value="Aug">Aug</option>
										<option value="Sep">Sep</option>
										<option value="Oct">Oct</option>
										<option value="Nov">Nov</option>
										<option value="Dec">Dec</option>
										</select>
												</div>
												<div class="form-row form-row-1 ">
													
													
													<select name="year" id="year">
													<option value="20">2020</option>
													<option value="21">2021</option>
													<option value="22">2022</option>
													</select>
												</div>
												
											</div>
											<br>
										
										<div class="form-row">
												<label for="dob">Departure city</label>
												<input type="text" name="dcity" id="dcity" class="input-text" >
											</div>
									
									
									
									
									
											
											<label for="entity">Person/Entity Paying for Your Trip :</label>
											<select name="payee" id="payee">
													<option value="na">--Select one--</option>
													<option value="married">Self</option>
													<option value="commonlaw">Other Person</option>
													<option value="civilunion">Other Company/Organization</option>
													
											</select>
											<br>
											<br>
											
											<h3><label for="addr">Address Where You Will Stay in the U.S.</label></h3>
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
												<select name="state" id="state">
												<option value="na">--Select one--</option>
													<option value="AL">Alabama</option>
													<option value="AK">Alaska</option>
													<option value="AZ">Arizona</option>
													<option value="AR">Arkansas</option>
													<option value="CA">California</option>
													<option value="CO">Colorado</option>
													<option value="CT">Connecticut</option>
													<option value="DE">Delaware</option>
													<option value="DC">District Of Columbia</option>
													<option value="FL">Florida</option>
													<option value="GA">Georgia</option>
													<option value="HI">Hawaii</option>
													<option value="ID">Idaho</option>
													<option value="IL">Illinois</option>
													<option value="IN">Indiana</option>
													<option value="IA">Iowa</option>
													<option value="KS">Kansas</option>
													<option value="KY">Kentucky</option>
													<option value="LA">Louisiana</option>
													<option value="ME">Maine</option>
													<option value="MD">Maryland</option>
													<option value="MA">Massachusetts</option>
													<option value="MI">Michigan</option>
													<option value="MN">Minnesota</option>
													<option value="MS">Mississippi</option>
													<option value="MO">Missouri</option>
													<option value="MT">Montana</option>
													<option value="NE">Nebraska</option>
													<option value="NV">Nevada</option>
													<option value="NH">New Hampshire</option>
													<option value="NJ">New Jersey</option>
													<option value="NM">New Mexico</option>
													<option value="NY">New York</option>
													<option value="NC">North Carolina</option>
													<option value="ND">North Dakota</option>
													<option value="OH">Ohio</option>
													<option value="OK">Oklahoma</option>
													<option value="OR">Oregon</option>
													<option value="PA">Pennsylvania</option>
													<option value="RI">Rhode Island</option>
													<option value="SC">South Carolina</option>
													<option value="SD">South Dakota</option>
													<option value="TN">Tennessee</option>
													<option value="TX">Texas</option>
													<option value="UT">Utah</option>
													<option value="VT">Vermont</option>
													<option value="VA">Virginia</option>
													<option value="WA">Washington</option>
													<option value="WV">West Virginia</option>
													<option value="WI">Wisconsin</option>
													<option value="WY">Wyoming</option>
												</select>	
												
												<br>
												<br>
												
											<label for="c">Zip Code (if known)</label>
												<input type="text" name="z" id="z" class="input-text" >
											
											
											
											
											
												
											<br><br>												
											

											<div class="form-row-last">
										<!--		<input type="submit" name="back" class="register" value="Back" >
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