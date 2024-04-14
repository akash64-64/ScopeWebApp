<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<style>
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
body{
background-image:url("https://img.freepik.com/free-photo/beautiful-view-mountains-covered-snow-annapurna-conservation-area-chhusang-nepal_181624-15705.jpg?t=st=1712900170~exp=1712903770~hmac=8b3196d70aa542d1387ec01815dcf4d531d939920890b03e426dcb71b727a837&w=740");
background-size:cover;
 background-attachment: fixed;
}
.main{
width:100%;
height:700px;
background-color:rgba(48,0,110,0.8);
 background-attachment: fixed;

}
.container{
position:relative;
top:130px;
left:35px;
}
.head{
position:absolute;
left:50px;

}
.txt{
font-size:60px;
text-align:center;
}
.para{
text-align: justify;
text-justify: inter-word;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
<div class="main">
<div class="container">
<div class="d-flex justify-content-center head">
<h1 class="text-warning txt"><b>SCOPE INDIA, your career partner!</b></h1></div>
<br/>
<br/>
<div class=" mt-5 d-flex justify-content-center">
<center class="h3 text-light para mt-3">One of the best Training Destination for Software, Networking and Cloud Computing courses in India with 17 years of Industrial experience.</center>
</div>

<div class="content mt-5">
<p class="h5 text-light lh-lg">Software, Networking, and Cloud Professional Education Centre in Kerala from Suffix E Solutions with WORKING PROFESSIONALS oriented on-the-job TRAINING model. SCOPE INDIA provides courses for Software Programming in Python (Data Science | Artificial Intelligence | Machine Learning | Deep Learning, Data Analytics), Java, PHP, .Net, Software Testing Manual and Automation, Cloud Computing (AWS | Azure), Server Administration (MCSE | RHCE), Networking (CCNA), Mobile App Development in Flutter, and Digital Marketing. Training with 100% Trusted Job Based Internship Model. SCOPE INDIA has a Strong Placement Cell that provides jobs to thousands of students every year. We assure you, you won't regret it after training from SCOPE INDIA!</p>
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
</body>
</html>