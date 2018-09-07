<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CapStore</title>
         <link rel="stylesheet" type="text/jsp" href="D:/STS/NewSTSWotrkspace/Capstore2/WebContent/shtyle.jsp">
        <!--  <style type="text/css">
         body{
         background-image: url("D:/Capstore/shoppie.v4.cropped.jpg");
         }
         </style> -->
</head>
<body>

	<div class="header-container">
		<!-- <div class="site-name" >
			&nbsp; &nbsp; <img
				src="D:\Capstore\cap.jpg" width="125" height="125" />
		</div> -->
		<div class="header-bar" align="right">
			<j:if test="${pageContext.request.userPrincipal.name != null}">
       ${customer.customerName} <a style="color: blue;" href="/customerprofile"><b>My Profile</a>  &nbsp;|&nbsp;
           <a style="color: blue;" href="/login"><b>Logout</b></a>
				
				</div>
				


		<div class="main">
            <center><p style="font-size: 50px; color: brown"><b>CapStore</b></p></center>
            <div class="social_icon">
                <div class="container">
                    <div class="icon">
                       <a href="https://facebook.com"> <img src="D:/Capstore/facebooklogo.jpg"></a>
                       <a href="https://instagram.com"> <img src="D:/Capstore/instagram.jpg"></a>
                       <a href="https://twitter.com"><img src="D:/Capstore/twitter.jpg"></a>
                    </div> 
                </div>
                
				<br>
				<br>
				<div class="header-bar" align="left">
				<a style="color: red" href="home""${pageContext.request.contextPath}/home"><b>Home</b>
				</a> &nbsp;|&nbsp;
             <a style="color: red" href="categories""${pageContext.request.contextPath}/categories"><b>Categories</b>
					 </a>&nbsp;|&nbsp;
            <%--  <a style="color: red" href="SortBy.jsp""${pageContext.request.contextPath}/sortBy"><b>Sort By</b>
				</a>&nbsp;|&nbsp; --%>
            <a style="color: red" href="contact""${pageContext.request.contextPath}/contact"><b>Contact</b>
				</a>&nbsp;|&nbsp;
			<a style="color: red" href="DandP""${pageContext.request.contextPath}/discounts&promos"><b>Discounts & Promos</b>
			 </a>

			</j:if>
		</div>
                <div>
                    <center><p style="font-style: italic; color: brown; font-size: 30px">
                        <b>Search:</b>
                   <input type="search" style="font-size: 18px" />
                   
                   <button class="site-name" style="color: rgb(62, 14, 236); font-size: 15px; font-style: italic"><b>Go</b></button></p></center>
                </div>
                </div>
                
            </div> 
            <div>
		
		</div>
		
	
</body>
</html>