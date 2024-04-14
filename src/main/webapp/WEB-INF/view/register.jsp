<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.main{
background-color:rgba(255,255,255,0.5);
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
.main {
height: 600px;
} 
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-select-country@4.2.0/dist/css/bootstrap-select-country.min.css" rel="stylesheet">
</head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<body class="bg-image bg-primary" style="background-image:url('https://mdbootstrap.com/img/Photos/Others/images/76.jpg');height:100vh;background-size:cover;background-attachment:fixed">
<nav class="navbar navbar-expand-lg navbar-light bg-primary opacity-50 sticky-top">
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item h6">
          <a class="nav-link text-white" aria-current="page" href="/home">Home</a>
        </li>
        <li class="nav-item h6">
          <a class="nav-link text-white" href="/aboutus">About Us</a>
        </li>
        <li class="nav-item h6">
          <a class="nav-link text-white" href="/contact">Contact</a>
        </li>
        <li class="nav-item h6">
          <a class="nav-link text-white" href="/courses">Courses</a>
        </li>
        <li class="nav-item h6 profile">
          <a class="nav-link text-white" href="/profile">Profile</a>
        </li>
        <li class="nav-item h6 register mt-1 text-center" style="height:30px;width:120px;padding-top:4px">
          <a class="text-white text-decoration-none" href="/">Register Now</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="d-flex justify-content-center">
<h1 class="display-1 text-white">Registration</h1>
</div>
<div class="d-flex justify-content-center">
<h3 class="display-4 text-white">It's just a matter of 80 days to an IT job!</h3>
</div>
<div class="container mt-5 main" style="height:500px">
<form action="send" enctype="multipart/form-data" method="post">
<div class="row">
<div class="col" style="height:500px;width:50%">

<label class="form-label"><strong>First Name</strong></label>
<input class="form-control" type="text" name="fname" required/>
<label class="form-label"><strong>Last Name</strong></label>
<input class="form-control" type="text" name="lname" required/><br/>
<label class="form-label"><strong>Gender</strong></label>
<div class="form-check form-check-inline">
<input class="form-check-input ms-1" type="radio" name="gender" value="male"/>
<label class="form-check-label">Male</label></div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="radio" name="gender" value="female"/>
<label class="form-check-label">Female</label></div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="radio" name="gender" value="others"/>
<label class="form-check-label">Others</label></div><br/>
<label class="form-label"><strong>Date of Birth</strong></label>
<input class="form-control" type="date" name="dob"/>
<label class="form-label"><strong>Email</strong></label>
<input class="form-control" type="email" name="email" required/>
<label class="form-label"><strong>Phone Number</strong></label>
<input class="form-control" type="tel" name="number" required/>
</div>
<div class="col ms-2" style="height:500px;width:50%">
<label class="form-label"><strong>Country</strong></label>
<select class=" form-control" id="countySel" name="country">
<option value="" selected="selected">Select Country</option>
</select> 

<label class="form-label"><strong>State</strong></label>
<select class=" form-control" id="stateSel" name="state">
<option value="" selected="selected">Select State</option>
</select> 

<label class="form-label"><strong>City</strong></label>
<select class=" form-control" id="districtSel" name="district">
<option value="" selected="selected">Select City</option>
</select> 

<label class="fprm-label"><strong>Hobbies</strong></label><br/>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Reading"/>
<label class="form-label">Reading</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Movies"/>
<label class="form-label">Movies</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Cooking"/>
<label class="form-label">Cooking</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Photography"/>
<label class="form-label">Photography</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Cycling"/>
<label class="form-label">Cycling</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Games"/>
<label class="form-label">Games</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Painting"/>
<label class="form-label">Painting</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Traveling"/>
<label class="form-label">Traveling</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby"  value="Music"/>
<label class="form-label">Music</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby"  value="Gardening"/>
<label class="form-label">Gardening</label>
</div>
<label class="form-label"><strong>Upload Avatar</strong></label>
<input class="form-control" type="file" name="avatar"/>
<button class="btn btn-success form-control mt-4" type="submit">Complete Registration</button>
Already have an account?<a href="/reg">Sign in</a>

</div>
</div>
</form>
<div id="success"></div>
</div>
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
  <script src="js/Country+State+District-City-Data.js/"></script>

</body>
</html>