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
	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				<h2>Re-issue Passport</h2>
				<p class="text-2"><br>NOTE: Provide the following security and background information. Provide complete and accurate answers to all questions that require an explanation. A visa may not be issued to persons who are within specific categories defined by law as inadmissible to the United States (except when a waiver is obtained in advance). Are any of the following applicable to you? While a YES answer does not automatically signify ineligibility for a visa, if you answer YES you may be required to personally appear before a consular officer
</p><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
					<form class="form-detail" action="./passport_page3.jsp" method="post" id="myform">
											<h2>Previous Passport/ Application Details</h2>
											<label for="pp">Details of latest held/ existing/ lost/ damaged Ordinary Passport/ Identity Certificate</label><br>
											
											<div class="form-row">
												<label for="pno">Passport/ Identity Certificate Number :</label>
												<input type="text" name="pno" id="pno" class="input-text" >
											</div>
											<br>
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
											<br>
											<div class="form-row">
												<label for="dob">Date of Brirth :</label>
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
													<option value="2020">2020</option>
													<option value="2019">2019</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="2016">2016</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>
													<option value="2012">2012</option>
													<option value="2011">2011</option>
													<option value="2010">2010</option>
													<option value="2009">2009</option>
													<option value="2008">2008</option>
													<option value="2007">2007</option>
													<option value="2006">2006</option>
													<option value="2005">2005</option>
													<option value="2004">2004</option>
													<option value="2003">2003</option>
													<option value="2002">2002</option>
													<option value="2001">2001</option>
													<option value="2000">2000</option>
													<option value="1999">1999</option>
													<option value="1998">1998</option>
													<option value="1997">1997</option>
													<option value="1996">1996</option>
													<option value="1995">1995</option>
													<option value="1994">1994</option>
													<option value="1993">1993</option>
													<option value="1992">1992</option>
													<option value="1991">1991</option>
													<option value="1990">1990</option>
													<option value="1989">1989</option>
													<option value="1988">1988</option>
													<option value="1987">1987</option>
													<option value="1986">1986</option>
													<option value="1985">1985</option>
													<option value="1984">1984</option>
													<option value="1983">1983</option>
													<option value="1982">1982</option>
													<option value="1981">1981</option>
													<option value="1980">1980</option>
													<option value="1979">1979</option>
													<option value="1978">1978</option>
													<option value="1977">1977</option>
													<option value="1976">1976</option>
													<option value="1975">1975</option>
													<option value="1974">1974</option>
													<option value="1973">1973</option>
													<option value="1972">1972</option>
													<option value="1971">1971</option>
													<option value="1970">1970</option>
													<option value="1969">1969</option>
													<option value="1968">1968</option>
													<option value="1967">1967</option>
													<option value="1966">1966</option>
													<option value="1965">1965</option>
													<option value="1964">1964</option>
													<option value="1963">1963</option>
													<option value="1962">1962</option>
													<option value="1961">1961</option>
													<option value="1960">1960</option>
													<option value="1959">1959</option>
													<option value="1958">1958</option>
													<option value="1957">1957</option>
													<option value="1956">1956</option>
													<option value="1955">1955</option>
													<option value="1954">1954</option>
													<option value="1953">1953</option>
													<option value="1952">1952</option>
													<option value="1951">1951</option>
													<option value="1950">1950</option>
													<option value="1949">1949</option>
													<option value="1948">1948</option>
													<option value="1947">1947</option>
													<option value="1946">1946</option>
													<option value="1945">1945</option>
													<option value="1944">1944</option>
													<option value="1943">1943</option>
													<option value="1942">1942</option>
													<option value="1941">1941</option>
													<option value="1940">1940</option>
													<option value="1939">1939</option>
													<option value="1938">1938</option>
													<option value="1937">1937</option>
													<option value="1936">1936</option>
													<option value="1935">1935</option>
													<option value="1934">1934</option>
													<option value="1933">1933</option>
													<option value="1932">1932</option>
													<option value="1931">1931</option>
													<option value="1930">1930</option>
													</select>
												</div>
											</div>
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
												<label for="other">Other</label>
													<div class="form-row form-row-1">
														<input type="radio" id="female" name="gender" value="female">
													</div>
											</div>
											<br>
											<div class="form-row">
												<label for="is">Where was the Passport/Travel Document Issued? </label>
												Address : 
												<input type="text" name="c" id="c" class="input-text" placeholder="eg.City,State/Province,Country/Region">										
											</div>
											<br>
											<div class="form-row">
												<label for="zcode">Zip Code :</label>
												<input type="text" name="zcode" id="zcode" class="input-text" >
											</div>
											<br>
											<div class="form-row">
												<label for="mno">Mobile Number :</label>
												<input type="text" name="mno" id="mno" class="input-text" >
											</div>
											<br>
											<div class="form-row">
												<label for="pno">Mailing Address :</label>
												<input type="text" name="addr" id="addr" class="input-text" >
											</div>
											<br>
							
										<div class="form-row-last">
											<input type="submit" name="register" class="register" value="next">
										</div>
					</form>
		</div>
	</div>


</body>
</html>