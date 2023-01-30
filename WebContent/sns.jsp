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
<title>sns </title>
 <link rel="stylesheet" href="css/sns.css">

</head>
<body>

<%@ include file="../header_nav3.jsp" %>

<img class="top-img" src="images/다올_홈페이지_브랜드스토리.jpg" >           
<!------------------------------------------------------------------------------------>

	<div style="text-align:center; padding: 0px; border-bottom: 1px solid black; " >
		<ul class="custom-navbar" >
			<li><a href="main.jsp" class="titletip"><strong>HOME</strong><span class="textTop">홈으로</span></a></li>
           <li><a href="news.jsp" class="titletip"><strong>NEWS</strong><span class="textTop">뉴스</span></a></li>
            <li><a href="sns.jsp" class="titletip"><strong>SNS</strong><span class="textTop">소셜 네트워크</span></a></li>
        </ul>
	</div>
   <!------------------------------------------------------------------------------------>
   <h5 style="text-align: center; margin-top: 40px; margin-bottom: 40px;"><strong style="font-size: 50px; ">SNS</strong></h5>  
   <!------------------------------------------------------------------------------------>
   
   <div class="s-div">
		<dl class="ss-dl">  
		<dt class="fo_noto" style="color:rgb(72, 70, 70); ">Social Network</dt>
		<dd>Phfomula,Etelanc,D.L the aroma,2B bio beauty 등 다양한 브랜드의 이벤트등을 볼 수 있고,
		 고객님들과 자유로운 소통과 정보 공유, 제품에 대한 소식을 빠르게 알려드리기 위한 페이지 입니다.
			 
		</dd>


	</dl>
	<br><br><br>
	<hr style="width: 1020px; margin: 0 auto;">
