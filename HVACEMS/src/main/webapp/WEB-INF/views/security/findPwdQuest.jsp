<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>비밀번호 찾기</title>
<head>
<style>
body {
	background-image: url('<%=request.getContextPath()%>/resources/img/clean_room_black.png');
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	height: 100vh;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
}

.noWrapper {
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

.joinWrapper {
	width: 400px;
	height: 580px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: rgba(255, 255, 255, 0.8);
	backdrop-filter: blur(10px);
	box-shadow: 0px 0px 100px 0px white;
	padding: 20px;
	border-radius: 10px;
}

.joinTitle {
	font-family: 'Raleway', sans-serif;
	justify-content: center;
	margin: 0 0 0px;
}

.joinDivider {
	border-top: 1px solid #aaa;
}

.button2 {
	font-family: "Noto Sans KR", sans-serif;
	border: none;
	border-radius: 10px;
}

.button2:hover {
	font-family: "Noto Sans KR", sans-serif;
	color: white;
	background-color: #17A2B8;
	border: none;
	border-radius: 10px;
}
</style>
</head>
<body>
	<c:if test="${empty admin }" >
		<div class="noWrapper">
			<div>
				<p style="font-weight: bold; text-align: center; font-size: 1.3em; margin: 20px;">일치하는 가입정보가 없습니다.<br>아이디 찾기를 진행해주세요.</p>
				<div class="row" style="justify-content: center; margin-top: 20px">
					<button type="button" class="button2" onclick="location.href='<%=request.getContextPath()%>/common/findForm.do';">돌아가기</button>
				</div>
			</div>
		</div>
	</c:if>
	<c:if test="${!empty admin }" >
		<div class="joinWrapper">
			<div>
				<div>
					<div class="joinTitle">
						<h3 style="font-weight: bold; text-align: center;">비밀번호 찾기</h3>
					</div>
					<hr class="joinDivider">
					<div class="">
						<form role="pwdForm" action="findPwd.do" method="post">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text">이름</span>
								</div>
								<input name="adminName" type="text" class="form-control" id="adminName" value="${admin.adminName }" readonly>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text">아이디</span>
								</div>
								<input name="adminId" type="text" class="form-control" id="adminId" value="${admin.adminId }" readonly>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-envelope"></i></span>
								</div>
								<input name="adminEmail" type="email" class="form-control" id="adminEmail" value="${admin.adminEmail }" readonly>
							</div>
							<div>
								<div class="input-group-prepend">
									<span class="input-group-text">비밀번호 찾기 질문</span>
								</div>
							</div>
							<div class="input-group mb-3">
								<input name="adminQuest" type="text" class="form-control" id="adminQuest" value="${admin.adminQuest }" readonly>
							</div>
							<div>
								<div class="input-group-prepend">
									<span class="input-group-text">비밀번호 찾기 답변</span>
								</div>
							</div>
							<div class="input-group mb-3">
								<input name="adminAns" type="text" class="form-control" id="adminAns" placeholder="비밀번호 찾기 답변을 입력하세요.">
							</div>
							<div class="row" style="justify-content: center; margin-top: 20px">
								<button type="button" class="button2"
									onclick="location.href='<%=request.getContextPath()%>/common/loginForm.do';">돌아가기</button>
								<div style="width: 10px;"></div>
								<button type="button" id="joinButton" class="button2" onclick="findPwd_go();">비밀번호 찾기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</c:if>
	
<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

<script>
	function findPwd_go() {
		if (!$('input[name="adminAns"]').val()) {
			alert("비밀번호 찾기 답변을 입력하세요.");
			return;
		}
		
		var form = $('form[role="pwdForm"]');
		form.submit();
	}
</script>

</body>
