<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>yecHome</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete/' + id;
	}
</script>
</head>
<body>
<h1>자유게시판</h1>

<table id="list" width="90%">
<tr>
	<th>goalM</th>
	<th>currentM</th>
	<th>priceM</th>
	<th>title</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>magam</th>
	<th>seq</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.goalM}</td>
		<td>${u.currentM}</td>
		<td>${u.priceM}</td>
		<td>${u.title}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td>${u.magam}</td>
		<td>${u.seq}</td>
		
	</tr>
</c:forEach>
</table>

<br/><a href="addPost">Add New Post</a>
</body>
</html>