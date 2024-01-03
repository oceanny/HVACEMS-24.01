<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<p id="adminPwd">${adminPwd }</p>

<script>
	var adminPwd = document.getElementById("adminPwd").innerHTML;
	
	if (!adminPwd) {
		alert("비밀번호 찾기 답변이 틀렸습니다.\n다시 진행해주세요.");
		window.onload=function(){
			window.close();
			window.location.href = "<%=request.getContextPath()%>/common/findForm.do";
		}
	}
	else{
		alert("비밀번호는 " + adminPwd + "입니다.\n로그인 화면으로 이동합니다.");
		window.onload=function(){
			window.close();
			window.location.href = "<%=request.getContextPath()%>/common/loginForm.do";
		}
	}
</script>