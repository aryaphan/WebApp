<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="com.arya.model.Sneaker" %>
<%@page import="com.arya.rating.RatingHandler" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/vote.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <!--   <link rel="stylesheet" href="https://fontawesome.com/v4.7.0/assets/font-awesome/css/font-awesome.css"> -->
	
	     <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,500&display=swap" rel="stylesheet">

<title>Ranks</title>
</head>
<body>
<jsp:useBean id="date" class="java.util.Date" />

<header class="site-header sticky-top py-1">
  <nav class="container d-flex flex-column flex-md-row justify-content-between">
   
    <form action="/vote" method="GET">
    	<a class="py-2 d-none d-md-inline-block" href="vote">Vote</a>
    </form>
    
    <form action="/showRanks" method="GET">
    	<a class="py-2 d-none d-md-inline-block" href="showRanks">Ranking</a>
    </form>
    
     
    <form action="/about" method="GET">
    	<a class="py-2 d-none d-md-inline-block" href="about">About</a>
    </form>
  </nav>
</header>

<!-- px-md-5 px-3 -->
<%
	List<Sneaker> sneakerRanks = RatingHandler.getRanking();
	pageContext.setAttribute("sneakerRanks", sneakerRanks);
%>
<!-- class="display-4 fw-normal" -->
<main>
  <div class="position-relative text-center bg-light box">
    <div class="col-md-5 mx-auto" >
      <h2>TOP 10 SNEAKERS <fmt:formatDate value="${date}" pattern="yyyy" /></h2>
    </div>
 
  </div>
  
  <c:set var="rank" value="1"/>
  <c:set var="startIndex" scope="page" value="0"/>
  <c:set var="endIndex" scope="page" value="9"/>
		<c:forEach begin="${startIndex}" end="${endIndex}" step="5" var="index">
			<div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-5 row">
				<c:forEach begin="${index}" end="${index + 4}" step="1" var="i">
					<c:set var="sneaker" value="${sneakerRanks.get(i)}"/>
					<!-- text-white -->
			    	<div class="border me-md-3 text-center  overflow-hidden rounded col-sm-2 ">
			      		<div class="my-3">
			        		<h5>Rank <c:out value="${rank}"/></h5>
			        		<h5>${sneaker.name}</h5>
			     		</div>
			     	 <img src="getSneakerImage/<c:out value='${sneaker.id}'/>" class="bg-light shadow-sm mx-auto" style="width: 80%">
			    	<c:set var="rank" value="${rank + 1}"/>
			    </div>
			    </c:forEach>
			   
			  </div> 

		</c:forEach>

  

 
</main>

<!-- <footer class="container py-2">
  <div class="row">
  	<div class="col-sm-12  text-center ">
  		<h4>Made by Arya Phan</h4>
  		<a href="https://github.com/aryaphan" class="fa fa-github fa-6" style="font-size: 48px; color:black" ></a>
  	</div>
  	
  	
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
 -->



</body>
</html>