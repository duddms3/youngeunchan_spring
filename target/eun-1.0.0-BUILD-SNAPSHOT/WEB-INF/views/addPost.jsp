<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addPost</title>

</head>
<body>

	<h1>Add New Post</h1>
	<form action="addOk" method="get" onsubmit="check()">

		<table>
			<tr>
				<td>goalM:</td>
				<td><input type="text" name="goalM" /></td>
			</tr>
			<tr>
				<td>priceM:</td>
				<td><input type="text" name="priceM" /></td>
			</tr>
			<tr>
				<td>title:</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>magam:</td>
				<td><input type="datetime-local" name="stringDate" /></td>
			</tr>
			<tr>
				<td>Content:</td>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td><a href="yecHome">View All Records</a></td>
				<td align="right"><input type="submit" value="Add Post" /></td>
			</tr>
		</table>
	</form>
	

</body>

</html>