<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<%-- css파일 외부링크 --%>
<link rel="stylesheet" href="${contextPath}/resources/css/handmadelogin.css"/>
</head>
<body>
<div class="wrapper">
	<form id="frmLogin" name="frmLogin">
		<h2><a href="${contextPath }/" style="text-decoration : none; color : black;"><span>Deer</span> Beer</a></h2>
		<h2>회원가입</h2><!-- 아래 주석은 나중에 사용할 예정 중복체크 아이디 확인 기능 -->
		
		<%-- 아이디 --%>
		<div class="form-group">
			<input type="text" name="userId" id="userId" class="form-control" placeholder="아이디"/>
			<!-- <button type="button" id="btnIdDup" onclick="idDupCheck()">중복체크</button> --><br>
		</div>
<!-- 		<div class="form-group">
			<input type="text" name="dupmid" class="form-control" placeholder="아이디 확인"/><br>
		</div> -->
		
		<%-- 암호 --%>
		<div class="form-group">
			<input type="password" name="userPw" id="userPw" class="form-control" placeholder="암호"/><br>
		</div>
		
		<!-- 
		<div class="form-group">
			<input type="text" name="reuserPw" id="reuserPw" class="form-control" placeholder="암호확인"/><br>
		</div> -->
		
		<%-- 이름 --%>
		<div class="form-group">
			<input type="text" name="userName" id="userName" class="form-control" placeholder="이름"/><!-- 
			<button type="button" id="btnIdDup" onclick="idDupCheck()">중복체크</button> --><br>
		</div>
		
		<%-- 닉네임 --%>
		<div class="form-group">
			<input type="text" name="userNickname" id="userNickname" class="form-control" placeholder="닉네임"/><!-- 
			<button type="button" id="btnIdDup" onclick="idDupCheck()">중복체크</button> --><br>
		</div>
		
		<%-- 전화번호 --%>
		<div class="form-group">
			<input type="text" name="userPhonenum" id="userPhonenum" class="form-control" placeholder="전화번호"/><!-- 
			<button type="button" id="btnIdDup" onclick="idDupCheck()">중복체크</button> --><br>
		</div>
		
		<%-- 주소 --%>
		<div class="form-group">
			<input type="text" name="userAddress" id="userAddress" class="form-control" placeholder="주소"/><!-- 
			<button type="button" id="btnIdDup" onclick="idDupCheck()">중복체크</button> --><br>
		</div>
		
		
		<%-- 버튼 --%>
		<div class="text-center">
			<button type="button" id="sendMember">Sign-In</button>
		</div>
		
		<%-- a태그로 페이지 이동 --%>
		 <p class="mt-20">이미 회원이신가요? <a href="${contextPath}/member/login">로그인</a></p>
	</form>
	 
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
/* 	
	일단 보류 
	
	 onclick="sendMember()"
	
	
	
 $("#sendMember").on("click",function(){
		var frmLogin = $("#frmLogin");
		frmLogin.method = "get";
		frmLogin.action = "${contextPath}/";
		frmLogin.submit();
	}); */
	
    //아이디 비밀번호 검증
	if(userId == null || userId.length() == 0) {
		alert("아이디를 입력하세요");
	} else if(userPw == null || userPw.length() == 0){
		alert("비밀번호를 입력하세요");
	} else {
		alert("로그인 성공!");
	}
</script>
</body>
</html>