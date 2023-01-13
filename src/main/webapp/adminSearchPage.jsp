<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

.logout{
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

<title>Admin | Search</title>
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
							
					<a class="button is-primary has-text-weight-bold" href="adminViewParcels.jsp">
						View All Parcels
					</a>
					
					<a class="button is-light" onclick="document.getElementById('logout').style.display='block'">
						Logout
					</a>
				</div>
			</div>
		</div>
	</div>
</nav>

<div id="logout" class="modal">
	<div class="columns">
		<div class="column"></div>
									
		<div class="column">
									
			<section class="section is-medium"></section>
			<div class="box has-text-right animate">
				<div class="rows">
					<div class="row">
						<h2 class="subtitle has-text-centered">Confirm Logout</h2>
					</div>
												
					<p><br></p>
								
					<div class="row">
												
						<div class="columns">
							<div class="column has-text-right">
								<a class="button is-primary" href="mainPage.jsp" onclick="logoutConfirmation()">
									Yes
								</a>
							</div>
														
							<div class="column has-text-left">
								<a class="button is-light" onclick="document.getElementById('logout').style.display='none'">
									No
								</a>
							</div>
						</div>
					</div>
				</div>
											
			</div>
		</div>	
									
		<div class="column"></div>
	</div>
</div>

<section class="section is-large">

<div class="rows">
	<div class="row">
		<div class="columns">
			<div class="column"></div>
			
			<div class="column">
				<img src="resources/logo.png" alt="Xiamen University Malaysia">
			</div>
			
			<div class="column"></div>
		</div>
	</div>
	
	<div class="row">
		<div class="columns">
			
			<div class="column">
				<form name="form1" action="adminSearchQueryByName.jsp" method="post" onsubmit="return studentNameNotNull()">
					<div class="field">
						<div class="control">
							<input class="input" type="text" name="studentName" placeholder="Search by name">
						</div>
					</div>
					
					<div class="field has-text-centered">
						<div class="control">
							<input class="button is-primary" type="submit">
						</div>
					</div>
				</form>
			</div>
			
			<div class="column">
				<form name="form2" action="adminSearchQueryByTrackingNumber.jsp" method="post" onsubmit="return trackingNumberNotNull()">
					<div class="field">
						<div class="control">
							<input class="input" type="text" name="trackingNumber" placeholder="Search by tracking number">
						</div>
					</div>
					
					<div class="field has-text-centered">
						<div class="control">
							<input class="button is-primary" type="submit">
						</div>
					</div>
				</form>			
			</div>
			
			<div class="column">
				<form name="form3" action="adminSearchQueryByDate.jsp" method="post" onsubmit="return collectionDateNotNull()">
					<div class="field">
						<div class="control">
							<input class="input" type="text" name="collectionDate" placeholder="YYYY-MM-DD">
						</div>
					</div>
					
					<div class="field has-text-centered">
						<div class="control">
							<input class="button is-primary" type="submit">
						</div>
					</div>
				</form>	
			</div>
		</div>
	</div>
</div>

</section>

<script src="validation.js"></script>

<script>
		var modal = document.getElementById('logout');
	
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