<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reach Out to Our Institute | Contact Us | SCOPE India</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
.main{
height:500px;
background-color:white;

}
.nav-item{
position:relative;
}
.nav-link::after{
content:'';
position:absolute;
background-color:white;
transform:scaleX(0);
width:100%;
height:2px;
bottom:0;
left:0;
transform-origin:bottom right;
transition:transform 0.25s ease-in;
}
.nav-link:hover::after{
transform:scaleX(1);
transform-origin:bottom left;
}
.profile{
position:absolute;
right:10px;
}
.register{
position:absolute;
right:100px;
background-color:orange;
border-radius:20px;
}
.navbar-nav .register:hover{
background-color:black;
transition:200ms ease-in-out;
}
@media(max-width:600px){
.nav-link::after{
display:none;
}
}
</style>
</head>
<body class="bg-info">
<nav class="navbar navbar-expand-lg navbar-light bg-primary sticky-top">
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item h6">
          <a class="nav-link text-white" aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item h6">
          <a class="nav-link text-white" href="/aboutus">About Us</a>
        </li>
        <li class="nav-item h6">
          <a class="nav-link text-white" href="contact">Contact</a>
        </li>
         <li class="nav-item h6">
          <a class="nav-link text-white" href="courses">Courses</a>
        </li>
        <li class="nav-item h6 profile">
          <a class="nav-link text-white" href="profile">Profile</a>
        </li>
        <li class="nav-item h6 register mt-1 text-center" style="height:30px;width:120px;padding-top:4px">
          <a class="text-white text-decoration-none" href="/">Register Now</a>
        </li>
      </ul>
    </div>
  </div>
  </nav>
  ${message}
<h4 class="display-4">Contact us</h4>
<form action="/contactmail">
<div class="container mt-4 main">
<label class="form-label">Name</label>
<input class="form-control" type="text" name="name" value=${user.fname}&nbsp;${user.lname} />
<label class="form-label">Email</label>
<input class="form-control" type="email" name="email" value=${user.email}>
<label class="form-label">Subject</label>
<input class="form-control" type="text" name="subject" required/>
<label class="form-label">message</label>
<textarea class="form-control" name="message" rows="4" required></textarea>
<input class="form-control btn btn-success mt-3" type="submit" value="Contact"/>
</div>
</form>
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<script
    src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
    crossorigin="anonymous"
  ></script>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"
  ></script>
</body>
</html>