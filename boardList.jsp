<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>What's New?</title>
<!--
	2023-09-08
	boardList.jsp
	@Kallie
 -->
<style>
	@import url("../css/boardList.css");
	
	#pagingDiv{
		/* border: 1px solid #6ABC64; */
		width: 500px;
		text-align: center;
	}
	
	#currentPaging{
		color: #6abc64;
		font-style: bold;	
		padding: 5px;
		cursor: pointer;
	}
	#paging{
		padding: 5px;
		cursor: pointer;
	}
	body{
		background-image: url("http://localhost:8080/boardMVC/image/sleeppattern.png");
		background-repeat: repeat;
	}
	
	table, #pagingDiv{
		background-color: white;
	}
</style>
</head>
<body>
	<img src = "../image/readingkid.gif">
		<table>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			
			<!-- 여기에 글목록 반복문 들어가야 함 -->
		<c:forEach var = "boardDTO" items = "${requestScope.articles}">
			<tr> 
				<td>${boardDTO.seq}</td>
				<td>${boardDTO.subject}</td>
				<td>${boardDTO.name}</td>
				<td>${boardDTO.logtime}</td>
				<td>${boardDTO.hit}</td>
			</tr>
		</c:forEach>
		</table>
		
		<br>
		<div id ="pagingDiv">${requestScope.pages}</div>
		<br>
	<button type = 'button' id = 'gowrite'>나도 글 쓰기</button>
	<c:if test = "${sessionScope.memId ne null}">
		<button type = "button" id = "logout">로그아웃하기</button>
	</c:if>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		
		$('#gowrite').click(function(){
			  var id = '${sessionScope.memId}' //세션 줘야 함
			  console.log(id);
			   
			  if (id == null || id == ''){ //여기서는 null임 
				  alert("로그인해야 글을 쓸 수 있어요.");
				  location.href = "/boardMVC/board/loginForm.do"
				  
			  }else if(id!=null){
				 location.href = "/boardMVC/board/boardWriteForm.do"
				
			  }else{
				  
				  console.log("?")
			  }
			})
			
		$('#logout').click(function(){
			if(confirm("정말 로그아웃하시겠어요?")){
			location.href = "/boardMVC/board/logout.do"
			}
		})
		
		$('td:nth-child(5n+2)').click(function(){
			// url = "boardView.jsp?subject="+$(this).siblings('td:nth-child(5n+1)').text()
			  var id = '${sessionScope.memName}' //세션 줘야 함
			  console.log(id);
			   
			  if (id == null || id == ''){
				  alert("로그인해야 글을 볼 수 있어요.");
				  location.href = "/boardMVC/board/loginForm.do"
				  return false;
			  
			  }else if(id != null){
			  	url = "/boardMVC/board/boardView.do?seq="+$(this).prev().text()
			  	location.href = url
			  	return false;
			  	
			  }else{
			  
			  consol.log("error.")
			  return false;
			  }
			   
		}) // boardNoList에서 이 단락 삭제
		
		function boardPaging(a){
			location.href = "/boardMVC/board/boardList.do?pg="+a
		}
	</script>
	<%@ include file = "footer.jsp" %>
</body>
</html>