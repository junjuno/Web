
<%@page import="aproject.model.EmpService"%>
<%@page import="aproject.controller.DateUtil"%>
<%@page import="aproject.vo.EmpVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//empInsert.jsp?employee_id=12123&first_name=ddsaf&last_name=sadfaf&email=bona366%40naver.com&phone_number=010-1578-1695&hire_date=2023-02-28&job_id=IT_PROG&salary=20000&commission_pct=300&manager_id=100&department_id=60
String empid = request.getParameter("employee_id");
String fname = request.getParameter("first_name");
String lname = request.getParameter("last_name");
String email = request.getParameter("email");
String phone_number = request.getParameter("phone_number");
String hire_date = request.getParameter("hire_date");
String job_id = request.getParameter("job_id");
String salary = request.getParameter("salary");
String commission_pct = request.getParameter("commission_pct");
String manager_id = request.getParameter("manager_id");
String department_id = request.getParameter("department_id");

EmpVO emp = new EmpVO();
emp.setCommission_pct(Double.parseDouble(commission_pct));
emp.setDepartment_id(Integer.parseInt(department_id));
emp.setEmail(email);
emp.setEmployee_id(Integer.parseInt(empid));
emp.setFirst_name(fname);
emp.setHire_date(DateUtil.convertToDate(hire_date));
emp.setJob_id(job_id);
emp.setLast_name(lname);
emp.setManager_id(Integer.parseInt(manager_id));
emp.setPhone_number(phone_number);
emp.setSalary(Integer.parseInt(salary));
System.out.println(emp);
EmpService service = new EmpService();
service.empInsert(emp);



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	p{ border: 1px solid green;}
</style>
</head>
<body>
	<h1>신규직원을 DB에 저장합니다.</h1>
	
	<p>employee_id:<%=empid%></p>
	<p>fname:<%=fname%></p>
	<p>lname:<%=lname%></p>
	<p>email:<%=email%></p>
	<p>phone_number:<%=phone_number%></p>
	<p>hire_date:<%=hire_date%></p>
	<p>job_id:<%=job_id%></p>
	<p>salary:<%=salary%></p>
	<p>commission_pct:<%=commission_pct%></p>
	<p>manager_id:<%=manager_id%></p>
	<p>department_id:<%=department_id%></p>
	
</body>
</html>