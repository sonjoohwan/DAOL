<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="util.*,vo.Product_ph"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- 참조  -->
 <link rel="stylesheet" href="css/productPage.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<title>기타제품 상품보기 </title>

</head>
<body>
<% 
int productPageNum = (int)request.getAttribute("productPageNum"); 
int MaxProductPageNum = (int)request.getAttribute("MaxProductPageNum"); 
%>
<%@ include file="../header_nav3.jsp" %>

 <img class="top-img" src="images/메인_pH포뮬라.jpg" style="background: black;">
 
 <!----------------------------------------------------------------------->
 	<div style="text-align:center; padding: 0px; border-bottom: 1px solid rgb(72, 70, 70); " >
		<ul class="custom-navbar" >
            <li><a href="product_ph.daol" class="titletip"><strong>PHPOMULA</strong><span class="textTop">Ph포뮬라</span></a></li>
            <li><a href="product_et.daol" class="titletip"><strong>ETELANC</strong><span class="textTop">에텔랑</span></a></li>
            <li><a href="product_de.daol" class="titletip"><strong>D.L THE AROMA</strong><span class="textTop">디.엘더아로마</span></a></li>
            <li><a href="product_2B.daol" class="titletip"><strong>2B.BIO BEAUTY</strong><span class="textTop">2B바이오뷰티</span></a></li>
            <li><a href="product_my.daol" class="titletip"><strong>BEAUTY DEVICE</strong><span class="textTop">미용기기</span></a></li>
            <li><a href="other_product.daol" class="titletip"><strong>OTHER PRODUCTS</strong><span class="textTop">기타 제품</span></a></li>
        </ul>
	</div>

<!--윗부분  --------------------------------------------------------------------------------------->
<div style="text-align: center;">
<img class="senter-img" src="images/메인_pH포뮬라.jpg" >
</div>

<div class="s-div">
		<dl class="ss-dl">  
		<dt class="fo_noto" style="color:rgba(255,113,113); ">기타 제품들</dt>
		<dd>클렌징 라인은 건강하고 활력 있고 빛나는 피부를 위한 매우 필수적인 라인이다.
		네오더마 클렌저는 불순물을 제거해 주고, 피부를 정화, 리프레쉬하게 조절해 주는 자연 활성 성분과 강력한 성분들로 스킨케어 과정을 최상의 상태로 이끌어 준다.
		</dd>


	</dl>
	<br><br><br>
</div>


 <section id = "listForm">
  <div class ="divide30" style="border-top: 1px solid #e5e5e5; width: 1020px;  margin: 0 auto;"></div>  
 <h5 style="text-align: center; margin-top: 40px; margin-bottom: 40px;"><strong style="font-size: 50px; color: rgb(255,113,113);">Other Products</strong></h5>
	<c:if test="${other_productList != null }"> <!--1. 상품목록이 있으면 -->
			<table class="productListTBL">
				<tr>
					<c:forEach var="other_product" items="${other_productList}" varStatus="i">
					<td class="productListTD">
						<div class="carbox-other">
						<a style="padding : 60px;" href="other_product.daol?product_no=${other_product.product_no}"><img src="images/${other_product.product_image}" id="productImage"/></a>
						<hr>
								<strong>${other_product.product_name }</strong><br/>
								<strong>${other_product.product_cap }</strong><br/>
						</div>
					</td>
					  <input type="hidden" id="width-var" value="">
					<!--상품 목록을 출력할 때 1줄에 4개씩만 나란히 출력되도록 하기위해  -->
					<c:if test="${((i.index+1) mod 4)==0}">
						</tr>
						<tr>
					</c:if>
					</c:forEach>
			</tr>
			</table>
	</c:if>
	
	<c:if test="${other_productList == null }"> <!--2. 상품목록이 없으면 -->
		<div class="div_empty">상품이 없습니다.</div>
	</c:if>
		<br>
			
<nav aria-label="Page navigation example" style="margin: 20px 0 20px 0;">
  <ul class="pagination justify-content-center">
  <%if(productPageNum ==1 ) { %>
   <li class="page-item" >
      <a class="page-link" href="#" aria-label="Previous" >
        <span aria-hidden="true" style="color: 	#DC143C;">&laquo;</span>
      </a>
    </li>
    <%}else if(productPageNum!=1) { %>
    <li class="page-item">
      <a class="page-link" href="other_product.daol?productPageNum=${productPageNum-1}" aria-label="Previous">
        <span aria-hidden="true" style="color: 	#DC143C;">&laquo;</span>
      </a>
    </li>
    <%} %>
    <c:forEach var="i" begin="1" end="${MaxProductPageNum }" step="1" >
   		<li class="page-item" ><a class="page-link" href="other_product.daol?productPageNum=${i}" style="color: black;">${i}</a> </li>
	</c:forEach>
	<%if(productPageNum < MaxProductPageNum){%>
     <li class="page-item">
      <a  class="page-link" href="other_product.daol?productPageNum=${productPageNum+1}" aria-label="Next">
        <span aria-hidden="true" style="color: 	#DC143C;">&raquo;</span>
      </a>
    </li>
    <%}else if(productPageNum == MaxProductPageNum){%>
     <li class="page-item">
      <a class="page-link" href="other_product.daol?productPageNum=${productPageNum+1}" aria-label="Next">
        <span aria-hidden="true" style="color: 	#DC143C;">&raquo;</span>
      </a>
    </li>
    <%} %>
  </ul>
</nav>
</section>







<script>//첫페이지, 마지막페이지 표시용
	function firstPage() {alert("첫 페이지입니다.");}
	function lastPage() {alert("마지막 페이지입니다.");}
</script>
 

<%@ include file ="../footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>