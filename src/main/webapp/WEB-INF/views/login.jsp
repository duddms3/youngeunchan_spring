<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img, label { display:inline-block;}
label{ width:130px}
button{ background-color:#01DF01; color:white;font-size:15px; border-radius:4px;cursor:pointer;}

</style>
</head>
<body>
<div style='width:100%;text-align:center;padding-top:100px;font-weight:bold'>
<img src="../img/yec.PNG" height="250">

<form method="post" action="loginOk">
<table>
<div><tr><label>User ID   : </label><input type='text' name='userid' id="uid"style='border-radius:1px; width:130px;' /></tr></div>
<div><tr><label>Password: </label>
 <input type='password' name='pwd' id="pwd"style='border-radius:1px; width:130px;'/></tr></div>
 </table>
<button type='submit'>login</button>
</form>
</div>
</body>
</html>