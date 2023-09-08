<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--
	2023-09-08
	loginOk.jsp
	@Kallie
 -->
 
<title>Hello, ${sessionScope.memName}!</title>
<a href = "/boardMVC/board/boardList.do"><img src = "../image/clapkid.gif"></a>
	<h3>${sessionScope.memName }님, 환영합니다!</h3>
	<input type = "button" value = "로그아웃" id = "out">
	<ul>
		<li><h3><a href = "/boardMVC/board/boardWriteForm.do">글쓰기</a></h3></li>
		<li><h3><a href = "/boardMVC/board/boardList.do?pg=1">게시판 보기</a></h3></li>
	</ul>
<!-- 

setCharacterEncoding을 써도 ... 한글 이름은 넘어오지 않는다. ;; 

java.lang.IllegalArgumentException: code point [44,608]에 위치한 유니코드 문자 [김]은(는), 
0에서 255까지의 허용 범위 바깥에 있으므로 인코딩될 수 없습니다.

-->
<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>
	$('#out').click(function(){
		if(confirm("정말 로그아웃하시겠어요?"))
			location.href = "/boardMVC/board/logout.do"
		
	})
</script>