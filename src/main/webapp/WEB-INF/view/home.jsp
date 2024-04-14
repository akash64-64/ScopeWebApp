<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Learn Software, Networking, Testing and Cloud courses | Online & Offline</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
.one{
background-image:url('https://img.freepik.com/free-vector/gradient-connection-background_23-2150490688.jpg?t=st=1712899649~exp=1712903249~hmac=0ff80c12c22bbb6fbf8956d8b790936f2030d0b88ab82741ded887c58139c3e4&w=826');
background-size:cover;
height:700px;
background-attachment:fixed;
position:relative:
}
.image{
height:200px;
width:500px;
position:absolute;
top:40%;
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
          <a class="nav-link text-white" aria-current="page" href="#">Home</a>
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
<div class="one w-100 d-flex justify-content-center">
<img src="https://scopeindia.org/images/scope-india-logo-home-page.png" alt="scope-logo" class="image"/>
</div>
<div class="bg-primary">
<div class="container">
<div class="row">
<div class="owl-carousel owl-theme">
<div class="item">
<div class="card">
<div class="card-body ">
<img src="https://scopeindia.org/images/courses/scope-india-mean-mern-stack-course.jpg" class="card-image-top" alt="mean-mern" width="600px"/>
</div>
</div>
</div>

<div class="item">
<div class="card">
<div class="card-body" >
<img src="https://scopeindia.org/images/courses/scope-india-aws-certification-course-(1).jpg" class="card-image-top" alt="aws" width="600px"/>
</div>
</div>
</div>

<div class="item">
<div class="card">
<div class="card-body">
<img src="https://scopeindia.org/images/courses/scope-india-azure-certification-course.jpg" class="card-image-top" alt="azure" width="600px"/>
</div>
</div>
</div>


<div class="item">
<div class="card">
<div class="card-body">
<img src="https://scopeindia.org/images/courses/scope-india-java-full-stack-course%20(1).jpg" class="card-image-top" alt="java" width="600px"/>
</div>
</div>
</div>

<div class="item">
<div class="card">
<div class="card-body">
<img src="https://scopeindia.org/images/DEVOPS-SCOPE_INDIA.jpg" class="card-image-top" alt="php" width="600px"/>
</div>
</div>
</div>

<div class="item">
<div class="card">
<div class="card-body">
<img src="https://scopeindia.org/images/courses/scope-india-python-full-stack-course%20(1).jpg" class="card-image-top" alt="python" width="600px"/>
</div>
</div>
</div>

<div class="item">
<div class="card">
<div class="card-body">
<img src="https://scopeindia.org/images/courses/scope-india-dotnet-core-full-stack-course.jpg" class="card-image-top" alt="testing" width="600px"/>
</div>
</div>
</div>

<div class="item">
<div class="card">
<div class="card-body">
<img src="https://scopeindia.org/images/courses/scope-india-software-testing-manual-automation-course.jpg" class="card-image-top" alt="digital-marketing" width="600px"/>
</div>
</div>
</div>

<div class="item">
<div class="card">
<div class="card-body">
<img src="https://scopeindia.org/images/courses/scope-india-flutter-fullstack-course.jpg" class="card-image-top" alt="flutter" width="600px"/>
</div>
</div>
</div>


</div>
</div>
</div>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" 
  integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" 
  crossorigin="anonymous" 
  referrerpolicy="no-referrer">
  </script>
  <script>
  $('.owl-carousel').owlCarousel({
	    loop:true,
	    margin:10,
	    nav:true,
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:3
	        },
	        1000:{
	            items:2
	        }
	    }
	})
  </script>
</body>
</html>