<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<p id="adminId">${adminId }</p>

<script>
	var adminId = document.getElementById("adminId").innerHTML;
	
	if (!adminId) {
		alert("정보에 맞는 아이디가 없습니다.\n회원가입을 진행해 주세요.");
		window.onload=function(){
			window.close();
			window.location.href = "<%=request.getContextPath()%>/common/joinForm.do";
		}
	}
	else{
		alert("아이디는 " + adminId + "입니다.\n로그인 화면으로 이동합니다.");
		window.onload=function(){
			window.close();
			window.location.href = "<%=request.getContextPath()%>/common/loginForm.do";
		}
	}
</script>