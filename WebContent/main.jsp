<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>
  <head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- 참조  -->
<link rel="stylesheet" href="css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
    <meta charset="utf-8">

    <title>다올코스메틱 메인화면</title>

  </head>
  <body>
<%@ include file="header_nav3.jsp" %>
<%@ include file="topslide.jsp" %>
<!--   <section class="py-5">
  <div class="container text-center">
    <h1 class="font-weight-light">Daol Cosmatic</h1>
    <p class="lead">Welcome to DaolCosmatic <a href="#">Daol</a>!</p>
  </div>
</section> -->
<br><br>
        <section class="overview-wrap" id="overview" >
            <div class="container">
                <div class="contenedor">
                    <h2 class="title-overview wow fadeInUp" style="color: black;">Daol</h2>
                      <div class="hr"></div>
                      <br>
                    <div class="row" >
                        <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
                            <div class="overview-box mx-auto">
                                <div class="features-icons-icon d-flex">
                                    <i class="fa-sharp fa-solid fa-shield-heart fa-5x html5 m-auto"></i>
                                </div>
                                <h5>SAFEPRODUCT</h5>
                                <p class=" mb-0">믿고 사용할 수 있는 안전한 제품만을 제공 합니다.</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
                            <div class="overview-box mx-auto">
                                <div class="features-icons-icon d-flex">
                                    <i class="fa-sharp fa-solid fa-hand-holding-heart fa-5x css3 m-auto"></i>
                                </div>
                                <h5>SPECIALITY</h5>
                                <p class=" mb-0">엄선한 전문 제품으로 특별함을 선사해 드립니다.</p>
                            </div>
                        </div>
                       <div class="col-md-6 col-lg-4 wow bounceInUp" data-wow-duration="1.4s">
                            <div class="overview-box mx-auto">
                                <div class="features-icons-icon d-flex">
                                    <i class="fa fa-solid fa-thumbs-up fa-5x android m-auto"></i>
                                </div>
                                <h5>SATISFACTION</h5>
                                <p class=" mb-0">끊임없는 노력으로 최고의 만족감을 제공 합니다.</p>
                            </div>
                        </div>
                       
                    </div>

                  
                </div>
            </div>
        </section>

	


        <!-- START THE FEATURETTES -->

<%@ include file="main_middle.jsp" %>
        


        <!-- /END THE FEATURETTES -->

      <%@ include file="mainbottom.jsp" %>

      <!-- FOOTER -->
    <%@ include file="footer.jsp" %>
    
    

    <!-- Bootstrap core JavaScript
    ================================================== -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
  </body>
</html>
