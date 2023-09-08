<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>What's New?</title>
<!--
	2023-09-08
	boardNoList.jsp
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
			<th colspan = '5' id = 'noarticleTd'>
					<img src = "../image/whatshold.gif">
					<br>아직 작성된 글이 없어요. 글을 쓰러 갈까요?<br>
					<br><button type = "button" id = 'noarticle'>글 쓰러 가기</button>
			</th>
		</tr>
	</table>
	<br>
	<button type = 'button' id = 'gowrite'>나도 글 쓰기</button>
	
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		
		$('#gowrite').click(function(){
			  var id = '${sessionScope.memName}' //세션 줘야 함
			  console.log(id);
			   
			  if (id == null){
				  alert("로그인해야 글을 쓸 수 있어요.");
				  location.href = "/boardMVC/board/loginForm.do"
				  return false;
				  
			  }else{
			location.href = "/boardMVC/board/boardWriteForm.do"
			  }
		})
		$('#noarticle').click(function(){
			 var id = '${sessionScope.memName}' //세션 줘야 함
			  console.log(id);
			   
			  if (id == null){
				  alert("로그인해야 글을 쓸 수 있어요.");
				  location.href = "/boardMVC/board/loginForm.do"
				  return false;
				  
			  }else{
			location.href = "/boardMVC/board/boardWriteForm.do"
			  }
		})// boardList에서 이 단락 삭제
		
	</script>
	<%@ include file = "footer.jsp" %>
</body>
</html>