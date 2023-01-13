<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

.login{
	display: none
}

.animate {
		-webkit-animation: animatezoom 0.6s;
		animation: animatezoom 0.6s
	}
	
	@-webkit-keyframes animatezoom {
		from {-webkit-transform: scale(0)} 
		to {-webkit-transform: scale(1)}
	}
	  
	@keyframes animatezoom {
		from {transform: scale(0)} 
		to {transform: scale(1)}
	}
	

</style>

<title>Search Results</title>
<link href="resources/style.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.css" rel="stylesheet">
</head>

<body>

<nav class="navbar is-fixed-top" role="navigation" aria-label="main navigation">
	
	<div class="navbar-brand">
		<a class="navbar-item">
			<img src="resources/logo.png" alt="Xiamen University Malaysia">
		</a>
			
		<a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbar">
			<span aria-hidden="true"></span>
			<span aria-hidden="true"></span>
			<span aria-hidden="true"></span>
		</a>
	</div>
	
	<div class="navbar-end">
		<div id="navbar" class="navbar-menu">
			<a class="navbar-item">
				XMUM Parcel Collection System
			</a>
		
			<div class="navbar-item">
				<div class="buttons">
					<a class="button is-primary has-text-weight-bold" onclick="document.getElementById('login').style.display='block'">
						Admin
					</a>
					
					<a class="button is-light" href="mainPage.jsp">
						Back to Home
					</a>
					
					<a class="button is-light" href="reportPage.jsp">
						Report A Problem
					</a>
				</div>
			</div>
		</div>
	</div>
</nav>

<%@page import = "com.dao.bean.User, com.dao.UserDao, java.util.*" %>

<%
	UserDao u = User.getLoginValidation();
	String username = u.getUsername();
	String password = u.getPassword();
%>		

<div id="login" class="modal">
	<div class="columns">
		<div class="column">
							
		</div>
						
		<div class="column">
									
		<section class="section is-medium"></section>
			<div class="box has-text-right animate">
				<form name=form0 action="adminViewParcels.jsp" onsubmit = "return loginValidation()">
					<span class="delete" onclick="document.getElementById('login').style.display='none'"></span>
												
							
					<div class="field">
						<div class="control">
							<input class="input" type="text" name="uname" placeholder="Username | Default: admin">
						</div>
					</div>
										
					<div class="field">
						<div class="control">
							<input class="input" type="text" name="pword" placeholder="Password | Default: admin">
						</div>
					</div>
												
					<input class="input" type="hidden" name="username" placeholder="Password" value="<%=u.getUsername() %>">
					<input class="input" type="hidden" name="password" placeholder="Password" value="<%=u.getPassword() %>">
												
					<div class="field has-text-centered">
						<div class="control">
							<input class="button is-primary" type="submit" value="Login">
						</div>
					</div>
				</form>
			</div>
		</div>	
									
		<div class="column">
									
		</div>
	</div>
</div>

<section class="section"></section>

<%@page import="com.dao.bean.User, com.dao.UserDao, java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2 class="title has-text-centered">List of Parcels</h2>

<% 
String name = request.getParameter("studentName");
List<UserDao>list = User.getAllParcelByName(name);
request.setAttribute("list", list);
%>

<section class="section is-small">

<div class="columns">
	<div class="column">
	
	</div>
	
	<div class="column is-8">
		<table class="table is-hoverable is-narrow">
			<thead>
				<tr>
				<th>ID</th>
				<th>Student Name</th>
				<th>Student ID</th>
				<th>Tracking Number</th>
				<th>Courier</th>
				<th>Collection Date</th>
				<th>Appointment</th>
				<th>Cancel</th>
				</tr>
			</thead>
		
			<c:forEach items ="${list}" var="u">
			<tbody>
				<tr>
				<td>${u.getId()}</td>
				<td>${u.getStudentName()}</td>
				<td>${u.getStudentId()}</td>
				<td>${u.getTrackingNumber()}</td>
				<td>${u.getCourier()}</td>
				<td>${u.getCollectionDate()}</td>
				<td><a href="appointmentPage.jsp?id=${u.getId()}">Appointment</a></td>
				<td><a href="cancel.jsp?id=${u.getId()}" onclick="return cancelled()">Cancel</a></td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>
	
	<div class="column">
	
	</div>
</div>

</section>

<section class="section is-medium"></section>

<script src="validation.js"></script>

<script>
		var modal = document.getElementById('login');
	
		window.onclick = function(event) {
			if (event.target == modal) {
		    	modal.style.display = "none";
			}
		}
</script>

<footer class="footer">
	<div class="content has-text-centered">
		<p>
			Copyright @ Project <strong>Group 4</strong> of Tutorial Group 2. All Rights Reserved | SWE2002105, SWE2004165, SWE2004469, SWE2004479
		</p>
	</div>
</footer>

</body>
</html>