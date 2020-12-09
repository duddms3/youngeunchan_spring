<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Edit Form</h1>
	<input type="hidden" name="seq" value="${u.getSeq()}" />
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
	</table>
</body>
</html>