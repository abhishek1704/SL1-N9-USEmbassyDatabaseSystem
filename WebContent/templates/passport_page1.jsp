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
    <link rel="stylesheet" href="../css/style1.css"><title>Insert title here</title>
</head>
<body class="form-v4">
	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>Re-issue Passport</h2>
				<p class="text-2"><br>NOTE: Provide the following security and background information. Provide complete and accurate answers to all questions that require an explanation. A visa may not be issued to persons who are within specific categories defined by law as inadmissible to the United States (except when a waiver is obtained in advance). Are any of the following applicable to you? While a YES answer does not automatically signify ineligibility for a visa, if you answer YES you may be required to personally appear before a consular officer
</p><br><br><br><br><br><br><br><br><br>
				<p><br><br>Help:  <b>Type of Application and Booklet </b>
<table border=3>
  <tr>
    <th>Types of Passport</th>
    <th>36 Pages</th>
    <th>60 Pages</th>
  </tr>
  <tr>
    <td>New / Renewal of Passport<br>(Normal, home service)</td>
    <td>Rs. 3,999</td>
    <td>Rs. 4,666</td>
  </tr>
  <tr>
    <td>New / Reissue of Passport <br>(Tatkal, home service)</td>
    <td>Rs. 5,999</td>
    <td>Rs. 6,666</td>
  </tr>
  <tr>
    <td>New / reissue for minor below 15 yrs <br>(Normal, home service)</td>
    <td>Rs. 3,499</td>
    <td>NA</td>
  </tr>
  <tr>
    <td>New / reissue for minor below 15 yrs <br>(Tatkal, home service)</td>
    <td>Rs. 5,499</td>
    <td>NA</td>
  </tr>
</table>
</p>
			</div>
				<form class="form-detail" action="./passport_page2.jsp" method="post" id="myform">
											<h2>Service Required</h2>
											<label for="pp">If re-issue, specify reason(s);</label><br>
											
											<div class="form-row">
												<label for="pno">Validity Expired within 3 years/ Due to Expire :</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Validwtn3" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Validwtn3" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Exhaustion of Pages :</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Exhaust" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Exhaust" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Validity Expired more than 3 years ago :</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Validmtn3" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Validmtn3" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Lost Passport :</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Lost" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Lost" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Change in Existing Personal Particulars :</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Change" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Change" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Damaged Passport :</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Damage" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Damage" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Type of Application :</label>
												
												<div class="form-group">
													<label for="Normal" class="Normal"> Normal</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="Normal" name="Type" value="Normal">
													</div>	
													
													<label for="Tatkaal">Tatkaal</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="Tatkaal" name="Type" value="Tatkaal">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Type of Passport Booklet :</label>
												
												<div class="form-group">
													<label for="Yes" class="yes"> 36 pages</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="YES1" value="YES">
													</div>	
													
													<label for="No">60 pages</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="No1" value="No">
													</div> 
											     </div>	
											</div>
											<br><div class="form-row">
												<label for="pno">Validity Required :</label>
												
												<div class="form-group">
													<label for="Yes" class="yes"> 10 years</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Validyrs" value="YES">
													</div>	
													
													<label for="No">Upto age 18<br>(For minors)</label>
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Validyrs" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											
											
												
											<br><br><br>

										<div class="form-row-last">
											<input type="submit" name="register" class="register" value="next">
										</div>
				</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>

</body>
</html>