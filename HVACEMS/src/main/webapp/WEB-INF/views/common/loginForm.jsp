<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<title>LOGIN</title>
<head>
<style>
body {
	background-image : url('<%=request.getContextPath() %>/resources/img/clean_room_black.png');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 100vh;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
}

.loginTitle {
	font-family: 'Raleway', sans-serif;
	justify-content: center;
	margin: 0 0 0px;
}

.loginDivider {
	border-top: 1px solid #aaa;
}

.loginWrapper {
	width: 400px;
	height: 300px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: rgba(255, 255, 255, 0.8);
	backdrop-filter: blur(10px);
	box-shadow: 0px 0px 100px 0px white;
	padding: 20px;
	border-radius: 10px;
}

.button2 {
	font-family: "Noto Sans KR", sans-serif;
	border:none;
	border-radius:10px;
}

.button2:hover {
	font-family: "Noto Sans KR", sans-serif;
	color: white;
	background-color: #17A2B8;
	border:none;
	border-radius:10px;
}
</style>
</head>

<body>
	<div>
	   <div class="loginWrapper">
		<div>
		 <div>
		 <div class="loginTitle">
		 	<h3 style="font-weight: bold; text-align: center;">HVACEMS</h3>
		 </div>
		 <hr class="loginDivider">
			<form action="login.do"	method="post">
				<input name="retUrl" value="${retUrl }" type="hidden" />
				<div class="form-group has-feedback">
					<input type="text" class="form-control" name="adminId" placeholder="아이디를 입력하세요." value="">
					<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" name="adminPwd" placeholder="패스워드를 입력하세요."  value="">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row" style="display: fix; margin-top: 20px">
					<button type="button" class="button2" onclick="location.href='<%=request.getContextPath() %>/common/joinForm.do';">회원가입</button>
					<div style="width: 10px;"></div>
					<button type="submit" class="button2">로그인</button>
					<div style="width: 10px;"></div>
					<button type="button" class="button2" onclick="location.href='<%=request.getContextPath() %>/common/findForm.do';">아이디/비밀번호 찾기</button>
				</div>
			</form>
			
		</div>
		<!-- /.login-box-body -->
	  </div>	
	</div>
	<!-- /.login-box -->
	
  </div>    

<c:if test="${not empty message }" >
<script>
	alert("${message}");
</script>
</c:if> 
  
</body>
  
  
  
  
  
  
