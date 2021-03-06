<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>YEC Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar-nav {
	
	font-family: 'Pacifico', cursive;
	font-weight: bold;
	font-size: 20px;
}

.navbar {
	margin-bottom: 0;
	border-radius: 0;
	background-color: #000000;
	border: 0;
	letter-spacing: 4px;
	font-size: 20px !important;
}

.navbar li a, .navbar .navbar-brand {
	color: white !important;
	font-family: 'Jua', sans-serif;
}

.navbar-nav li a:hover {
	color: white !important;
	background-color: #A4A4A4 !important;
}

.navbar-nav li.active a {
	color: white !important;
	background-color: #000000 !important;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color:#A4A4A4;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

#pro {
	margin-top: 20px;
}
#adBtn{
	margin-top:10px;
}

#one:hover {
	cursor: pointer;
	background-color: #F4F6F9;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'delete/' + id;
	}

</script>
</head>

<body onload="logged()">

	<script>
		function logged() {
			var userid = document.getElementById("userid").value
			if (userid != "") {
				alert(userid);
				document.getElementById("toLogout").innerHTML = "Logout";
				document.getElementById("toLogout").href = "../login/logout";
				document.getElementById("toWelcome").innerHTML = "Welcome "
						+ userid;
			}
		}
	</script>


	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/eun/post/yechome">영은찬</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#pro">Projects</a></li>
					<li><a href="#ct">Contact</a></li>
					<li><a href="#" id="toWelcome">Sign Up</a></li>
					<li><a href="../login/login" id="toLogout"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<input type="hidden" id=userid value="${userid}" />


	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
			<button id="adBtn" class="btn btn-info" onclick="location.href='addPost'"> 후원 아이템 추가하기 </button>
			
			</div>

			<div class="col-sm-8 text-left" id="pro">

				<c:forEach items="${list}" var="u">
					<div id="one"
						onclick="javascript:location.href='view/${u.getSeq()}';">
						<br>
						<tr>
							<td><img
								src="${pageContext.request.contextPath}/resources/img/${u.getPhoto()}"
								alt="error in loading the picture"
								style="float: left; height: 150px; margin-right: 20px;"></td>

							<td>${u.getTitle()}</td>
							<br><br><br>
							<td>목표 금액 : ${u.goalM}</td>
							<br>
							<td>마감 날짜 : ${u.magam}</td>
							<br>
							<br>

						</tr>
						<tr>
							<td><a href="javascript:delete_ok('${u.getSeq()}')">Delete</a></td>
						</tr>
						<tr>
							<br>
							<br>
							
							<td colspan="2"><hr></td>
						</tr>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>

	<footer class="container-fluid text-center" id="ct">
		<p>(주) 영은찬 펀딩.</p>
		<p>-21700287 박은찬-</p>
		<p>-21800123 김영은-</p>
	</footer>

</body>
</html>