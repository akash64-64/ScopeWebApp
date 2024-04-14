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
<nav class="navbar navbar-expand-lg navbar-light bg-primary sticky-top">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item h6">
          <a class="nav-link text-white" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item h6">
          <a class="nav-link text-white" href="#">About Us</a>
        </li>
        <li class="nav-item h6">
          <a class="nav-link text-white" href="#">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container border border-white mt-2 bg-image" style="height:500px;width:500px;background-image:url('/image/login.jpg');background-size:cover;background-attachment:fixed">
	<form action="success" method="post">
		<label class="form-label" style="margin-top:100px"><strong>Email</strong></label>
		<input class="form-control" type="email" name="email"/>
		<button class="btn btn-success form-control mt-3" type="submit">Get Otp</button>
	</form>
</div>
</body>
</html>