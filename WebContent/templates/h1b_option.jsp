<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>New application</h3>
<a href="./h1b_page1.jsp" class="register">Apply for H1B Visa</a><br><br>
<br><br>
<h3>Check status of previous application</h3>
<form class="form-detail" action="./h1b_status.jsp" method="post" id="myform">
	<label for="app_id">Application id</label>
	<input type="text" name="app_id" id="app_id" class="input-text"><br><br>
	<input type="submit" name="register" class="register" value="submit">
</form>
</body>
</html>