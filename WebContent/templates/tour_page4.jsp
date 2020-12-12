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
		String sa1 = request.getParameter("sa1");
		String c = request.getParameter("c");
		String s = request.getParameter("s");
		
		session.setAttribute("addr", sa1+", "+c+", "+s);
		session.setAttribute("country", request.getParameter("country"));

%>






	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>INFORMATION</h2>
				<p class="text-2"><br><br><br><br>Help:    Passport/Travel Document Number 
Enter the information on the travel document you will be using when traveling to the U.S. Your travel document should be a valid, unexpired passport or other valid, unexpired documentation that is sufficient to establish your identity and nationality. 
</p><br><br><br><br><br><br><br><br><br><br><br><br>
				<p class="text-2"><br><br>Help:  Expiration Date 

In most cases your passport/Travel Document must have at least six months of validity beyond the date of your visa application and/or your arrival in the United States. 
</p>
				
			</div>
										<form class="form-detail" action="./tour_control.jsp" target="#" method="post" id="myform">
											<h2>Passport and Security Information</h2>
											<label for="pp">Passport/Travel Document Type</label>
											
											<select name="ptype" id="ptype">
											<option value="na">--select one--</option>
											<option value="1">Regular</option>
											<option value="2">Official</option>
											<option value="3">Diplomatic</option>
											<option value="4">Other</option>
											
											</select>
											<br><br><br><br>
											<div class="form-row">
												<label for="pno">Passport/Travel Document Number</label>
												<input type="text" name="pno" id="pno" class="input-text" >
											</div>
													
													
											<div class="form-row">
												<label for="is">Where was the Passport/Travel Document Issued? </label>
												<br>
												City 
												<input type="text" name="c" id="c" class="input-text" >
												State/Province
												<input type="text" name="s" id="s" class="input-text" >												
												Country/Region
												<input type="text" name="country" id="country" class="input-text" >												
											</div>
												
												
											
											
										<label for="doa">Issuance Date</label>
											<div class="form-group">
												
												<div class="form-row form-row-1">
													
													<select name="id" id="id">
													
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
													<option value="10">2010</option>
													<option value="11">2011</option>
													<option value="12">2012</option>
													<option value="13">2013</option>
													<option value="14">2014</option>
													<option value="15">2015</option>
													<option value="16">2016</option>
													<option value="17">2017</option>
													<option value="18">2018</option>
													<option value="19">2019</option>
													<option value="20">2020</option>
													</select>
												</div>
												
											</div>
											<br>
											<label for="doa">Expiration Date</label>
											<div class="form-group">
												
												<div class="form-row form-row-1">
													
													<select name="id" id="id">
													
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
													<option value="10">2020</option>
													<option value="11">2021</option>
													<option value="12">2022</option>
													<option value="13">2023</option>
													<option value="14">2024</option>
													<option value="15">2025</option>
													<option value="16">2026</option>
													<option value="17">2027</option>
													<option value="18">2028</option>
													<option value="19">2029</option>
													<option value="20">2030</option>
													</select>
												</div>
												
											</div>
										
											<br>	<br>	<br>	
											<h2>Security Information</h2>
										<label for="PLANS">Have you ever been arrested or convicted for any offense or crime, 
										even though subject of a pardon, amnesty, or other similar action? </label>
											<div class="form-group">
													<label for="Yes" class="yes">Yes</label>
													
													
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES3" name="YES3" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No3" name="No3" value="No">
													</div> 
											</div>	
										<br>	<br>	<br>
									<label for="PLANS">Have you ever violated, or engaged in a conspiracy to violate, 
												any law relating to controlled substances?  </label>
											<div class="form-group">
													<label for="Yes" class="yes">Yes</label>
													
													
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES4" name="YES4" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No4" name="No4" value="No">
													</div> 
											</div>	
								
								
								
											
											
											
												
											<br><br><br><br><br><br>												
											

											<div class="form-row-last">
										<!--		<input type="submit" name="back" class="register" value="Back" >
												<input type="submit" name="save" class="register" value="Save">  -->
												<input type="submit" name="next" class="register" value="Submit" >

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