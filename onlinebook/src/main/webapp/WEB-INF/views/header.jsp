<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="en">

<head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>Online Kids Book Store</title>
     
     <!-- CSS -->    
     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
     <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
     
     <!-- JQuery -->
     <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
     <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
     <script src="https://use.fontawesome.com/034feea29c.js"></script>
     
     <!-- AngularJS -->
     <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.2/angular.min.js"></script>
     
     <!-- Bootstrap custom CSS -->
	 <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
  	 <link href="<c:url value="/resources/css/modern-business.css" />" rel="stylesheet">
           
</head>

<div class="container-fluid text-center" id="kidsheader">
<div class="col-md-12">
<a href="<c:url value="/index"/>"><img src="<c:url value="/resources/images/logo.png"/>" alt="logo"></a>
</div>
</div>
<!-- Navigation -->

<nav class="navbar navbar-inverse" role="navigation">
   <div class="container">
		<div class="navbar-header">
							 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									 <span class="sr-only">Toggle navigation</span>
									 <span class="icon-bar"></span>
									 <span class="icon-bar"></span>
									 <span class="icon-bar"></span>
							 </button>
		</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			 <li><a href="<c:url value="/" />">Home</a></li>
			 <li><a href="<c:url value="/about" />">About Us</a></li>
			 <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown">Book Collections<span class="fa fa-caret-down"></span></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="<c:url value="/product/art" />">Art and Crafts</a>
                                    </li>
                                    <li>
                                        <a href="<c:url value="/product/comic" />">Comic Collections</a>
                                    </li>
                                    <li>
                                        <a href="<c:url value="/product/game" />">Gaming Books</a>
                                    </li>
                                </ul>
                            </li>
			 <li><a href="<c:url value="/contact" />">Contact Us</a></li>
		</ul>
		
	<ul class="nav navbar-nav navbar-right">
	 <c:if test="${pageContext.request.userPrincipal.name != null}">
            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
            <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                <li><a href="<c:url value="/customer/cart" />">Cart</a></li>
            </c:if>

            <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                <li><a href="<c:url value="/admin" />">Admin</a></li>
            </c:if>

     </c:if>

        	<c:if test="${pageContext.request.userPrincipal.name == null}">
            <li><a href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in">
				</span>Login</a></li>
            <li><a href="<c:url value="/register" />"><span class="glyphicon glyphicon-user">
				</span>Register</a></li>
            </c:if>		
			
	</ul>
</div>
</div>
</nav>
