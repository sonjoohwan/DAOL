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

<img class="top-img" src="images/다올_홈페이지_브랜드스토리.jpg" >           
<!------------------------------------------------------------------------------------>

	<div style="text-align:center; padding: 0px; border-bottom: 1px solid black; " >
		<ul class="custom-navbar" >
		<li><a href="main.jsp" class="titletip"><strong>HOME</strong><span class="textTop">홈으로</span></a></li>
            <li><a href="news.jsp" class="titletip"><strong>NEWS</strong><span class="textTop">뉴스</span></a></li>
            <li><a href="sns.jsp" class="titletip"><strong>SNS</strong><span class="textTop">이벤트</span></a></li>
        </ul>
	</div>
   <!------------------------------------------------------------------------------------>
   <h5 style="text-align: center; margin-top: 40px; margin-bottom: 40px;"><strong style="font-size: 50px; ">NEWS</strong></h5>  
   <!------------------------------------------------------------------------------------>  
		
	<div class="container">
  <!-- DEMO 2-->
  <div class="py-12">
    <div class="row">
      <!-- DEMO 2 Item-->
      <div class="col-lg-4 mb-3 mb-lg-0">
      	<div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786258/hoverSet-2_lt7geh.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
          <a href="news_detail_1.jsp">
            <h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
            <p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
            </a>
          </div>
        </div>
      </div>
      

      <!-- DEMO 2 Item-->
      <div class="col-lg-4">
        <div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786261/hoverSet-1_pha5qe.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
            <a href="#">
            <h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
            <p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
            </a>
          </div>
        </div>
      </div>
       <div class="col-lg-4">
        <div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786261/hoverSet-1_pha5qe.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
              <a href="#">
            <h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
            <p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
            </a>
          </div>
        </div>
      </div>
      </div>
    </div>

<br>
  <div class="py-12">
    <div class="row">
      <!-- DEMO 2 Item-->
      <div class="col-lg-4 mb-3 mb-lg-0">
        <div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786258/hoverSet-2_lt7geh.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
  				<a href="#">
            <h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
            <p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
            	</a>
          </div>
        </div>
      </div>

      <!-- DEMO 2 Item-->
      <div class="col-lg-4">
        <div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786261/hoverSet-1_pha5qe.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
          	  <a href="#">
            	<h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
            	<p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
            </a>
          </div>
        </div>
      </div>
       <div class="col-lg-4">
        <div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786261/hoverSet-1_pha5qe.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
        	  <a href="#">
		            <h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
		            <p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
	          </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <br>
  
  <div class="py-12">
    <div class="row">
      <!-- DEMO 2 Item-->
      <div class="col-lg-4 mb-3 mb-lg-0">
        <div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786258/hoverSet-2_lt7geh.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
          	  <a href="#">
            	<h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
            	<p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
            </a>
          </div>
        </div>
      </div>

      <!-- DEMO 2 Item-->
      <div class="col-lg-4">
        <div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786261/hoverSet-1_pha5qe.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
          		<a href="#">
            		<h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
            		<p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
           		</a>
          
          </div>
        </div>
      </div>
       <div class="col-lg-4">
        <div class="hover hover-2 text-white rounded"><img src="https://res.cloudinary.com/mhmd/image/upload/v1570786261/hoverSet-1_pha5qe.jpg" alt="">
          <div class="hover-overlay"></div>
          <div class="hover-2-content px-5 py-4">
          	 <a href="#">
          		  <h3 class="hover-2-title text-uppercase font-weight-bold mb-0"> <span class="font-weight-light">Image </span>Caption</h3>
            	<p class="hover-2-description text-uppercase mb-0">Lorem ipsum dolor sit amet, consectetur <br>adipisicing elit.</p>
            	</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>

<!------------------------------------------------------------------------------------------------>
<br><br>

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
  <!--  <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true" style="color: 	#DC143C;">&laquo;</span>
      </a>
    </li> -->
    <li class="page-item"><a class="page-link" href="news.jsp" style="color: black;">1</a></li>
    <li class="page-item"><a class="page-link" href="news2.jsp" style="color: black;">2</a></li>
    <li class="page-item"><a class="page-link" href="news3.jsp" style="color: black;">3</a></li>
        <li class="page-item"><a class="page-link" href="news4.jsp" style="color: black;">4</a></li>
            <li class="page-item"><a class="page-link" href="news5.jsp" style="color: black;">5</a></li>
                <li class="page-item"><a class="page-link" href="news6.jsp" style="color: black;">6</a></li>
   <!--   <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true" style="color: 	#DC143C;">&raquo;</span>
      </a>
    </li> -->
  </ul>
</nav>
<br>
<hr>

<!------------------------------------------------------------------------------------------------>
<br>




<%@ include file ="../footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>