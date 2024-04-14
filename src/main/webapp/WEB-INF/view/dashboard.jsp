<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${user.fname}'s Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
.one img{
height:100%;
width:100%;
background-size:cover;
}
#main{
height:100%;
width:100%;
background-color:rgba(128, 0, 128,0.7);
}
body{
background-image:url("https://img.freepik.com/free-photo/beautiful-view-mountains-covered-snow-annapurna-conservation-area-chhusang-nepal_181624-15705.jpg?t=st=1712900170~exp=1712903770~hmac=8b3196d70aa542d1387ec01815dcf4d531d939920890b03e426dcb71b727a837&w=740");
background-size:cover;
 background-attachment: fixed;
}
.sub1 input{
border:none;
outline:none;
}
.navbar-nav .nav-item .nav-link::before{
content:'';
color:violet;
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
@media(max-width:600px){
.nav-link::after{
display:none;
}
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
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary sticky-top">
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
<div id=main class="">
<form action="editform">
<div class="row">
<div class="col-md-6 border border-white sub1" style="width:50%;height:700px">
<div class=container>
<div class="align-start border border-white rounded-circle one ms-3 mt-3" style="width:150px;height:150px">
<img class="rounded-circle" src="data:image/png;base64,${avatar}"/>
</div>
<label class="form-label mt-5"><h3 class="text-info">Name:</h3></label>
<input class="text-white h1 ms-3 mt-2" style="background-color:rgba(128, 0, 128,0);height:50px;width:80%" value="${user.fname} ${user.lname}" readonly/>
<label class="form-label"><h3 class="text-info">Email:</h3></label>
<input class="text-white h3 ms-3" style="background-color:rgba(128, 0, 128,0);height:50px;width:80%" name="mail" value="${user.email}" readonly/>
<label class="form-label"><h3 class="text-info">Phone:</h3></label>
<input class="text-white h3 ms-3" style="background-color:rgba(128, 0, 128,0);height:50px;width:70%" value="${user.number}" readonly/>
<label class="form-label"><h3 class="text-info">Gender:</h3></label>
<input class="text-white h3 ms-3" style="background-color:rgba(128, 0, 128,0);height:50px;width:50%" value="${user.gender}" readonly/>

</div>
</div>
<div class="col-md-6 border border-white sub1 position-relative" style="width:50%;height:700px">
<div class="container">
<label class="form-label mt-5"><h3 class="text-info">DoB:</h3></label>
<input class="text-white h3" style="background-color:rgba(128, 0, 128,0);height:50px;width:80%" value="${user.dob}" readonly/>
<label class="form-label"><h3 class="text-info">Hobby:</h3></label>
<input class="text-white h3 " style="background-color:rgba(128, 0, 128,0);height:50px;width:70%" value="${user.hobby}" readonly/>
<label class="form-label"><h3 class="text-info">Country:</h3></label>
<input class="text-white h3" style="background-color:rgba(128, 0, 128,0);height:50px;width:50%" value="${user.country}" readonly/>
<br/>
<label class="form-label"><h3 class="text-info">State:</h3></label>
<input class="text-white h3" style="background-color:rgba(128, 0, 128,0);height:50px;width:50%" value="${user.state}" readonly/>
<br/>
<label class="form-label"><h3 class="text-info">City:</h3></label>
<input class="text-white h3" style="background-color:rgba(128, 0, 128,0);height:50px;width:50%" value="${user.city}" readonly/>
<div class="position-absolute bottom-75 end-10">
<button class="btn btn-warning" type="submit">Edit form</button>
<a href="/logout" class="btn btn-danger text-light">log out</a>
</div>
</div>
</div>
</div>
</form>
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
</body>
</html>