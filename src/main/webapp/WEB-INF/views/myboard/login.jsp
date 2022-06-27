<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- JSTL 라이브러리 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 컨텍스트명 또는 프로젝트명 절대경로 --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${contextPath}/resources/css/handmadelogin.css"/>
<title>로그인</title>
</head>
<body>
<div class="wrapper">
	<%-- form 요소(태그) : 데이터베이스에 보내거나 값을 보낼 역할을 담당 | method = 전송 유형, action = 아래 입력된 값을 보낼 경로 --%>
	<%-- 				속성값을 자바스크립트 또는 제이쿼리로도 작성 가능 --%>
	<%-- form > input... --%>
	<form id="frmLogin" name="frmLogin">
		<h2><span>Deer</span> Beer</h2>
		<h2>로그인</h2>
		
		<%-- 아이디 --%>
		<div class="form-group">
			<input type="text" name="userId" id="userId" class="form-control" placeholder="아이디" required="required"/>
		</div>
		
		<%-- 암호 --%>
		<div class="form-group">
			<input type="password" name="userPw" id="userPw" class="form-control" placeholder="암호" required="required"/><br><br>
		</div>
		
		<%-- 전송 역할 --%>
		<div class="text-center">
			<button type="button" id="sendMember">Login</button>
		</div>
		<%-- a요소(태그) : 다른 페이지로 이동하는 역할 | ${contextPath} : 절대경로, 프로젝트명을 뜻하며, JSTL 라이브러리로 사용 --%>
		 <p class="mt-20">회원이 아니신가요? <a href="${contextPath}/member/signup">회원가입</a></p>
	</form>
</div>

<%-- 제이쿼리 cdn (홈페이지에서 제공해주는 API 역할) 스크립트 --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	<%-- $("선택자") : 특정 요소(태그)에 Id나 class의 속성명을 말함 --%>
	<%-- 			 자바스크립트의 document.getelementbyid() 또는 queryselector() 동일 --%>
	<%-- 버튼이 클릭 되면 --%>
	$("#sendMember").on("click",function(){
		
		var userId = $("#userId").val();
		var userPw = $("#userPw").val();
	
		 //아이디 비밀번호 검증
		if(userId == null || userId.length == 0) {
			alert("아이디를 입력하세요");
			return false;
		} else if(userPw == null || userPw.length == 0){
			alert("비밀번호를 입력하세요");
			return false;
		} else {
			//alert("로그인 테스트");
			var frmLogin = $("#frmLogin");
			<%-- form의 속성 추가 --%>
			frmLogin.attr("method","get"); //메서드 속성은 post로 URL(주소)에 값을 안 보이게
			frmLogin.attr("action","${contextPath}/member/login"); //값을 보낼 경로
			frmLogin.submit();//전송
			
		} 
		 
		
	});
</script>
</body>
</html>