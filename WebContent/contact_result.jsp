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
<title>메일 발송 완료 </title>
 <link rel="stylesheet" href="css/contact-us.css">
 
 

</head>
<body>

<%@ include file="../header_nav3.jsp" %>

<img class="top-img" src="images/#.jpg" style="background: black;">           
<!------------------------------------------------------------------------------------>

	<div style="text-align:center; padding: 0px; border-bottom: 1px solid black; " >
		<ul class="custom-navbar" >
            <li><a href="main.jsp" class="titletip"><strong>HOME</strong><span class="textTop">홈으로</span></a></li>
            <li><a href="contact_us.jsp" class="titletip"><strong>CONTACT-US</strong><span class="textTop">문의하기</span></a></li>
        </ul>
	</div>
   <!------------------------------------------------------------------------------------>  
    <div class ="divide30"></div>  
 <h5 style="text-align: center; margin-top: 40px; margin-bottom: 30px;"><strong style="font-size: 50px; ">Contact-us</strong></h5>
<!-- <div class="container">
	<div class="row">
		 <div class="col-md-7 offset-md-2">
                    <span class="anchor" id="formUserEdit"></span>
                   form user info
                    <div class="card card-outline-secondary">
                        <div class="card-header">
                            <h3 class="mb-0">문의하기</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off">
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label"><b style="font-size: 20px; text-align: center;" >이름</b></label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" value="">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">상호명</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" value="">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">연락처</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="email" value="">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">이메일</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" value="">
                                    </div>
                                </div>
                                
                               
                                <div class="form-group row">
                                    <label class="col-lg-3 col-form-label form-control-label">내용</label>
                                    <div class="col-lg-9">
                                        <input class="form-control" type="text" value="" style="height: 200px;">
                                    </div>
                                </div>
                              
                               
                                <div class="form-group row" style="text-align: right;">
                                    <label class="col-lg-3 col-form-label form-control-label"></label>
                                    <div class="col-lg-9">
                                        <input type="button" class="btn btn-primary" value="문의하기">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    /form user info

                </div>
	</div>
</div> -->

<!------------------------------------------------------------------------------------------------>

<div class="container" style="margin:0 auto; width: 100%; height: 100%;">
		<form action = "mailSendMulti" method ="post"  style="height: 100%;">
			<table  class="table" style="border: 1px solid #dddddd; width: 1000px;" >
			<thead>
				<tr>
					<th colspan ="2" style="background-color : #eeeeee; text-align : center;"><p class="blink">!발송 완료!</p></th>
				</tr>
			</thead>
			<tr>
			<th colspan="2" style="text-align: center;">안녕하세요. 다올코스메틱 입니다.<br>문의하신 메일은 정상적으로 발송 되었습니다.<br>감사합니다.</th><br>
			</tr>
				
		
			
			</table>
		</form>
		</div>
	<br>
	
<br>




<%@ include file ="../footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>