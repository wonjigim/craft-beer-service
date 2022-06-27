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
			<!-- <input type="button" id="check" value="중복체크"> -->
			<!-- &nbsp;<p id="idCheck"></p> -->
			<!-- <button type="button" id="btnIdDup" onclick="idDupCheck()">중복체크</button> --><br>
		</div>
<!-- 		<div class="form-group">
			<input type="text" name="dupmid" class="form-control" placeholder="아이디 확인"/><br>
		</div> -->
		
		<%-- 암호 --%>
		<div class="form-group">
			<input type="password" name="userPw" id="userPw" class="form-control" placeholder="암호"/><br>
		</div>
		
		<%-- 암호 확인 --%>
		<div class="form-group">
			<input type="password" name="userPw" id="userPw" class="form-control" placeholder="암호"/><br>
			<input type="password" id="passwdCheck" name="passwdCheck">
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
			<input type="number" name="userPhonenum" id="userPhonenum" class="form-control" placeholder="전화번호"/><!-- 
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
	
	
	<!-- <h1>회원가입</h1>
	<hr>
	<form id="signFrm" name="signFrm" action="signUp.do">
		<table>
			<tbody>
				<tr>
					<td>아이디</td>
					<td><input type="text" id="userId" name="userId" ></td>
					<td><input type="button" id="check" value="중복체크"></td>
				</tr>
				<tr>
					<td colspan=3 id="idCheck"></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td colspan="2"><input id="passwd" name="passwd" type="password"></td>
				</tr>
				<tr>
					<td>패스워드 확인</td>
					<td colspan="2"><input id="passwdCheck" name="passwdCheck" type="password"></td>
				</tr>
				
				<tr>
					<td colspan="3"><input type="button" id="signUp" value="회원가입"></td>
				</tr>
			</tbody>
		</table>
	</form> -->
	 
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
 	
  $("#sendMember").on("click",function(){
	    var frmLogin = $("#frmLogin");
	    var userId = $("#userId").val();
		var userPw = $("#userPw").val();
		var userName = $("#userName").val();
		var userNickname = $("#userNickname").val();
		var userPhonenum = $("#userPhonenum").val();
		var userAddress = $("#userAddress").val();
		
		
	    //아이디 비밀번호 검증
		if(userId == null || userId.length == 0) {
			alert("아이디를 입력하세요");
		} else if(userPw == null || userPw.length == 0){
			alert("비밀번호를 입력하세요");
		} else if(userName == null || userName.length == 0){
			alert("이름을 입력하세요");
		} else if(userNickname == null || userNickname.length == 0){
			alert("닉네임을 입력하세요");
		} else if(userPhonenum == null || userPhonenum.length == 0){
			alert("번호를 입력하세요");
		} else if(userAddress == null || userAddress.length == 0){
			alert("주소를 입력하세요");
		} else {
			frmLogin.method = "get";
			frmLogin.action = "${contextPath}/";
			frmLogin.submit();
		}
	});
	
  
  //아작스
/* $(document).ready(function(e){
		
		var idx = true;
		
		$('#sendMember').click(function(){
			if($.trim($('#userId').val()) == ''){
				alert("아이디 입력");
				$('#userId').focus();
				return;
			}else if($.trim($('#userPw').val()) == ''){
				alert("패스워드 입력");
				$('#userPw').focus();
				return;
			}
			//패스워드 확인
			else if($('#userPw').val() != $('#passwdCheck').val()){
				alert('패스워드가 다릅니다.');
				$('#userPw').focus();
				return;
			}
			
			if(idx==false){
				alert("아이디 중복체크를 해주세요.");
				return;
			}else{
				$('#frmLogin').submit();
			}
		});
		
		$('#check').click(function(){
			$.ajax({
				url: "${contextPath}/",
				type: "GET",
				data:{
					"userId":$('#userId').val()
				},
				success: function(data){
					if(data == 0 && $.trim($('#userId').val()) != '' ){
						idx=true;
						$('#userId').attr("readonly",true);
						var html="<p style='color: green'>사용가능</p>";
						$('#idCheck').empty();
						$('#idCheck').append(html);
					}else{

						var html="<p style='color: red'>사용불가능한 아이디 입니다.</p>";
						$('#idCheck').empty();
						$('#idCheck').append(html);
					}
				},
				error: function(){
					alert("서버 에러");
				}
			});
		});
	}); */
</script>
</body>
</html>