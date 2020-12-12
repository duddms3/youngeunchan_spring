<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.joda.time.DateTime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		function increaseCurrent(id) {
			//check the date then increase
			var magam = document.getElementById('magam').value;

			var serverDateTime = new Date('<%= DateTime.now().toString("yyyy-MM-dd'T'HH:mm:ss") %>');

			
			var date = new Date();
			date.setTime(date.getTime());
			var a = confirm("정말로 후원하시겟습니까?" + serverDateTime + " ---- " + magam);
			if (a)
				location.href = '../../fund/addFund/' + id;
		}
	</script>
	<h1>view-update24</h1>
	<input type="hidden" id="magam" value="${u.getMagam()}" />
	<input type="hidden" id="regdate" value="${u.getRegdate()}" />
	<table>
		<tr>
			<td>Title:</td>
			<td>${u.getTitle()}</td>
		</tr>
		<tr>
			<td>priceM:</td>
			<td>${u.getPriceM()}</td>
		</tr>
		<tr>
			<td>goalM:</td>
			<td>${u.getGoalM()}</td>
		</tr>
		<tr>
			<td>curremtM:</td>
			<td>${u.getCurrentM()}</td>
		</tr>
		<tr>
			<td>content:</td>
			<td>${u.getContent()}</td>
		</tr>
		<tr>
			<td>magam:</td>
			<td>${u.getMagam()}</td>
		</tr>
		<tr>
			<td>photo:</td>
			<td><img
				src="${pageContext.request.contextPath}/resources/img/${u.getPhoto()}"
				height="150px"></td>
		</tr>
		<td><a href="javascript:increaseCurrent('${u.getSeq()}')">whoowon</a></td>
	</table>
</body>
</html>