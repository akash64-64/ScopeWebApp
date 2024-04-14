<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log in</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
.container{
background-color:rgba(0,0,0,0.5);
}
</style>
</head>
<body>
<div class="border border-dark w-100 bg-image z-0" style="height:700px;background-image:url('/image/log.jpg');background-size:cover;background-attachment:fixed">
<h3 class="text-center text-white mt-5">LOG IN</h3>
<div class="container mt-3 z-1" style="height:350px;width:500px">
<form action="logincontroller" method="post">
<label class="form-label text-white mt-3"><strong>Email</strong></label>
<input class="form-control" type="email" name="email"/>
<label class="form-label text-white mt-3"><strong>Password</strong></label>
<input class="form-control" type="password" name="pass"/>
<input class="form-control btn btn-primary mt-4" type="submit" value="login" />
<input class="form-check-input" type="checkbox" name="cookie"/>
<label class="form-check-label text-white">Keep me logged in</label>
<p class="text-end"><a href="forgotpass">forgot password?</a></p>
<p class="text-end"><a href="/" class="text-light">Create account</a></p>
</form>
</div>
</div>
</body>
</html>