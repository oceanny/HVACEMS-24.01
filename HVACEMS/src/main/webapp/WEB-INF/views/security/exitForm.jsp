<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<head>
<style>
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
 <!-- Main content -->
<div class="card-body">
	<div class="row">
		<div class="col-12">
			<div class="callout callout-info">
				<h5 style="text-align: center;">
					<span>탈퇴하시겠습니까?</span>
				</h5>
				<hr style="border-top: 1px solid #aaa;">
				<h5>탈퇴하려면 비밀번호를 입력해주세요.</h5>
			</div>
		</div>
	</div>
	<form role="form" action="exit.do" method="post">
		<div class="row">
			<div class="col-12">
				<div class="callout callout-info">
					<h5 style="text-align: center;">
						<input name="adminId" type="text" class="form-control" id="adminId" value="${adminId }" readonly>
						<input name="inputPwd" type="text" class="form-control" id="inputPwd" placeholder="비밀번호를 입력하세요.">
						<input type='hidden' name="adminPwd" id="adminPwd" value="${adminPwd }">
					</h5>
				</div>
			</div>
		</div>
		<div class="row" style="justify-content: center; margin-top: 20px">
			<button type="button" class="button2"
				onclick="location.href='<%=request.getContextPath()%>/home.do';">돌아가기</button>
			<div style="width: 10px;"></div>
			<button type="button" id="exitButton" class="button2" onclick="exit_go();">탈퇴</button>
		</div>
	</form>
</div>

<script>
	var adminPwd = document.getElementById("adminPwd").innerHTML;
	function exit_go() {
		if (!$('input[name="inputPwd"]').val()) {
			alert("비밀번호 입력은 필수입니다.");
			return;
		}
		var form = $('form[role="form"]');
		form.submit();
	}
</script>

</body>