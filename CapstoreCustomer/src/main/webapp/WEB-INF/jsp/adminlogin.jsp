<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<script type="text/javascript">
function validate(){

var email=document.myform.email.value;
var password=document.myform.pass.value;
if(email==""){
alert("Email cannot be left empty!");
return false;
}
/* if(!(email=="/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/")){
alert("Invalid entry!");
document.loginForm.email.focus();
return false;
} */
if(password==""){
alert("Password cannot be left empty!");
return false;
}
return true;
}
</script>
</head>
<body>
<form action="/admin-home" name="myform" onsubmit="return validate();">
<table align="center">
<tr><td colspan="2" style="color:red"></td></tr>
<tr>
<td>Email Id: </td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Password: </td>
<td><input type="password" name="pass"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Login" name="submit" ></td>
</tr><tr><td></td>
<td><a href="#"><span>Forgot?</span></a></td>
</tr>
</table>
</form>
</body>
</html>