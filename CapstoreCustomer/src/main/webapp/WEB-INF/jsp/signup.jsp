<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>




<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up for CapStore - Customer</title>
<script type="text/javascript">
function validate(){

var customername=document.myform.customerName.value;
var address=document.myform.address.value;
var mobileno=document.myform.mobileNo.value;
var email=document.myform.email.value;
var password=document.myform.password.value;
var mob = /^[0-9]{10}$/;
var name = /^[A-Za-z//s]{3,}$/;
var em=/[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
var pass=/[A-Z]{1,}[a-z0-9._%+-@a-z0-9.-a-z]{8,}$/;
if(customername==""){
alert("Customer name cannot be left empty!");
return false;
}
if(name.test(customername) == false){
	alert("Customer name should contain only alphabets");
	return false;
}
if(mobileno==""){
	alert("Mobile No cannot be left empty!");
	return false;
	}
	if(mob.test(mobileno) == false){
		alert("Mobile No should be 10 digits only!");
		return false;
	}
	
	if(email==""){
	alert("Email cannot be left empty!");
	return false;
	}
	if(em.test(email) == false){
		alert("Invalid email");
		return false;
	}
	if(password==""){
	alert("Password cannot be left empty!");
	return false;
	}
	if(pass.test(password) == false){
		alert("Invalid password");
		return false;
	}
if(address==""){
alert("Address cannot be left empty!");
return false;
}

	
return true;
}
</script>
</head>
<body>
	
		<br> <br>
		<form name="myform" onsubmit="return validate();" action="/confirmsignup">
			<table align="center">

				<tr>
					<td>Name</td>
					<td><input name="customerName"></td>
				</tr>
				<tr>
					<td>Mobile Number</td>
					<td><input type="text" name="mobileNo" ></td>
				</tr>
				<tr>
					<td>Email ID</td>
					<td><input type="text" name="email" ></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" ></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" ></td>
				</tr>
				<tr><td></td><td><input type="submit" value="Sign Up" name="submit"></td></tr>
				
			</table>



		</form>

</body>
</html>


