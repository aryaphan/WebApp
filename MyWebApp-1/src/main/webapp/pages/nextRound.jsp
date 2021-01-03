<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="java.util.concurrent.ThreadLocalRandom" %>

<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/vote.css">
	 <link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	
	<link rel="stylesheet" type="text/css" href="css/vote.css">

	  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<header class="site-header sticky-top py-1">
  <nav class="container d-flex flex-column flex-md-row justify-content-between">
   
    <form action="/vote" method="GET">
    	<a class="py-2 d-none d-md-inline-block" href="vote">Vote</a>
    </form>
    
    <form action="/showRanks" method="GET">
    	<a class="py-2 d-none d-md-inline-block" href="showRanks">Ranking</a>
    </form>
    
   
    <a class="py-2 d-none d-md-inline-block" href="#">About</a>
    
  </nav>
</header>





<c:set var="id1" value="${id1}"/>
<c:set var="id2" value="${id2}"/>


<c:set var="sneaker1" value="${sneakerList.get(id1)}"/>
<c:set var="sneaker2" value="${sneakerList.get(id2)}"/>

<form action="/ContinueVoting" method="GET">
<main>
  <div class="position-relative text-center bg-light box">
    <div class="col-md-5 mx-auto">
      <!-- <h3 class="display-7">PICK ONE</h3> -->
      <h2 class="display-4">VS</h2>
    </div>

  </div> 

  <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3 row">
  	<div class="col-1"> </div>
    <div class="bg-dark me-md-3 px-3 px-md-5 text-center text-white overflow-hidden rounded col-5">
      <div class="my-3">
        <h5>${sneaker1.name}</h5>
      </div>
       <input align="center" class="photo" type="image" name="img1" src="getSneakerImage/<c:out value='${sneaker1.id}'/>" class="bg-light shadow-sm mx-auto" style="width: 80%; height: 350px;">
      
    
    </div>
    <div class="bg-light me-md-3 px-3 px-md-5 text-center overflow-hidden rounded col-5">
      <div class="my-3">
        <h5>${sneaker2.name}</h5>
      </div>
       <input class="photo" type="image" name="img2" src="getSneakerImage/<c:out value='${sneaker2.id}'/>" class="bg-light shadow-sm mx-auto" style="width: 80%; height: 350px;"> 
    </div>
    <div class="col-1"></div>
  </div>
  
  	<div>
		<input type="hidden" name="id1" value="${sneaker1.id}">
	</div>
			
	<div>
		<input type="hidden" name="id2" value="${sneaker2.id}">
	</div> 

 
</main>

<footer class="container py-5">
  <div class="row">
    <div class="col-4 col-md">
      <h5>Features</h5>
      <ul class="list-unstyled text-small">
        <li><a class="link-secondary" href="#">Spring Boot</a></li>
        <li><a class="link-secondary" href="#">Java</a></li>
      </ul>
    </div>
    <div class="col-4 col-md">
      <h5>Resources</h5>
      <ul class="list-unstyled text-small">
        <li><a class="link-secondary" href="#">Resource name</a></li>
        <li><a class="link-secondary" href="#">Resource</a></li>
        <li><a class="link-secondary" href="#">Another resource</a></li>
        <li><a class="link-secondary" href="#">Final resource</a></li>
      </ul>
    </div>
    <div class="col-4 col-md">
      <h5>About</h5>
      <ul class="list-unstyled text-small">
        <li><a class="link-secondary" href="#">Team</a></li>
        <li><a class="link-secondary" href="#">Locations</a></li>
        <li><a class="link-secondary" href="#">Privacy</a></li>
        <li><a class="link-secondary" href="#">Terms</a></li>
      </ul>
    </div>
  </div>
</footer>
	
</form>


</body>
</html>