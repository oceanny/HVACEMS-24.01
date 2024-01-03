<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<p id="adminId">${adminId }</p>
<p id="inputPwd">${inputPwd }</p>
<p id="adminPwd">${adminPwd }</p>

<script>
	<%-- var adminPwd = document.getElementById("adminPwd").innerHTML;
	
	if ($('input[name="inputPwd"]').val() != adminPwd){
		alert("비밀번호가 틀렸습니다.\n탈퇴를 진행할 수 없습니다.");
		window.close();
		alert($('input[name="inputPwd"]').val());
		alert(adminPwd);
		window.location.href = "<%=request.getContextPath()%>/exitForm.do";
	}
	else{
		alert("탈퇴가 완료되었습니다.\n이용해주셔서 감사합니다.");
		window.close();
		window.location.href = "<%=request.getContextPath()%>/common/loginForm.do";
	} --%>
</script>