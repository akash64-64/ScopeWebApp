<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<body>
<div class="container border border-dark" style="height:400px;width:400px">
<form action="set-password" method="post">
	<label class="form-label"><strong>Email</strong></label>
	<input class="form-control" type="email" name="email" value="${email}"/>
<label class="form-label"><strong>Set Password</strong></label>
<input class="form-control" name="pwd" type="password"/>
<label class="form-label"><strong>Confirm Password</strong></label>
<input class="form-control" name="confirmpwd" type="password"/>
<button class="btn btn-success form-control" type="submit">Confirm</button>
</form>

</div>
</body>
</html>