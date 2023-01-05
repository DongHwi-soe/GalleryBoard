<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리 업로드 페이지</title>
<link href="../CSS/GalleryAddPageCSS.css?ver=1" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrap">
		<!-- 상단 배너 -->
		<div class="header">
			<img id="schoolLogo" src="../Image/schoolLogo.png" alt="학교 로고">
		</div>
		<!-- 메뉴 -->
		<div class="nav">
			<nav id="navMenu">
				<ul id="navItem">
					<li><a href="#">메인</a></li>
					<li><a href="#">환영사</a>
						<ul id="welcomeItem">
							<li><a href="#">환영사</a></li>
							<li><a href="#">Contact US</a></li>
						</ul>
					</li>
					<li><a href="#">커뮤니티</a>
						<ul id="communityItem">
							<li><a href="#">게시판</a></li>
							<li><a href="./GalleryPage.jsp">갤러리</a></li>
						</ul>
					</li>
					<li><a href="#">페이</a></li>
					<li><a href="#">로그인</a></li>
				</ul>
			</nav>
		</div>
		<!-- 갤러리 업로드 -->
		<div class="content">
			<div id="contentWrap">
				<form method="post" action="./WriteAction.jsp">
					<div id="notice"><h1>갤러리 작성 양식</h1></div>
					<div id="titleInput"><input type="text" name="title" placeholder="제목을 입력하세요." required="required"/></div>
					<div id="contentsInput"><input type="text" name="contents" placeholder="내용을 입력하세요."/></div>
					<div id="fileInput"><input type="file" name="fileName"/></div>
					<div id="submitButton"><button type="submit">Sign In</button></div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>