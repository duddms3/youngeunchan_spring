<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.joda.time.DateTime"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="checkTime()">
	<script>
		function checkTime() {
			var magam = document.getElementById('magam').value;
			magam = magam.substring(4);
			var regdate = document.getElementById('regdate').value;
			regdate = regdate.substring(4);
			alert(regdate + " === " + magam);
			if(magam<regdate){
				document.getElementById("myBtn").disabled = true;
				document.getElementById("myBtn").innerHTML = "out of date";
			}
		}
		function increaseCurrent(id) {
			var regdate = document.getElementById('regdate').value;
			var magam = document.getElementById('magam').value;
			var a = confirm("정말로 후원하시겟습니까? regdate" + regdate + " ---- "
					+ magam+ "======" + id);
			if (a)
				location.href = '../../fund/addFund/' + id;
		}
	</script>
	<h1>view-update46</h1>
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
			<td>regdate:</td>
			<td>${u.getRegdate()}</td>
		</tr>
		<tr>
			<td>photo:</td>
			<td><img
				src="${pageContext.request.contextPath}/resources/img/${u.getPhoto()}"
				height="150px"></td>
		</tr>
	</table>
	<button id="myBtn" onclick="increaseCurrent('${u.getSeq()}')">hoo won</button>

</body>
</html>