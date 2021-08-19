<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico"/>
<title>Your profile</title>
</head>
<style>
.wrapper {
height: auto;
width: 80%;
margin-left:auto;
margin-right: auto;
margin-top: 60px;
padding-right: 10px; /* 3 */
padding-left: 10px; /* 3 */
background-color: transparent;
}

.navbar {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #e7e7e7;
  background-color: #f3f3f3;
}

.nav-line {
  float: left;
}

.nav-line a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.nav-line a:hover:not(.active) {
  background-color: #ddd;
}

.nav-line a.active {
  color: white;
  background-color: #04AA6D;
}
</style>
<body>

	<% 
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		response.setHeader("Pragma", "no-cache"); //http older version
		
		response.setHeader("Expires", "0"); //for proxies
	
		if(session.getAttribute("email")==null)
		response.sendRedirect("index.jsp");	
	%>
	<form action="LogoutController">
	<div class="wrapper" >
		<ul class="navbar">
		  <li class="nav-line"><a href="index.jsp">Home</a></li>
		  <li class="nav-line"><a href="courses.jsp">Courses</a></li>
		  <li class="nav-line"><a href="#contact">Contact</a></li>
		  <li class="nav-line"><a href="#about">About</a></li>
		  <li class="nav-line" id="username" style="float:right;cursor: pointer"><a><input type="submit" value="Logout"></a></li>
		</ul>
	</div>
	</form>
</body>
</html>