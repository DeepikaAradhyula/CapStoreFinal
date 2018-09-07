<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>  
function validateform(){  
var oldpassword=document.forms["myform"]["oldPassword"].value;  
var newpassword=document.forms["myform"]["newPassword"].value;
var confirmpassword=document.forms["myform"]["confirmPassword"].value; 
var lowerCaseLetters = /[a-z]/g;
var upperCaseLetters = /[A-Z]/g;
var numbers = /[0-9]/g;
var characters=/[!@#$%^&*()_+=-]/g;
if (oldpassword==""){  
	alert("Password cannot be blank"); 
    return false;
 }
  else if(newpassword.length<8){  
	alert("Password must contain atleast 8 characters");  
	return false;
  
  }  
else if(newpassword==oldpassword){
	alert("New password should be different from old password");
	return false;
	
}

else if(!(newpassword.match(lowerCaseLetters))){
	alert("Password must contain atleast one lower case letter");
	return false;
}
else if(!(newpassword.match(upperCaseLetters))){
	alert("Password must contain atleast one upper case letter");
	return false;
}
else if(!(newpassword.match(numbers))){
	alert("Password must contain atleast one numeric");
	return false;
}
else if(!(newpassword.match(characters))){
	alert("Password must contain atleast one special character");
	return false;
}
else if(confirmpassword!=newpassword){
	alert("Confirm password should be the same as new password");
	return false;
	
}  

return true;
document.myform.submit();

}
</script> 
<body>
	<center>
		<form action="/change-password" method="post" name="myform" onsubmit="return validateform()">
			<table>

				<tr>
					<td>Old password:</td>
					<td><input type="password" name="oldPassword" /></td>
				</tr>
				<tr>
					<td>New password:</td>
					<td><input type="password" name="newPassword" /></td>
				</tr>
				<tr>
					<td>Confirm password:</td>
					<td><input type="password" name="confirmPassword" /></td>
				</tr>
				<tr>
					<td><input type="submit" name="changePassword" value="Change Password" />
					</td>
				</tr>

			</table>
		</form>
	</center>
</body>

</html>