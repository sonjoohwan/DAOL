<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>
  <head>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- 참조  -->
<link rel="stylesheet" href="css/main_middle.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
    <meta charset="utf-8">

    <title>다올코스메틱 메인화면</title>

  </head>
  <script type="text/javascript">
  
  
  document.addEventListener('DOMContentLoaded', function () {
	    let wrapper = document.getElementById('wrapper');
	    let topLayer = wrapper.querySelector('.top');
	    let handle = wrapper.querySelector('.handle');
	    let skew = 0;
	    let delta = 0;

	    if (wrapper.className.indexOf('skewed') != -1) {
	        skew = 1000;
	    }

	    wrapper.addEventListener('mousemove', function (e) {
	        delta = (e.clientX - window.innerWidth / 2) * 0.5;

	        handle.style.left = e.clientX + delta + 'px';

	        topLayer.style.width = e.clientX + skew + delta + 'px';
	    });
	});
  
  
  </script>
  <body>
 <section id="wrapper" class="skewed">
        <div class="layer bottom">
            <div class="content-wrap">
                <div class="content-body">
                   <!--  <h1 style="color: black;">Daol Cosmatic</h1> -->
                </div>
            </div>

            <div class="layer top">
                <div class="content-wrap">
                    <div class="content-body">
                    	
                       <!-- <h1><a href="https://www.youkyungacademy.com/"></a></h1> --> 
                    </div>
                </div>
            </div>
        </div>
        <div class="handle"></div>
    </section>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
  </body>
</html>
