<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>YEC Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar-nav {
            padding-left: 100px;
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

        .navbar li a,
        .navbar .navbar-brand {
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

       

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {
            height: 450px
        }

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
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

        img {
            display: block;

        }
    </style>
     <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'delete/' + id;
        }
    </script>
</head>

<body>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/eun/post/yechome">영은찬</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#pro">Projects</a></li>
                    <li><a href="#ct">Contact</a></li>
                    <li><a href="/eun/login/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid text-center">
 		<div class="row content">
   			 <div class="col-sm-2 sidenav">
         		<a href="addPost">후원 아이템 추가하기</a>
    	</div>
	
        <div class="col-sm-8 text-left" id="pro">
            <img src="../img/yec.PNG" alt="img1" 
                style="float:left;width:30%;margin-top:20px;">
                 <h1>상품1</h1>
          		  <p>디테일내용1</p><br>
         <table id="list">
            <th>view</th>
        <c:forEach items="${list}" var="u" begin="1" end="1">
                <td><a href="view/${u.getSeq()}">자세히 보기</a></td>
        </c:forEach>
    </table>
            <hr>

            <img src="../img/yec.PNG" alt="img1"
                style="float:left;width:30%;">
            <h1>상품2</h1>
            <p>디테일내용2</p><br>
             <table id="list">
            <th>view</th>
        <c:forEach items="${list}" var="u" begin="2" end="2">
                <td><a href="view/${u.getSeq()}">자세히 보기</a></td>
        </c:forEach>
    </table>
            <hr>
            <img src="../img/yec.PNG" alt="img1"
                style="float:left;width:30%;">
            <h1>상품3</h1>
            <p>디테일 내용 3</p><br>
             <table id="list">
            <th>view</th>
        <c:forEach items="${list}" var="u" begin="3" end="3">
                <td><a href="view/${u.getSeq()}">자세히 보기</a></td>
        </c:forEach>
    </table>
            <hr>
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