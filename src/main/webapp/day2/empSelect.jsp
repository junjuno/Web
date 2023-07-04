<%@page import="java.util.List"%>
<%@page import="aproject.vo.EmpVO"%>
<%@page import="aproject.model.EmpService"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	EmpService eService = new EmpService();
	List<EmpVO> emplist = eService.selectAll();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style>
@import url(//fonts.googleapis.com/earlyaccess/kopubbatang.css);
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
	h1{
		font-family: 'KoPub Batang', serif;
		text-align: center;
	}
	table {
		margin-left : auto;
		margin-right: auto;
		text-align : center;
	}
	
	
	th {
		font-family: monospace;
		font:bold;
		background-color: lightblue;
		color: white;
		border-radius: 15px;
		padding: 15px;
		
	}
	
	tbody tr, td{
		border-bottom: 1px solid gray;
		padding : 3px;
		font-family: 'Jeju Gothic', sans-serif;
	}
	tr:hover{
		background-color: lightgray !important; 
	}
	td .index {
		background-color: rgb(210, 210, 210);
	}
	button {
		padding: 10px;
		font : bold;
		margin-bottom: 10px;
		border-radius: 10px;
	}
</style>
<script>
	$(function(){
		$("thead tr th").click(function(e){
			var trNum = $(this).closest("th").prevAll().length;
			console.log(trNum);
			var a = $("tbody tr").each(function(index, item){
			var col = $(item).find("td:nth-child(" + (trNum+1) + ")");
			console.log(col);
			//�ǵ�����(���������� clear)
			$(item).find("td").css("background-color", "white");
			//�űԼ����� ���� �ٲٱ�
			$(col).css("background-color", "lightgray");
			});
		});
		
		//body > table > tbody > tr:nth-child(1) > td:nth-child(2)
		//body > table > tbody > tr:nth-child(17) > td:nth-child(2)
		
		$("button[id='btn1']").css("backgroundColor","lightyellow");
		$("button[id='btn2']").css("backgroundColor","lightgreen");
		$("button[id='btn3']").css("backgroundColor","#fff0f5");
		
		//body > table > tbody > tr:nth-child(2) > td:nth-child(2)
		//body > table > tbody > tr:nth-child(4) > td:nth-child(2)
		$('#btn1').click(function(){
			$("tbody>tr:nth-child(2n)").css("backgroundColor", "lightyellow");
		});
		$('#btn2').click(function(){
			var r = $("tr>td:nth-child(2):contains('S')");
			$(r).parent().css("backgroundColor", "lightgreen");
		});
		$('#btn3').click(function(){
			var r = $("tr>td:nth-child(2):");
			
			$(r).parent().css("backgroundColor", "#fff0f5");
			
			console.log(r);
			
		
		});
		
		
		var str = "";
		var arr=["IT_PROG", "AD_VP", "AD_PRES","ST_MAN","ST_CLERK"];
		$.each(arr, function(index, item){
			str += "<option>" + item + "</option>";
		});
		$("#jobs").html(str);  //html() : jquery �Լ�, innerHTML�� 
		
		
		$("select").change(function(){
			var jobid = $(this).val();
			//init();
			$("tr td").css("color","black");
			$("tr td:contains('" + jobid + "')").css("color", "red");
			});
		//});
	});
</script>
</head>
<body>

	<h1>�������</h1>
	<button onclick = "location.href='emp_insert.html'"
	type="button" class="btn btn-success">�ű��������</button>
	
	<button id="btn1" class="btn btn-success">¦��row ����</button>
	<button id="btn2" class="btn btn-success">�̸� s�� �����ϴ� ����</button>
	<button id="btn3" class="btn btn-success">s���� ����</button>
	<select>
		<option value="IT_PROG">IT_PROG</option>
		<option>AD_VP</option>
		<option>PU_CLERK</option>
		<option>ST_MAN</option>
	</select>
	<select id="jobs">
		
	</select>
	
	<table>
	<thead>
	<tr>
	<th>������ȣ</th>
	<th>�̸�</th>
	<th>��</th>
	<th>�̸���</th>
	<th>�޿�</th>
	<th>�Ի���</th>
	<th>��ȭ��ȣ</th>
	<th>��å</th>
	<th>�Ŵ���</th>
	<th>Ŀ�̼�</th>
	<th>�μ�</th>
	</tr>
	</thead>
	<tbody>
	<%for(EmpVO emp:emplist){ %>
	<tr>
	<td class="index"><%=emp.getEmployee_id() %></td>
	<td><%=emp.getFirst_name() %></td>
	<td><%=emp.getLast_name() %></td>
	<td><%=emp.getEmail() %></td>
	<td><%=emp.getSalary() %></td>
	<td><%=emp.getHire_date() %></td>
	<td><%=emp.getPhone_number() %></td>
	<td><%=emp.getJob_id()%></td>
	<td><%=emp.getManager_id() %></td>
	<td><%=emp.getCommission_pct()%></td>
	<td><%=emp.getDepartment_id()%></td>
	</tr>
	<%} %>
	</tbody>
	</table>

</body>
</html>