<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
#error_message{
	text-align: center;
	font-size: 14px;
	padding: 0px;
	margin-bottom: 20px;
	transition: all 0.5s ease;
	background: #fa3243;
	color: white;
	border-radius: 15px;
}

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

<title>Report to Us</title>
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
			<a class="navbar-item" href="">
				XMUM Parcel Collection System
			</a>
		
			<div class="navbar-item">
				<div class="buttons">
					<a class="button is-primary has-text-weight-bold" href="mainPage.jsp">
						Back to Home
					</a>
				</div>
			</div>
		</div>
	</div>
</nav>

<section class="section is-medium">

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
							<input class="input" type="text" name="uname" placeholder="Username">
						</div>
					</div>
										
					<div class="field">
						<div class="control">
							<input class="input" type="text" name="pword" placeholder="Password">
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

<h2 class="title has-text-centered">Report To Us</h2>
<div class="columns">

	<div class="column">
	
	</div>
		
	<div class="column is-5 has-text-centered">	
	<div id="error_message"></div>
		<form name=form1 action="report.jsp" onsubmit="return validate()">
			<div class="field">
				<div class="control">
				<input class="input is-rounded" type="text" required placeholder="Name*" name="studentName">
				</div>
			</div>
				
			<div class="field">
				<div class="control">
				<input class="input is-rounded" type="text" required placeholder="Student ID*" name="studentId">
				</div>
			</div>
			
			<div class="field">
				<div class="control">
				<input class="input is-rounded" type="text" required placeholder="Email*" name="email">
				</div>
			</div>
				
			<div class="field">	
				<div class="control">
				<input class="input is-rounded" type="text" required placeholder="Mobile Phone*" name="contact">
				</div>
			</div>	
					
			<div class="field">		
				<div class="control">	
				<textarea class="textarea" required placeholder="Message*" name="message"></textarea>
				</div>
			</div>
				
			<div class="field">
				<input type="submit" class="button is-primary is-rounded has-text-weight-bold">
			</div>
		</form>
	</div>
	
	<div class="column">
	
	</div>
								
</div>


</section>

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