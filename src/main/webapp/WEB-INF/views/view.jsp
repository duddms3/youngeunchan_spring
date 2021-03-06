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

/* Set black background color, white text and some padding */

.fM {
	font-family: 'Pacifico', cursive;
}

#ftitle {
	margin: auto;
	width: 90%;
	font-size: 300%;
	width: 90%;
}

#picNPrice {
	position: relative;
	height: 400px;
}

#thisPic {
	margin: auto;
	margin-left: 5%;
	position: absolute;
	float: left;
	width: 50%;
}

#fundingdetail {
	margin-left: 60%;
	margin-right: 5%;
	width: 35%;
}

#detail {
	margin: auto;
	position: relative;
	width: 90%;
	position: relative;
}

footer {
	position: relative;
	background-color: #A4A4A4;
	color: white;
	padding: 15px;
	background-color: #A4A4A4;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media ( max-width : 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
	#picNPrice {
		height: auto;
	}
	#thisPic {
		float: none;
		position: relative;
		margin-left: 5%;
		margin-right: 5%;
		width: 90%;
	}
	#fundingdetail {
		position: relative;
		margin: auto;
		width: 90%;
	}
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

			var userid = document.getElementById("userid").value
			if (userid != "") {
				alert(userid);
				document.getElementById("toLogout").innerHTML = "Logout";
				document.getElementById("toLogout").href = "../../login/logout";
				document.getElementById("toWelcome").innerHTML = "Welcome "
						+ userid;
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


	<input type="hidden" id=userid value="${userid}" />
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
					<li><a href="#" id="toWelcome">Sign Up</a></li>
					<li><a href="../../login/login" id="toLogout"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<p class="fM" id="ftitle">${u.getTitle()}</p>

	<br>

	<div id="picNPrice">
		<img id="thisPic"
			src="${pageContext.request.contextPath}/resources/img/${u.getPhoto()}">
		<div id="fundingdetail">
			<br> <br> <br>
			<p class="fM">
				목표 후원 금액 :<strong>${u.getGoalM()}</strong>원
			</p>

			<p class="fM">
				현재 모인 금액 :<strong>${u.getCurrentM()}</strong>원
			</p>

			<p class="fM">
				후원 마감 날짜 :<strong>${u.getMagam()}</strong>
			</p>
			<br> <br> 후원 가격은 " ${u.getPriceM()} "원 입니다.

			<button id="myBtn" class="btn btn-info btn-lg btn-block"
				onclick="increaseCurrent('${u.getSeq()}')">
				${u.getPriceM()}원 후원하기</button>
		</div>
	</div>

	<hr style="height: 10px;">




	<div id="detail">
		<p>${u.getContent()}</p>
	</div>


	<footer class="container-fluid text-center" id="ft">
		<p>(주) 영은찬 펀딩.</p>
		<p>-21700287 박은찬-</p>
		<p>-21800123 김영은-</p>

	</footer>


</body>
</html>
