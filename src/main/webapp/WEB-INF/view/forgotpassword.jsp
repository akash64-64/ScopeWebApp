<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<div class="container" style="height:200px; width:300px">
		<form action="forgotpassword">
			<label class="form-label">Email</label>
			<input class="form-control" type="email" name="mail"/>
			<br/>
			<input class="form-control btn btn-success" type="submit" value="Send Otp"/>
		</form>
	</div>
</body>
</html>