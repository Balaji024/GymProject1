<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page isELIgnored="false" %>
<html>
<head>

<meta name="viewport" content="width=device-width,initial-scale=1"/>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<title>Homepage</title>


	
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
   
        
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        <center>    <a class="navbar-brand" href="#page-top">Equip Zone</a></center>
        </div>
        
         <div class="container-fluid">
       
              
       <div class="collapse navbar-collapse" id="myNavbar">
       

      <ul class="nav navbar-nav">
       <li class="dropdown">
        
			 <a href="" class="btn btn-default dropdown-toggle" data-toggle="dropdown"> 
                     Select by Category</a>
			<ol class="dropdown-menu">
					

    <c:forEach items="${categories}" var="c">

   <li>   <c:url value="viewproducts?searchCondition=${c.categoryId}" var="url"></c:url>

      </li>

      <a href="${url}" >${c.categoryName } </a>

       
</c:forEach>
      </ol>
     </li>
     

        <ul class="nav navbar-nav navbar-right">

      		<c:url value="/cart/getcart" var="cart"></c:url>

	      	<security:authorize access="hasRole('ROLE_USER')">

	      	

	      <ul class="nav navbar-nav navbar-right">

      		<li><a href=${cart}><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>

      		</ul>

			</security:authorize>

			<c:url value="/admin/category" var="category"></c:url>

			<c:url value="/admin/add" var="product"></c:url>

			<security:authorize access="hasRole('ROLE_ADMIN')">

			<ul class="nav navbar-nav navbar-right">

			<li><a href=${category}><span class="glyphicon glyphicon-th-list">Category</span></a></li>

			<li><a href=${product}><span class="glyphicon glyphicon-th">Product</span></a></li> 

			

			</ul>     		

	         </security:authorize>

			<c:if test="${pageContext.request.userPrincipal.name==null }">

			<li><a href="login"> <span class="glyphicon glyphicon-log-in"> </span> Login</a></li>

			<li><a href="registrationform"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>

			</c:if>

			<c:if test="${pageContext.request.userPrincipal.name!=null }">

			<li><a href="">Welcome ${pageContext.request.userPrincipal.name}</a></li>

			<li><a href="<c:url value='/j_spring_security_logout'></c:url>"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>

			</c:if>			

			</ul>
     

      				 
			</div>
			</div>
		</nav>
		
		

    
<br>
<br>
<br>



	


			  
						
</body>
</html>
  



