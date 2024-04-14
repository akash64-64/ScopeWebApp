<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<body class="bg-primary">
<div class="container border border-white"style="height:500px;width:500px">
<form action="verify-otp" method="post">
	<label class="form-label"><strong>Email</strong></label>
	<input class="form-control" type="email" name="email" value="${email}"/>
	<label class="form-label"><strong>Enter OTP</strong></label>
	<input class="form-control" type="number" name="otp"/>
	<button class="btn btn-success form-control" type="submit">Verify</button>
</form>
</div>
</body>
</html>