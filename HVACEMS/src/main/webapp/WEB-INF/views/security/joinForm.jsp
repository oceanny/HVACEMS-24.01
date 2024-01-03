<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>회원가입</title>
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
	<div class="joinWrapper">
		<div>
			<div>
				<div class="joinTitle">
					<h3 style="font-weight: bold; text-align: center;">회원가입</h3>
				</div>
				<hr class="joinDivider">
				<div class="">
					<form role="form" action="join.do" method="post">
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">이름</span>
							</div>
							<input name="adminName" type="text" class="form-control" id="adminName" placeholder="이름을 입력하세요.">
						</div>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">아이디</span>
							</div>
							<input name="adminId" type="text" class="form-control" id="adminId" placeholder="아이디를 입력하세요.">
							<span class="input-group-append-sm">
								<button type="button" class="btn btn-block btn-info" onclick="idCheck_go();">중복 확인</button>
							</span>
						</div>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-envelope"></i></span>
							</div>
							<input name="adminEmail" type="email" class="form-control" id="adminEmail" placeholder="이메일을 입력하세요.">
						</div>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">비밀번호</span>
							</div>
							<input name="adminPwd" type="text" class="form-control" id="adminPwd" placeholder="비밀번호를 입력하세요.">
						</div>
						<div>
							<div class="input-group-prepend">
								<span class="input-group-text">비밀번호 찾기 질문</span>
								<span style="color: gray; font-size: 0.8em; margin-top: 10px;">　100자 이내로 작성해주세요.</span>
							</div>
						</div>
						<div class="input-group mb-3">
							<input name="adminQuest" type="text" class="form-control" id="adminQuest" placeholder="비밀번호를 찾을 때 이용할 질문입니다.">
						</div>
						<div>
							<div class="input-group-prepend">
								<span class="input-group-text">비밀번호 찾기 답변</span>
								<span style="color: gray; font-size: 0.8em; margin-top: 10px;">　100자 이내로 작성해주세요.</span>
							</div>
						</div>
						<div class="input-group mb-3">
							<input name="adminAns" type="text" class="form-control" id="adminAns" placeholder="비밀번호를 찾을 때 입력할 답변입니다.">
						</div>
						<div class="row" style="justify-content: center; margin-top: 20px">
							<button type="button" class="button2"
								onclick="location.href='<%=request.getContextPath()%>/common/loginForm.do';">돌아가기</button>
							<div style="width: 10px;"></div>
							<button type="button" id="joinButton" class="button2" onclick="join_go();">회원가입</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
<!-- jQuery -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

<script>
	function join_go() {
		if (!$('input[name="adminName"]').val()) {
			alert("이름 입력은 필수입니다.");
			return;
		}
		if (!$('input[name="adminId"]').val()) {
			alert("아이디 입력은 필수입니다");
			return;
		}
		if ($('input[name="adminId"]').val() != checkedID) {
			alert("아이디 중복 확인은 필수입니다");
			return;
		}
		if (!$('input[name="adminEmail"]').val()) {
			alert("이메일 입력은 필수입니다.");
			return;
		}
		if (!$('input[name="adminPwd"]').val()) {
			alert("비밀번호 입력은 필수입니다.");
			return;
		}
		if (!$('input[name="adminQuest"]').val()) {
			alert("비밀번호 찾기 질문은 필수입니다.");
			return;
		}
		if (!$('input[name="adminAns"]').val()) {
			alert("비밀번호 찾기 답변은 필수입니다.");
			return;
		}
		
		var form = $('form[role="form"]');
		form.submit();
	}
</script>

<script>
	var checkedID = "";
	function idCheck_go() {
		var input_id = $('input[name="adminId"]');

		if (!input_id.val()) {
			alert("아이디를 입력하시오");
			input_id.focus();
			return;
		}

		$.ajax({
			url : "idCheck.do?adminId=" + input_id.val().trim(),
			success : function(result) {
				if (result.toUpperCase() == "EXIST") {
					alert("중복된 아이디입니다.");
					$('input[name="adminId"]').focus();
				} else {
					alert("사용가능한 아이디입니다.");
					checkedID = input_id.val().trim();
					$('input[name="adminId"]').val(input_id.val().trim());
				}
			},
			error : function(error) {
				AjaxErrorSecurityRedirectHandler(error.status);
			}
		});
	}
</script>

</body>
