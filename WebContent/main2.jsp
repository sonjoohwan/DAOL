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
  <section class="py-5">
  <div class="container text-center">
    <h1 class="font-weight-light">Daol Cosmatic</h1>
    <p class="lead">Welcome to DaolCosmatic <a href="#">Daol</a>!</p>
  </div>
</section>
    <main role="main">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>


      <!-- Marketing messaging and featurettes
      ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->

      <div class="container marketing">

<!-- Start of Demo 4 - Layla Effect -->    	
	<div class="row p-1">
		<div class="col-xl-4 col-lg-5 col-md-6 col-sm-12 col-12 mx-auto p-1">
			<div class="sadie-box">
				<img src="https://static.onecms.io/wp-content/uploads/sites/37/2016/02/15224033/white-vintage-contemporary-kitchen-after-102762705.jpg">
				<div class="sadie-caption">
					<div class="sadie-title">
						Sadie Effect
					</div>
					<div class="sadie-desc">
						This is the sadie effect. Learn more by clicking here.
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-4 col-lg-5 col-md-6 col-sm-12 col-12 mx-auto p-1">
			<div class="sadie-box">
				<img src="https://static.onecms.io/wp-content/uploads/sites/37/2016/02/15224033/white-vintage-contemporary-kitchen-after-102762705.jpg">
				<div class="sadie-caption">
					<div class="sadie-title">
						Sadie Effect
					</div>
					<div class="sadie-desc">
						This is the sadie effect. Learn more by clicking here.
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-4 col-lg-5 col-md-6 col-sm-12 col-12 mx-auto p-1">
			<div class="sadie-box">
				<img src="https://static.onecms.io/wp-content/uploads/sites/37/2016/02/15224033/white-vintage-contemporary-kitchen-after-102762705.jpg">
				<div class="sadie-caption">
					<div class="sadie-title">
						Sadie Effect
					</div>
					<div class="sadie-desc">
						This is the sadie effect. Learn more by clicking here.
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<!-- End of Demo 4 - Layla Effect -->
	
	<!-- Start of Demo 5 - Zoe Effect -->
	


        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
            <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

      </div><!-- /.container -->
      <%@ include file="mainbottom.jsp" %>

      <!-- FOOTER -->
    <%@ include file="footer.jsp" %>
    </main>
    
    

    <!-- Bootstrap core JavaScript
    ================================================== -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
  </body>
</html>
