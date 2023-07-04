<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
//JSP : 자바로 작성한 서버프로그램이다.
//JSP : JAVA+HTML
request.setCharacterEncoding("utf-8");  //post방식으로 보낼때 한글 깨지지 않게 하기 위함
String username = request.getParameter("username");
String useremail = request.getParameter("useremail");
String userid = request.getParameter("userid");
String userpwd = request.getParameter("userpwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Form연습하기</h1>
	<table border="1">
	<tr>
		<td>아이디</td>
		<td><%=userid %></td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td><%=userpwd %></td>
	</tr>
	<tr>
		<td>유저이름</td>
		<td><%=username %></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><%=useremail %></td>
	</tr>
	
	</table>
</body>
</html>