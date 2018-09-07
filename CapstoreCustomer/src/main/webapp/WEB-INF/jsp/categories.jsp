<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
         body{
         background-image: url("D:/Capstore/shoppie.v4.cropped.jpg");
         }
         </style>
</head>
<body>
	
	<div class="header-container">
		<!-- <div class="site-name" >
			&nbsp; &nbsp; <img
				src="D:\Capstore\cap.jpg" width="125" height="125" />
		</div> -->
		<div class="header-bar" align="right">
			<j:if test="${pageContext.request.userPrincipal.name != null}">
       <a style="color: blue;" ><b>Login</b></a>  &nbsp;|&nbsp;
           <a style="color: blue;><b>Logout</b></a>
				
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
				
                <div align="left">
				<a style="color: red" href="home.jsp""${pageContext.request.contextPath}/home"><b>Home</b>
				</a> &nbsp;|&nbsp;
             <a style="color: red" href="categories.jsp""${pageContext.request.contextPath}/categories"><b>Categories</b>
					 </a>&nbsp;|&nbsp;
             <a style="color: red" href="SortBy.jsp""${pageContext.request.contextPath}/sortBy"><b>Sort By</b>
				</a>&nbsp;|&nbsp;
            <a style="color: red" href="Contact.jsp""${pageContext.request.contextPath}/contact"><b>Contact</b>
				</a>&nbsp;|&nbsp;
			<a style="color: red" href="DandP.jsp""${pageContext.request.contextPath}/discounts&promos"><b>Discounts & Promos</b>
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
	<div class="page-heading" style="color: blue; font-size: 25px">
		<b>Categories</b>
	</div>
	
	<div align="left">
			<table><tr>
				<th> <a style="color: red;" href="Mobiles.jsp""${pageContext.request.contextPath}/mobiles">
				<img src="D:\Capstore\mobile_icon.jpg" width="100" height="100" /></th>
				<!-- <b>Mobile</b> --></a>
                
                <th><a style="color: red;" href="Accessories.jsp""${pageContext.request.contextPath}/accessories">
                <img src="D:\Capstore\accessories_icon.jpg" width="100" height="100" /></th>
               <!--  <b>Accessories</b> --></a>
                
                <th><a style="color: red;" href="Electronics.jsp""${pageContext.request.contextPath}/electronics">
                <img src="D:\Capstore\electronics_icon.jpg" width="100" height="100" /></th>
              <!--   <b>Electronics</b>  --></a>
                
                <th><a style="color: red;" href="KidsWear.jsp""${pageContext.request.contextPath}/kidsWear">
                <img src="D:\Capstore\kids_icon.jpg" width="100" height="100" /></th>
                <!-- <b>Kids Wear</b> --></a>
                
                <th><a style="color: red;" href="MensWear.jsp""${pageContext.request.contextPath}/mensWear">
                <img src="D:\Capstore\mens_icon.jpg" width="100" height="100" /></th>
               <!--  <b>Mens Wear</b> -->
            </tr>
            <br>
           <tr>
                  <td><a style="color: red;" href="Mobiles.jsp""${pageContext.request.contextPath}/mobiles"><b>Mobiles</b></td></a>
                  <td><a style="color: red;" href="Accessories.jsp""${pageContext.request.contextPath}/accessories"><b>Accessories</b></td></a> 
                  <td><a style="color: red;" href="Electronics.jsp""${pageContext.request.contextPath}/electronics"><b>Electronics</b></td></a>
                  <td><a style="color: red;" href="KidsWear.jsp""${pageContext.request.contextPath}/kidsWear"><b>Kids</b></td> </a>
                  <td><a style="color: red;" href="MensWear.jsp""${pageContext.request.contextPath}/mensWear"><b>Men's Wear</b></td></a>
                </tr>
                </table>
	</div>
</body>
</html>