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
<title>문의하기 </title>
 <link rel="stylesheet" href="css/contact-us.css">
<script type="text/javascript">
	function check(){
		if(!f.subject.value){
			alert("제목을 입력해주세요")
			return f.subject.focus();
		}
	
		if(!f.content.value){
			alert("문의내용을 입력해주세요")
			return f.content.focus();
		}
		 if(f.info[0].checked == false && f.info[1].checked == false ){
				alert("개인정보동의를 선택해주세요.")
				return;
		}	
		//이메일 제외
		f.submit();
	}


</script>
 

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
 <h5 style="text-align: center; margin-top: 40px; margin-bottom: 40px;"><strong style="font-size: 50px; ">Contact-us</strong></h5>
<div class="container" style="margin:0 auto; width: 100%; height: 100%;">
		<form action = "mailSendMulti_OtherFileAdd" name="f" method ="post"  style="height: 100%;">
			<table  class="table" style="border: 1px solid #dddddd; width: 1000px;" >
			<thead>
				<tr>
					<th colspan ="2" style="background-color : #eeeeee; text-align : center; font-size: 20px;">문의하기</th>
					
				</tr>
			</thead>
			
				<input type="hidden" class="form-control" type="text" name="sender" size="40" value="sjwpow12@naver.com">
			
				<input type="hidden" class="form-control" type="text" name="receiver" size="40" value="sjwpow12@naver.com">
			
			<tr>
			<th style="text-align: center; padding-top: 20px;">제목</th>
				<td>
					<div class="input-group" style="width: 450px;">
						<input class="form-control" type="text" name="subject" size="50" >
				</td>
				</div>
			</tr>
			<tr>
				<th style="text-align: center; padding-top: 20px;">문의 내용</th>
				<td>
				<!--★★ 주의 : 아래줄 textarea태그 사이에 빈칸 없애기 -->
					<div class="input-group" >
					<textarea class="form-control" name="content" placeholder="성함,연락처,이메일,지역,샾명,문의내용을 적어주세요."  style="height: 250px;">
이름 : 
연락처 :
이메일  : 
지역 :
샾명 : 
문의 내용 :	</textarea>
				</td>
				</div>
			</tr>
		<tr>
					<th style="text-align: center; padding-top: 20px;">개인정보 수집 및 이용 동의 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<td>
            <div class="text">가. 개인정보의 수집 및 이용 목적

			                국가공간정보포털은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
			        
			                나. 정보주체와 법정대리인의 권리ㆍ의무 및 행사방법
			                ① 정보주체(만 14세 미만인 경우에는 법정대리인을 말함)는 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.
			                ② 제1항에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편 등을 통하여 하실 수 있으며, 기관은 이에 대해 지체 없이 조치하겠습니다.
			                ③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
			                ④ 개인정보 열람 및 처리정지 요구는 개인정보 보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
			                ⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
			                ⑥ 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
			                
			                다. 수집하는 개인정보의 항목
			                국가공간정보포털 회원정보(필수): 이름, 이메일(아이디), 비밀번호
			                
			                라. 개인정보의 보유 및 이용기간
			                국가공간정보포털은 법령에 따른 개인정보 보유ㆍ이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유ㆍ이용기간 내에서 개인정보를 처리ㆍ보유합니다.
			                
			                - 수집근거: 정보주체의 동의
			                - 보존기간: 회원 탈퇴 요청 전까지(1년 경과 시 재동의)
			                - 보존근거: 정보주체의 동의
			                
			                마. 동의 거부 권리 및 동의 거부에 따른 불이익
			                위 개인정보의 수집 및 이용에 대한 동의를 거부할 수 있으나, 동의를 거부할 경우 회원 가입이 제한됩니다.</p>
            </div>
					<label style="text-align: right;"><input type="radio" name="info" >동의함</label>
					&nbsp;&nbsp;&nbsp;
					<label style="text-align: right;"><input type="radio" name="info"  >동의안함</label>
					</td>
				</tr>	
	<tr>
		<td align=center colspan=2>
			<input type="submit" class="btn btn btn-outline-dark btn-lg btn-block" value="보내기" onclick="check(); return false;">
		</td>
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