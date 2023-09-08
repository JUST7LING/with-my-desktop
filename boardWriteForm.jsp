<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let's talk about ...</title>
<!--
	2023-09-08
	boardWriteForm.jsp
	@Kallie
 -->
<style>
	table{
		border-collapse: collapse;
		background-color: white;
	}
	h3{
		background-color: white;
		width: 140px;
	}
	th, td{
		padding: 10px;
		
	}
	
	body{
		background-image: url("http://localhost:8080/boardMVC/image/sleeppattern.png");
		background-repeat: repeat;
	}
	
	textarea{
		
		height: 200px;
	}
	#subject, textarea{
		width: 300px;
	}
</style>
</head>
<!-- 세션 주고 -->

<body>
	<img src = "../image/writingkid.png">
	<h3><img id = 'back' src = "../image/backhome.jpg">&nbsp;글쓰기</h3>
	<form id = 'writeForm' >
		<table border = '1'>
			<tr>
				<th>제목</th>
				<td><input type = 'text' id = 'subject' name = 'subject'></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name = 'content' id = 'content'></textarea></td>
			</tr>
			<tr>
				<th colspan = '2'>
					<button type = 'button' id = 'sub'>글쓰기</button>
					<input type ='reset' value = '다시작성'>
				</th>
			</tr>
		</table>
	</form>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		$('#sub').click(function(){
			if($("#subject").val() == ''){
				alert("제목을 입력하세요.")
				$('#subject').focus();
				return false;
			}
			else if($('#content').val() == ''){
				alert("내용을 입력하세요.");
				$('#content').focus();
				return false;
			}else{
				$.ajax({
					type: 'post',
					url: "/boardMVC/board/boardWrite.do",
					// 여기에서 type과 url을 써주었기 때문에
					// form 태그의 method와 action 속성을
					// 써주지 않아도 된다.
					data: {'subject' : $('#subject').val()
					, 'content' : $('#content').val()
					},
					success : function(){
						alert("작성하신 글을 저장하였습니다.");
						location.href = "/boardMVC/board/boardList.do?pg=1"						
					},error: function(e){
						
						console.log(e);
					}
					
					
				});
				
			}
		})
		
		$('#back').click(function(){
			if(confirm("작성 중인 글은 저장되지 않습니다. 창을 나가시겠어요?")){
				location.href = "/boardMVC/board/boardList.do?pg=1"
				
			}
			
		})
	</script>
	<%@ include file = "footer.jsp" %>
</body>
</html>