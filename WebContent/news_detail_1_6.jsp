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
 <link rel="stylesheet" href="css/news.css">

</head>
<body>

<%@ include file="../header_nav3.jsp" %>

<img class="top-img" src="images/다올_홈페이지_브랜드스토리.jpg" style="background: black;">           
<!------------------------------------------------------------------------------------>

	<div style="text-align:center; padding: 0px; border-bottom: 1px solid black; " >
		<ul class="custom-navbar" >
		<li><a href="main.jsp" class="titletip"><strong>HOME</strong><span class="textTop">홈으로</span></a></li>
            <li><a href="news.jsp" class="titletip"><strong>NEWS</strong><span class="textTop">뉴스</span></a></li>
            <li><a href="sns.jsp" class="titletip"><strong>SNS</strong><span class="textTop">이벤트</span></a></li>
        </ul>
	</div>
   <!------------------------------------------------------------------------------------>
   <h5 style="text-align: center; margin-top: 40px; margin-bottom: 20px;"><strong style="font-size: 30px; ">NEWS</strong></h5>  
   <!------------------------------------------------------------------------------------>  
		
<div class="s-div">
		<dl class="ss-dl">  
		<dt class="fo_noto" style="color:rgb(72, 70, 70); ">브랜드 소개6</dt>
		<dd>정확한 1:1 맞춤 처방으로 피부 고민을 완벽하게 해결하고 트리트먼트 이후 부작용이 없는 건강한 피부 재생 트리트먼트 최초의 Pharma-Cosmeceutical PH-DVC 전달 시스템을 이용한 문제성 피부와 변형된 피부를 위한 완벽한 피부 복원술
			피부에 과도한 자극없이 솔루션을 최대한 효과적으로 전달함으로써 피부손상은 최소화, 신진대사 활성화, 피부재생을 극대화하는 시스템
		</dd>


	</dl>
	<br><br><br>
	<br>
	<hr style="width: 1020px; margin: 0 auto;">
</div >
	        

<div class="container" style="text-align: center;">
    <img class="news_detailimage" src="images/이타카로즈테라피.jpg" style="text-align: center;">

  
  
  
<br><br>

<hr style="margin-top: -20px; width: 1060px; margin: 0 auto;">

<br>
<div class="container">
		<a href="news_detail_1_5.jsp"><button type="button" class="btn btn-outline-success" style="float: left;">이전 글</button></a> &nbsp;
		<a href="news_detail_1_7.jsp"><button type="button" class="btn btn-outline-success" style="float: left; margin-left: 10px;">다음 글</button></a>
	<a href="news.jsp"><button type="button" class="btn btn-outline-secondary" style="float: right;">목록</button></a>
</div>
</div>
<br><br><br>

<%@ include file ="../footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>