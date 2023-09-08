<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${requestScope.article.subject}</title>
<!--
	2023-09-08
	boardView.jsp
	@Kallie
 -->
<style>
	table{
		border-collapse: collapse;
		width: 500px;
		margin: 0 auto;
		background-color: white;
	}
	
	th, td{
		padding: 10px;
	}
	
	.green{
		color: #6ABC64;
		
	}
	
	#subject{
		text-align: left;
	}
	
	.btmborder{
		border-bottom: 1px solid #6ABC64;
	}
	body{
		background-image: url("http://localhost:8080/boardMVC/image/sleeppattern.png");
		background-repeat: repeat;
	}
	
	#tablecover{
		padding: 20px;
		background-color: white;
		margin: 80px;
		
	}
	
	
	
</style>
</head>
<body>
<div id = 'tablecover'>
	<table>
		
		<tr>
			<th colspan = '3' id = 'subject' class = 'btmborder'><span class = 'green'>제목</span>&nbsp; &nbsp;${requestScope.article.subject}</th>
		</tr>
		<tr>
			<td class = 'btmborder'><span class = 'green'>글번호</span>&nbsp; &nbsp; ${requestScope.article.seq}</td>
			<td class = 'btmborder'><span class = 'green'>작성자</span>&nbsp; &nbsp; ${requestScope.article.name}</td>
			<td class = 'btmborder'><span class = 'green'>조회수</span>&nbsp; &nbsp; ${requestScope.article.hit}</td>
		</tr>
		<tr>
			
			<td colspan = '3' class = 'btmborder'><pre>${requestScope.article.content}</pre>
			<br><br><button type = "button" id = 'goList'>목록으로 돌아가기</button>
			
			</td>
			
		</tr>
	</table>
	</div>
	<%@ include file = "footer.jsp" %>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		$('#goList').click(function(){
			history.back();
			
		})
	</script>
</body>
</html>