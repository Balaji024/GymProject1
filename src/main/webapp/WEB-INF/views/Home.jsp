<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Equip Zone.in</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/Header.jsp" %>

  
<div class="container-fluid">  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
     
       <img src="<c:url value='/resources/images/gym2.jpg'/>" alt="MoTiVe YouR Skills" width=1670 height="600px" />
       
      </div>

      <div class="item">
        <img src="<c:url value='/resources/images/gym3.gif'/>" alt="MoTiVe YouR Skills" width=1670 height="600px"/>
      </div>
    
      <div class="item">
         <img src="<c:url value='/resources/images/gym4.jpg'/>" alt="MoTiVe YouR Skills" width=1670  height="600px"/>
      </div>
      <div class="item">
        <img src="<c:url value='/resources/images/gym5.jpg'/>" alt="MoTiVe YouR Skills" width=1670 height="600px"/>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="container-fluid">
<div class="row">
<h1><center>Category Preview</center></h1>
</div>



    <div class="container-fluid"> 
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
      <li data-target="#myCarousel" data-slide-to="7"></li>
      <li data-target="#myCarousel" data-slide-to="8"></li>
      <li data-target="#myCarousel" data-slide-to="9"></li>
      <li data-target="#myCarousel" data-slide-to="10"></li>
      <li data-target="#myCarousel" data-slide-to="11"></li>
      <li data-target="#myCarousel" data-slide-to="12"></li>
      <li data-target="#myCarousel" data-slide-to="13"></li>
      <li data-target="#myCarousel" data-slide-to="14"></li>
      <li data-target="#myCarousel" data-slide-to="15"></li>
      <li data-target="#myCarousel" data-slide-to="16"></li>
      <li data-target="#myCarousel" data-slide-to="17"></li>
      <li data-target="#myCarousel" data-slide-to="18"></li>
      <li data-target="#myCarousel" data-slide-to="19"></li>
      
    
    </ol>
     <div class="carousel-inner">
      <div class="item active">
     
       <img src="<c:url value='/resources/images/1.jpg'/>" alt="Treadmills" width=1670 height="600px" />
       
      </div>

      <div class="item">
        <img src="<c:url value='/resources/images/exbikes.jpg'/>" alt="Exercise Bikes" width=1670 height="600px"/>
      </div>
    
      <div class="item">
         <img src="<c:url value='/resources/images/freeweightmachine.jpg'/>" alt="Free weight Machines" width=1670  height="600px"/>
      </div>
      <div class="item">
        <img src="<c:url value='/resources/images/freeweights.jpg'/>" alt="FreeWeights" width=1670 height="600px"/>
      </div>
       <div class="item">
        <img src="<c:url value='/resources/images/multigym2.jpg'/>" alt="Multigyms" width=1670 height="600px"/>
      </div>
       <div class="item">
        <img src="<c:url value='/resources/images/accessories.jpg'/>" alt="Accessories" width=1670 height="600px"/>
      </div>
      
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>
    </div>
    </div>
    
 
 
  <%@ include file="/WEB-INF/views/Footer.jsp" %>

  
</body>
</html>