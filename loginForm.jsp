<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Who are you?</title>
<!--
	2023-09-08
	loginForm.jsp
	@Kallie
 -->
	<style>
	
		table{
			border-collapse: collapse;
			background-color: white;
			
		}
		tr, th, td{
			text-align: center;
		}
		
		th, td{
			padding: 5px;
		}
		.left{
			text-align: left;
		}
		.warn{
			color: red;
		}
		body{
			background-image: url("http://localhost:8080/boardMVC/image/sleeppattern.png");
			background-repeat: repeat;
		}
	
		
	</style>
</head>
<body>
	<a href = '../index.jsp'><img src = "../image/loginkid.gif"></a>
	<form id = 'loginForm' method = 'post' action = "/boardMVC/board/login.do">
		<table>
			<tr>
				<th class = 'left'>아이디</th>
				<td><input type = "text" name = "id" id = 'id'>
					<div id = 'idNull' class = 'warn'></div>
				</td>
			</tr>
		
			<tr>
				<th class = 'left'>비밀번호</th>
				<td><input type = "password" name = "password" id = 'password'>
					<div id = 'pwNull' class = 'warn'></div>
				</td>
			</tr>
		
			<tr>
				<td colspan = '2'>
					<button id = 'sub'>로그인</button>
					<button type = 'button' id = 'signIn'>회원가입</button>
				</td>
			</tr>
		
		</table>
	</form>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	
	<script>
	
		$('#signIn').click(function(){
			
			location.href = '/boardMVC/board/writeForm.do'
			
		})

		$('#sub').click(function(){
			$('#idNull').empty()
			$('#pwNull').empty()
			
			id = $('#id').val()
			pw = $('#password').val()
			
			if(id==''){
				$('#idNull').text('아이디를 입력하세요.');
				return false;
			}else if(pw == ''){
				$('#pwNull').text('비밀번호를 입력하세요.');
				return false;
				
			}else{
				
				$('#loginForm').submit();
			}
		})
		
		
	</script>
	<%@ include file = "footer.jsp" %>
</body>
</html>