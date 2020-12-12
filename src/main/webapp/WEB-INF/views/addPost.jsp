<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addPost</title>
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
footer {
	background-color:#A4A4A4;;
	color: white;
	padding: 15px;
}
 #lo {
        width: 40%;
        height: 20px;
        border-radius: 6px;
        border-color: #d8b9f8;
    }
    
 
   #lo:focus {
        padding: 5px;
        height: 80px;
        width: 80%;
        background-color: #f3f3f0;
    }
.content{
	margin-left: 20%;
	margin-right: 20%;
	font-family: 'Jua', sans-serif;
}
#tt{
	margin-top:20px;
	font-family: 'Jua', sans-serif;
	font-weight:bold;
	color:#01DF01;
}
#title:hover,#goalM:hover,#priceM:hover,#magam:hover,#lo:hover{
	background-color: #edecec;
}
#sa,#cnBtn{
	border-radius:4px;
	background-color:#F2F5A9;
	border:2.5px;
}
#sa:hover,#cnBtn:hover{
	background-color:#F8E0F7;
}
</style>
</head>
<body>
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
<div class="content">
<br>
	<h1 id="tt">새로운 후원 아이템 등록하기</h1>
	<form action="addOk" method="post" enctype="multipart/form-data">

		<table>
		<tr>
				<td>후원 아이템 제목을 설정하세요. :</td>
				<td><input type="text" name="title" id="title"/></td>
			</tr>
			<tr>
				<td>목표 후원 금액을 설정하세요.:</td>
				<td><input type="text" name="goalM" id="goalM" /></td>
			</tr>
			<tr>
				<td>후원 단가를 설정하세요. :</td>
				<td><input type="text" name="priceM" id="priceM" /></td>
			</tr>
			
			<tr>
				<td>후원 마감 날짜를 설정하세요. :</td>
				<td><input type="datetime-local" name="stringDate" id="magam" /></td>
			</tr>
			<tr>
				<td>후원 아이템 사진을 올리세요 :</td>
				<td><input type="file" name="photo" /></td>
			</tr>
			<tr>
				<td>후원 아이템에 대한 설명을 적으세요.</td>
				<td><textarea cols="50" rows="50" name="content" placeholder="상세 설명을 적으세요" id="lo"></textarea></td>
			</tr><br><br>
		</table>
		
				<button id="cnBtn" onclick="location.href='yechome'"> 등록 취소하기 </button>
				<input type="submit" value="게시글 등록하기" id="sa" />
	</form>
	</div>
	<br><br><br>
	<footer class="container-fluid text-center" id="ft">
			<p>(주) 영은찬 펀딩.</p>
			<p>-21700287 박은찬-</p>
			<p>-21800123 김영은-</p>
			
		</footer>

</body>

</html>