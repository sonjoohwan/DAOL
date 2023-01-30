<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- 참조  -->
<link rel="stylesheet" href="css/header_nav5.css">
<title>header</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">

let header = document.querySelector(".container");
let headerHeight = header.offsetHeight;

window.onscroll = function () {
  let windowTop = window.scrollY;
  	// 스크롤 세로값이 헤더높이보다 크거나 같으면 
	// 헤더에 클래스 'drop'을 추가한다
  if (windowTop >= headerHeight) {
    header.classList.add("drop");
  } 
  // 아니면 클래스 'drop'을 제거
  else {
    header.classList.remove("drop");
  }
};



</script>
</head>
<body>

 <nav class="navbar navbar-expand-lg  fixed-top" style="background-color: rgba(255,255,255,0.6); margin: 77px 0 0 0; line-height: 50px; height: 50px;"><!--배경 색변경-->
<!--  <nav class="navbar navbar-expand-lg navbar-light text-dark bg-black fixed-top" > -->
  <div class="container"  >
  
    <div class="collapse navbar-collapse" id="navbarResponsive" >
      <ul class="navbar-nav ml-auto" style="margin: 0 auto;">
      	 <tbody> 
	   <tr>
	   <td style="width:100%; margin-top: 20px;"> 
	   <div id="menu">
	<ul>
		<li ><a href="#"  >COMPANY</a>
			<ul>
				<li><a  href="daolcompany.jsp" >다올코스메틱</a></li>
				<li><a href="Directions.jsp" >오시는길</a></li>
			</ul>
		</li>
		<li style="margin-left : 50px; "><a href="#" ">BRAND</a>
			<ul>
				<li><a href="product_ph.daol" >pH포뮬라</a></li>
				<li><a href="product_et.daol" >에텔랑</a></li>
				<li><a href="product_de.daol" >디.엘더아로마</a></li>
				<li><a href="product_2B.daol" >2B바이오뷰티</a></li>
				<li><a href="product_my.daol" >미용기기</a></li>
				<li><a href="other_product.daol" >기타 제품</a></li>
				
			</ul>
		</li>
		<li style="margin-left : 50px; "><a href="#" >NEWS&EVENT</a>
			<ul>
				<li><a href="news.jsp" >NEWS</a></li>
				<li><a href="sns.jsp" >SNS</a></li>
			</ul>
		</li>
		<li style="margin-left : 50px; "><a href="#" >CONTACT-US</a>
			<ul>
				<li><a href="contact_us.jsp" >문의</a></li>
				
			</ul>
		</li>
		
		</ul>
		</div>
		</td>
		</tr>
	</ul>
</div>
	   </tbody>
      </ul>
    </div>
  </div>

</nav> 

 <nav class="navbar navbar-expand-lg fixed-top" style="background-color: rgba(255,255,255,0.6); text-align: center; border-bottom: 1px solid black; "><!--배경 색변경-->
<!--  <nav class="navbar navbar-expand-lg navbar-light text-dark bg-black fixed-top" > -->
    <a class="navbar-brand" href="main.jsp" style="margin: 0 auto;"><img style ="width: 300px; height: 50px;"src="images/다올로고 블랙.png"></a>
    		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
    		<img class="navbar-toggler-icon" src="images/toggler3.png" style="height: 30px; width: 30px;">
        </button>
        

</nav> 
<!-- Page Content -->

      <!-- Page Content -->



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>

