<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.one img{
background-size:cover;
height:100%;
width:100%;
}
</style>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<body class="bg-white">
<p class="display-1 text-center">Edit your Details</p>
<form action="editsave" enctype="multipart/form-data" method="post">
<div class="container border border-dark bg-info" style="width:700px;height:950px">
<span><label class="form-label"><h5>First Name</h5>
<input class="form-control" type="text" name="first" value="${fname}"/></label>
<label class="form-label ms-5"><h5>last Name</h5>
<input class="form-control" type="text" name="last" value="${lname}"/></label>
</span>
<label class="form-label"><h5>Email</h5>
<input class="form-control" type="email" name="email" value="${mail}"readonly/></label><br/>
<label class="form-label"><h5>Number</h5>
<input class="form-control" type="number" name="phone" value="${phone}"/></label><br/>
<label class="form-label"><h5>Gender</h5>

	
Male <input class="form-check-input" type="radio" name="gender" value="male"/>
Female <input class="form-check-input" type="radio" name="gender" value="female"/>

</label><br/>
<label class="form-label"><h5>Date of Birth</h5>
<input class="form-control" type="date" name="dob" value="${dob}"/></label><br/>
<label class="fprm-label"><h5>Hobbies</h5></label><br/>
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
<input class="form-check-input" type="checkbox" name="hobby" value="Music"/>
<label class="form-label">Music</label>
</div>
<div class="form-check form-check-inline">
<input class="form-check-input" type="checkbox" name="hobby" value="Gardening"/>
<label class="form-label">Gardening</label>
</div>
<br/>

<label class="form-label"><h5>Country</h5></label>
<select class=" form-control w-25" id="countySel" name="country">
<option value="${country}" selected>${country}</option>
</select> 
<label class="form-label"><h5>State</h5></label>
<select class=" form-control w-25" id="stateSel" name="state">
<option value="${state}" selected>${state}</option>
</select> 
<label class="form-label"><h5>City</h5></label>
<select class=" form-control w-25" id="districtSel" name="city">
<option value="${city}" selected>${city}</option>
</select> 
<br/>
<div class="border border-dark bg-secondary text-white one"style="width:100px;height:100px">
<img src="data:image/png;base64,${avatar}" alt="choose new profile pic"/>
</div>
<br/>
<div class="custom-file">
  <input type="file" class="custom-file-input" id="customFile" name="avatar">
  <label class="custom-file-label" for="customFile">Choose file</label>
</div>
<div class="d-flex justify-content-center">
<input class="form-control btn btn-primary w-25" type="submit" value="save"/>
</div>
</div>
</form>
<script src="js/Country+State+District-City-Data.js"></script>
</body>
</html>