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
    <link rel="stylesheet" href="../css/style1.css"><title>Insert title here</title><title>Insert title here</title>
</head>
<body class="form-v4">


<% 

		
		session.setAttribute("first_name", request.getParameter("first_name"));
		session.setAttribute("mid_name", request.getParameter("middle_name"));
		session.setAttribute("last_name", request.getParameter("last_name"));

		String d = request.getParameter("day");
		String m = request.getParameter("month");
		String y = request.getParameter("year");
		String dob = y + "-" + m + "-" + d;

		session.setAttribute("dob",dob);

		session.setAttribute("zcode", request.getParameter("zcode"));
		session.setAttribute("addr", request.getParameter("addr"));
%>



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
										<form class="form-detail" action="./passport_control.jsp" method="post" id="myform" onsubmit="validateCaptcha()">
											<h2>Other details</h2>
											
											<div class="form-row">
												<label for="pno">Have you ever been charged with criminal proceedings or any arrest warrant/ summon Yes No pending before a court in India?</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="criminal" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="criminal" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Have you at any time during the period of 5 years immediately preceding the date of this application been convicted by a court in India for any criminal offence & sentenced to imprisonment for two years or more?</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="imprison" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="imprison" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Have you ever been refused or denied passport?</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="deny" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="deny" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Has your Passport ever been Impounded or Revoked?</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Revoke" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Revoke" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Have you ever applied for/ been granted political asylum to/ by any foreign country?</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="foreign" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="foreign" value="No">
													</div> 
											     </div>	
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Have you ever returned to India on Emergency Certificate (EC) or were ever deported or repatriated?</label>
												<div class="form-group">
													<label for="Yes" class="yes"> Yes</label>
													
													<div class="form-row form-row-1">	
														<input type="radio" id="YES1" name="Emergency" value="YES">
													</div>	
													
													<label for="No">No</label>
													
													<div class="form-row form-row-1">
														<input type="radio" id="No1" name="Emergency" value="No">
													</div> 
											     </div>	
											</div>
											<br>
													
											<br><br><br>

											<div class="form-row-last">
												<input type="submit" name="save" class="register" value="Save">

											</div>
										</form>
		</div>
	</div>
	
</body>
</html>