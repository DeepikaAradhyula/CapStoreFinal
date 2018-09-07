<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<script type="text/javascript">
function validate(){

var customername=document.myform.customerName.value;
var address=document.myform.address.value;
var mobileno=document.myform.mobileNo.value;
var mob = /^[0-9]{10}$/;
if(customername==""){
alert("Customer name cannot be left empty!");
return false;
}

if(address==""){
alert("Address cannot be left empty!");
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
return true;
}
</script>
</head>
<body>
<form action="edit-profile" name="myform" method="post" onsubmit="return validate();">
<table>
<tr>
<td>
Customer Name
</td>
<td>
<input type="text" name="customerName" id="name" placeholder="Enter your name"/></td>
</tr>
<tr>
<td>
Email Address
</td>
<td><input type="text" name="email" id="emailId" disabled="disabled"/></td></tr>
<tr>
<td>
Address
</td><td><input type="text" name="address" id="address" placeholder="Enter your Address"/></td></tr>
<tr><td>
Mobile Number
</td><td><input type="text" name="mobileNo" id="mob_num" placeholder="Enter your Mobile Number"/></td></tr>
<tr>
<td></td>
<td>
<button type="submit" name="update">Update Profile</button>
</td></tr>
</table>
</form>
<a href="/login">Logout</a>
<a href="customerprofile">Back</a>
</body>
</html>