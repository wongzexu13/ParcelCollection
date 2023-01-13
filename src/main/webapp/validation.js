/**
 * 
 */
 function completed(){

alert ("Parcel Collected");
return true;
}

 function deleted(){

alert ("Parcel Deleted");
return true;
}

function appointment(){
	alert("Appointment Done");
}

function cancelled(){
	alert("Appointment Cancelled")
}

function containsNumber(name){
	return /\d/.test(name);
}

function validate(){
	
	
var name = document.forms.form1.studentName.value;
var id = document.forms.form1.studentId.value;
var email = document.forms.form1.email.value;
var contact = document.forms.form1.contact.value;
var message = document.forms.form1.message.value;

 
 let error_message = document.getElementById("error_message");
 
 error_message.style.padding = "10px";
 
 let text;
 
 if (name.length<4 || containsNumber(name)){
	
	text="Please enter valid name";
	error_message.innerHTML = text;
	return false;
}

 if (id.length<9){
	
	text="Please enter valid student ID";
	error_message.innerHTML = text;
	return false;
}

if (email.indexOf ("@")== -1 || email.length<10){
	
	text="Please enter valid email";
	error_message.innerHTML = text;
	return false;
}

 if (isNaN (contact)|| contact.length <= 9){
	
	text="Please enter valid phone number";
	error_message.innerHTML = text;
	return false;
}

 if (message.length<10){
	
	text="Please enter more than 10 characters";
	error_message.innerHTML = text;
	return false;
}

alert ("We have received your message. Kindly wait for our team to response.");
}


function studentNameNotNull(){
	
	var name = document.forms.form1.studentName.value;

	if (name == "")
	{
		alert("Please enter Student Name");
		return false;
	}
}

function trackingNumberNotNull(){
	
	var tn = document.forms.form2.trackingNumber.value;

	if (tn == "")
	{
		alert("Please enter Tracking Number");
		return false;
	}
}

function collectionDateNotNull(){
	
	var date = document.forms.form3.collectionDate.value;

	if (date == "")
	{
		alert("Please enter Collection Date");
		return false;
	}
}

function alertNullValue(){
	
	var id = document.forms.form1.studentId.value;
	var date = document.forms.form1.collectionDate.value;
	
	if (id == "null" || date == "null"){
		alert("Null value not accepted");
		return false;
	}
	
	else{
		alert("Parcel Updated");
	}
}

function alertNull(){
	
	var name = document.forms.form1.studentName.value;
	var tracking = document.forms.form1.trackingNumber.value;
	
	if (name == ""){
		alert("Please enter Student Name");
		return false;
	}
	
	if (tracking == ""){
		alert("Please enter Tracking Number");
		return false;
	}
	
	else{
		alert("Parcel Registered")
	}
}


function loginValidation()
{
	
	var uname = document.forms.form0.uname.value;
	var pword = document.forms.form0.pword.value;
	var username = document.forms.form0.username.value;
	var password = document.forms.form0.password.value;
	
	if (uname == username && pword == password)
		{
			alert("Login Successful")
			return true;
		}
		
	else
		{
			alert("Incorrect username or password");
			return false;
		}	
}

function logoutConfirmation(){
	alert("Logout Successful");
}

function closeTicket(){
	alert("Ticket Closed");
}