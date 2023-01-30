<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="util.*,vo.Product_ph"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
 <link rel="stylesheet" href="css/productDetailPage_ph.css">
<title>ph포뮬라 상품 상세보기 </title>

</head>
<body>
<%@ include file="../header_nav3.jsp" %>

<img class="top-img" src="images/메인_pH포뮬라.jpg" style="background: black;">
 
 <!----------------------------------------------------------------------->
 	<div style="text-align:center; padding: 0px; border-bottom: 1px solid rgb(72, 70, 70); " >
		<ul class="custom-navbar" >
            <li><a href="product_ph.daol" class="titletip"><strong>PHPOMULA</strong><span class="textTop">Ph포뮬라</span></a></li>
            <li><a href="product_et.daol" class="titletip"><strong>ETELANC</strong><span class="textTop">에텔랑</span></a></li>
            <li><a href="product_de.daol" class="titletip"><strong>D.L THE AROMA</strong><span class="textTop">디.엘더아로마</span></a></li>
            <li><a href="product_2B.daol" class="titletip"><strong>2B.BIO BEAUTY</strong><span class="textTop">2B바이오뷰티</span></a></li>
            <li><a href="product_hb.daol" class="titletip"><strong>HERBALIST</strong><span class="textTop">허벌리스테</span></a></li>
            <li><a href="product_ts.daol" class="titletip"><strong>TS AROMA</strong><span class="textTop">TS아로마</span></a></li>
            <li><a href="product_mor.daol" class="titletip"><strong>MORAZ</strong><span class="textTop">모라츠</span></a></li>
            <li><a href="product_one.daol" class="titletip"><strong>ONEDAYPEEL</strong><span class="textTop">원데이필</span></a></li>
            <li><a href="product_pp.daol" class="titletip"><strong>PERFECTPEEL</strong><span class="textTop">퍼펙트필</span></a></li>
            <li><a href="product_cs.daol" class="titletip"><strong>COSMODERM</strong><span class="textTop">코스모덤</span></a></li>
            <li><a href="product_my.daol" class="titletip"><strong>BEAUTY DEVICE</strong><span class="textTop">미용기기</span></a></li>
           
        </ul>
	</div>

<div class="container-fluid">
    <div class="content-wrapper">	
     <div class="heading-section">
	            <h2 style="color: rgb(72, 70, 70);"><b>${product_phView.product_name}</b></h2>
	        </div>
	        <hr>
    <section id = "listForm">
				<div class="product">
						<img id="item-display"  src="images/${product_phView.product_image}"/></img>
				</div>	
				<div class="product-detail" >
					<div class="product-desc">상품명 :  <b>${product_phView.product_name}</b></div>
					<div class="product-desc">용량 :  <b>${product_phView.product_cap}</b>    </div>
					<hr>
					<div class="product-desc">특징 :  <b>${product_phView.product_char}</b></div>
					<div class="product-stock">사용법 : <b>${product_phView.product_use}</b></div>
					<div class="product-desc">제품 설명 : <b>${product_phView.product_desc}</b></div>
					<hr>
					<br>
						<nav id = "commandList" style="float: right;">
							<a class="round-black-btn" href="product_ph.daol"><strong>제품 다시 보기</strong></a>
			
						</nav>
				
				</div>
			</div>
		</div>
</section>
<br><br>
			
 

<%@ include file ="../footer.jsp" %>
</body>
</html>