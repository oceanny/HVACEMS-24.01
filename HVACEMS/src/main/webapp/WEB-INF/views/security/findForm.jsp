<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>아이디/비밀번호 찾기</title>
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

.joinWrapper {
	width: 400px;
	height: 350px;
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
	<div class="joinWrapper">
		<div>
			<div>
				<div class="joinTitle">
					<h3 style="font-weight: bold; text-align: center;">아이디 찾기</h3>
				</div>
				<hr class="joinDivider">
				<div class="">
					<form role="idForm" action="findId.do" method="post">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">이름</span>
							</div>
							<input name="adminName" type="text" class="form-control" id="adminNameId" placeholder="이름을 입력하세요.">
						</div>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-envelope"></i></span>
							</div>
							<input name="adminEmail" type="email" class="form-control" id="adminEmailId" placeholder="이메일을 입력하세요.">
						</div>
						<div class="row" style="justify-content: center; margin-top: 20px">
							<button type="button" class="button2"
								onclick="location.href='<%=request.getContextPath()%>/common/loginForm.do';">돌아가기</button>
							<div style="width: 10px;"></div>
							<button type="button" id="joinButton" class="button2" onclick="findId_go();">아이디 찾기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<div class="joinWrapper">
		<div>
			<div>
				<div class="joinTitle">
					<h3 style="font-weight: bold; text-align: center;">비밀번호 찾기</h3>
				</div>
				<hr class="joinDivider">
				<div class="">
					<form role="pwdForm" action="findPwdQuest.do" method="post">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">이름</span>
							</div>
							<input name="adminName" type="text" class="form-control" id="adminNamePwd" placeholder="이름을 입력하세요.">
						</div>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">아이디</span>
							</div>
							<input name="adminId" type="text" class="form-control" id="adminId" placeholder="아이디를 입력하세요.">
						</div>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-envelope"></i></span>
							</div>
							<input name="adminEmail" type="email" class="form-control" id="adminEmailPwd" placeholder="이메일을 입력하세요.">
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
	
<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

<script>
	function findId_go() {
		if (!$('input[id="adminNameId"]').val()) {
			alert("이름 입력은 필수입니다.");
			return;
		}
		if (!$('input[id="adminEmailId"]').val()) {
			alert("이메일 입력은 필수입니다.");
			return;
		}
		
		var form = $('form[role="idForm"]');
		form.submit();
	}
</script>

<script>
	function findPwd_go() {
		if (!$('input[id="adminNamePwd"]').val()) {
			alert("이름 입력은 필수입니다.");
			return;
		}
		if (!$('input[name="adminId"]').val()) {
			alert("아이디 입력은 필수입니다");
			return;
		}
		if (!$('input[id="adminEmailPwd"]').val()) {
			alert("이메일 입력은 필수입니다.");
			return;
		}
		
		var form = $('form[role="pwdForm"]');
		form.submit();
	}
</script>

</body>
