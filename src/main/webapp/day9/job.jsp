<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String jid = request.getParameter("job_id");    
	String title = request.getParameter("job_title");    
	String max = request.getParameter("max_salary");    
	String min = request.getParameter("min_salary");    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Job���</h1>
<p>jobid�� <%=jid %></p>
<p>title�� <%=title %></p>
<p>max�� <%=max %></p>
<p>min�� <%=min %></p>
</body>
</html>