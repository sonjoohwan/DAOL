<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="util.*,vo.Product_ph"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width", initial-scale="1" >

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- 참조  -->
<title>오시는길 </title>
 <link rel="stylesheet" href="css/directions.css">

</head>
<body>

<%@ include file="../header_nav3.jsp" %>

     <img class="top-img" src="images/오시는길 상단.jpg">
           
<!------------------------------------------------------------------------------------>

	<div style="text-align:center; padding: 0px; border-bottom: 1px solid black; " >
		<ul class="custom-navbar" >
            <li style="margin-left:50px;"><a href="main.jsp" class="titletip"><strong>홈으로</strong><span class="textTop">HOME</span></a>
            </li>
            <li><a href="daolcompany.jsp" class="titletip"><strong>다올코스메틱</strong><span class="textTop">DAOLCOSMATIC</span></a>
            </li>
            <li><a href="Directions.jsp" class="titletip"><strong>오시는길</strong><span class="textTop">DIRECTIONS</span></a>
            </li>
            <li><a href="contact_us.jsp" class="titletip"><strong>문의하기</strong><span class="textTop">CONTACT-US</span></a>
            </li>
           
        </ul>
	</div>
   <!------------------------------------------------------------------------------------>  
   
	<img class="d-block w-100 h-50" src="images/다올코스메틱 소개.jpg">

<%@ include file ="../footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>