</div >  
<br><br>
<div class="container" style="float: none; margin: 0 auto;">
    <div class="row">
    
        <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto; margin-left: 40px;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.instagram.com/daol_cosmetic_office/">
                        <img class="pic-1" src="images/다올 페이스북 이미지.jpg">
                        <img class="pic-2" src="images/다올코스메틱 인스타그램.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(225,48,108,0.7)">instagram</span>
                </div>
                <div class="product-content">
                    <div class="price" ><strong>다올 코스메틱 <br>공식 인스타그램</strong>
                    </div>
                    <HR>
                    <h3 class="title">다올코스메틱 에스테틱오픈 및 컨설팅&교육  </h3>
                    <a class="all-deals" href="https://www.facebook.com/profile.php?id=100064090957235">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
           <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.instagram.com/youkyung_academy_office/">
                        <img class="pic-1" src="images/유경아카데미 인스타그램.JPG">
                        <img class="pic-2" src="images/유경아카데미 인스타그램 로고.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(225,48,108,0.7)">instagram</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>유경아카데미 <br> 공식 인스타그램</strong>
                    </div>
                    <HR>
                    <h3 class="title">에스테틱 문화를 선도하는 글로벌 NO.1브랜드  </h3>
                    <a class="all-deals" href="https://www.instagram.com/youkyung_academy_office/">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
            <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.instagram.com/phformula_korea/?hl=ko">
                        <img class="pic-1" src="images/ph포뮬라 로고.jpg">
                        <img class="pic-2" src="images/ph포뮬라 제품 인스타그램.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(225,48,108,0.7)">instagram</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>Phfomula <br> 공식 인스타그램</strong>
                    </div>
                    <HR>
                    <h3 class="title">업계 최초 파마 코스메슈디컬 에스테틱 브랜드 </h3>
                    <a class="all-deals" href="https://www.instagram.com/phformula_korea/?hl=ko">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
          <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.instagram.com/etelanc_office/">
                        <img class="pic-1" src="images/에텔랑 로고.jpg">
                        <img class="pic-2" src="images/에텔랑 인스타 로고.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(225,48,108,0.7)">instagram</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>Etelanc <br> 공식 인스타그램</strong>                 
                    </div>
                    <HR>
                    <h3 class="title">에스테틱 화장품 전문 브랜드 에텔랑 </h3>
                    <a class="all-deals" href="https://www.instagram.com/etelanc_office/">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
       <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto; margin-right: 40px;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.instagram.com/d.l_the_aroma/">
                        <img class="pic-1" src="images/디엘더아로마 로고.jpg">
                        <img class="pic-2" src="images/디엘더아로마 인스타그램 로고.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(225,48,108,0.7)">instagram</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>D.L the aroma <br> 공식 인스타그램</strong>
                    </div>
                    <HR>
                    <h3 class="title">하이퀄리티 아로마 전문 브랜드 디엘더아로마</h3>
                    <a class="all-deals" href="https://www.instagram.com/d.l_the_aroma/">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
        </div>
        <div class="row" style="margin-top: 40px;">
     
           
        <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto; margin-left: 40px;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.instagram.com/2bbiobeauty.aesthetic/">
                        <img class="pic-1" src="images/2B 인스타그램3.jpg">
                        <img class="pic-2" src="images/2b 인스타그램 로고 포함.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(225,48,108,0.7)">instagram</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>2B Bio Beauty <br> 공식 인스타그램</strong>
                    </div>
                    <HR>
                    <h3 class="title">30년전통의 고품격 오리지날 알라딘 필링</h3>
                    <a class="all-deals" href="https://www.instagram.com/2bbiobeauty.aesthetic/">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
             <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.youtube.com/@user-yf8us7ke5f">
                        <img class="pic-1" src="images/유경유투브 로고.jpg">
                        <img class="pic-2" src="images/유경유투브 유투브 로고.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(250,9,16,0.7)">youtube</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>유경아카데미 <br> 공식 유투브</strong>
                    </div>
                    <HR>
                    <h3 class="title">에스테틱 지식과 기술 교육을 한눈에</h3>
                    <a class="all-deals" href="https://www.youtube.com/@user-yf8us7ke5f">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
        <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.youtube.com/@user-yo2ew6so8q">
                        <img class="pic-1" src="images/픽부샵 로고.jpg">
                        <img class="pic-2" src="images/픽부샵 유투브 로고.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(250,9,16,0.7)">youtube</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>픽부샵  <br>공식 유투브</strong>
                    </div>
                    <HR>
                    <h3 class="title">우리가 픽한 피부 대통령의 에스테틱 피부샵</h3>
                    <a class="all-deals" href="https://www.youtube.com/@user-yo2ew6so8q">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
          <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://www.youtube.com/@user-ss1sm6fs5q">
                        <img class="pic-1" src="images/에부심 로고.jpg">
                        <img class="pic-2" src="images/에부심 유투브로고.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(250,9,16,0.7)">youtube</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>에부심 <br> 공식 유투브</strong>
                    </div>
                    <HR>
                    <h3 class="title">에스테틱 마케팅 이건 알고 하세요!</h3>
                    <a class="all-deals" href="https://www.youtube.com/@user-ss1sm6fs5q">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
      
        <div class="col-md-2 col-sm-6" style="float: none; margin: 0 auto; margin-right: 40px;">
            <div class="product-grid8">
                <div class="product-image8">
                    <a href="https://pf.kakao.com/_kvcEj">
                        <img class="pic-1" src="images/다올 카톡채널.jpg">
                        <img class="pic-2" src="images/다올 카톡채널 로고.jpg">
                    </a>
                    <ul class="social">
                        <li><a href="" class="fa fa-search"></a></li>
                    </ul>
                    <span class="product-discount-label" style="background-color: rgba(250,225,0,0.7)">kakao</span>
                </div>
                <div class="product-content">
                    <div class="price"><strong>다올코스메틱 <br> 공식 카카오채널</strong>
                    </div>
                    <HR>
                    <h3 class="title">다올코스메틱의 궁금한 사항은 여기로 문의 주세요!</h3>
                    <a class="all-deals" href="https://pf.kakao.com/_kvcEj">바로 가기<i class="fa fa-angle-right icon"></i></a>
                </div>
            </div>
        </div>
        
        </div>
              <div class="row" style="margin-top: 40px;">
         
       
        </div>
        
</div>
<hr>

<!------------------------------------------------------------------------------------------------>
<br>






<%@ include file ="../footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>