<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

    
<script>
	alert("회원가입이 완료되었습니다.");
	
	window.onload=function(){
		window.close();
		window.location.href = "<%=request.getContextPath()%>/common/loginForm.do";
	}
</script>