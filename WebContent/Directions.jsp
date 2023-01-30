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
   
 <div class ="divide30"></div>   
 <div  style="width:1200px; margin: 0 auto; margin-top: 50px; margin-bottom: 150px;">
 <h2 class = "margin20"><strong>DaolCosmatic 오시는길</strong></h2>
 
 	<div class ="row">
 		<div class="col-md-9 margin20">
 	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3234.4646302553374!2d128.62596341563992!3d35.837608980158066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565e3fb4c2ba6c5%3A0xdc8f806b651860c!2z64uk7Jis7L2U7Iqk66mU7Yux!5e0!3m2!1sko!2skr!4v1672712612404!5m2!1sko!2skr"
 	width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
	<div class="col-md-3">
		<h4>주소</h4>
		<hr>
			<ul class ="list-unstyled contact">
				<li><strong><i class = "fa fa-map-marker"></i></strong>&nbsp;대구 수성구 청수로 38길29<br>&nbsp;&nbsp;&nbsp;&nbsp;(지산동 986-4)</li>
				<li><strong>MAIL : </strong><a href="#">daolcosmatic@naver.com</a></li>			
				<li><strong>TEL : </strong>053-745-6588</li>			
				<li><strong>FAX : </strong>053-745-6589</li>			
			</ul>
			<br>
				<h4>대중교통</h4>
				<hr>
			<ul class ="list-unstyled contact">
				<li><strong>지하철 : </strong>황금역 1번출구 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(도보 10분 거리)</li>			
				<li><strong>버스 : </strong>헬로TV대구방송건너 <br>(100-1,234,349,수성3,수성4,순환3-1)</li>			
			</ul>
		</div>
	</div>
</div>
 <!-- 	<hr>
 	<div class="row">
 		<div class="col-md-12">
 			<h2>다올코스메틱 오시는 길</h2>
 			<hr>
 			<p style="font-size: 5; color: red;">주소</p>
 			<hr>
 			<p>도로명 주소 :<br>
 			지번 주소 : <br>
 		    Tel.<br>
 			Fax.</p>
 			
 			<br>
 			<p>대중교통</p>
 			<p>지하철 :  </p>
 			<p>버스 : </p>
 		</div>
 	 </div> -->
 	</div>

<%@ include file ="../footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>