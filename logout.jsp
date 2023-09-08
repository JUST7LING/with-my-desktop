<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Bye bye!</title>
<!--
	2023-09-08
	logout.jsp
	@Kallie
 -->

<img src = "../image/byekid.GIF">
<h3>정상적으로 로그아웃되었습니다.</h3>
<button type = 'button' id = 're_login'>다시 로그인하기</button>
<%@ include file = "footer.jsp" %>
<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>
	$('#re_login').click(function(){
		location.href = "/boardMVC/board/loginForm.do"
		
	})
</script>