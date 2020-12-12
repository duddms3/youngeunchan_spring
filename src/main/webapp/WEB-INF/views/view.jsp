<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.joda.time.DateTime"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail View</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.detail {
	margin-left: 90px;
	margin-right: 90px;
}

.navbar-nav {

	font-family: 'Pacifico', cursive;
	font-weight: bold;
	font-size: 20px;
}

.navbar {
	margin-bottom: 0;
	border-radius: 0;
	background-color: #01DF01;
	border: 0;
	letter-spacing: 4px;
	font-size: 20px !important;
}

.navbar li a, .navbar .navbar-brand {
	color: white !important;
	font-family: 'Jua', sans-serif;
}

.navbar-nav li a:hover {
	color: black !important;
	background-color: #F4FA58 !important;
}

.navbar-nav li.active a {
	color: white !important;
	background-color: #01DF01 !important;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #A4A4A4;
	color: white;
	padding: 15px;
}

</style>
</head>
<body onload="checkTime()">
	<script>
		function checkTime() {
			var magam = document.getElementById('magam').value;
			magam = magam.substring(4);
			var regdate = document.getElementById('regdate').value;
			regdate = regdate.substring(4);
			alert(regdate + " === " + magam);
			if (magam < regdate) {
				document.getElementById("myBtn").disabled = true;
				document.getElementById("myBtn").innerHTML = "out of date";
			}
		}
		function increaseCurrent(id) {
			var regdate = document.getElementById('regdate').value;
			var magam = document.getElementById('magam').value;
			var a = confirm("정말로 후원하시겟습니까? regdate" + regdate + " ---- "
					+ magam + "======" + id);
			if (a)
				location.href = '../../fund/addFund/' + id;
		}
	</script>

	<input type="hidden" id="magam" value="${u.getMagam()}" />
	<input type="hidden" id="regdate" value="${u.getRegdate()}" />

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
					<li><a href="/eun/post/yechome#pro">Projects</a></li>
					<li><a href="#ft">Contact</a></li>
					<li><a href="/eun/login/login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</div>
	</nav>



	<tr>

		<td><img
			src="${pageContext.request.contextPath}/resources/img/${u.getPhoto()}"
			style="float: left; height: 300px; margin-left: 90px; margin-right: 30px; margin-top: 40px;"></td>
	</tr>
	<br>
	<br>
	<br>

	<tr>
		<td>${u.getTitle()}</td>
	</tr>
	<br>
	<br>
	<br>
	<tr>
		<td>목표 후원 금액 :</td>
		<td>${u.getGoalM()}원</td>
	</tr>
	<br>
	<br>
	<tr>
		<td>현재 모인 금액 :</td>
		<td>${u.getCurrentM()}원</td>
	</tr>
	<br>
	<br>

	<tr>
		<td>후원 마감 날짜 :</td>
		<td>${u.getMagam()}</td>
	</tr>
	<br>
	<br>

		후원 가격은 " ${u.getPriceM()} "원 입니다. <br> <br>
			후원하시겠습니까?      

			<button id="myBtn" onclick="increaseCurrent('${u.getSeq()}')"> 후원하기 </button>

	
	<br>
	<br>
	<br>
	<br>
	<br>
	<td colspan="2"><hr style="height: 10px;"></td>
	<br>
	<br>
	<br>

	<div class="detail">



		<tr>
			<td>${u.getContent()}</td>
		</tr>
			</div>
		<br> <br> <br>
		<footer class="container-fluid text-center" id="ft">
			<p>(주) 영은찬 펀딩.</p>
			<p>-21700287 박은찬-</p>
			<p>-21800123 김영은-</p>
			
		</footer>
</body>
</html>