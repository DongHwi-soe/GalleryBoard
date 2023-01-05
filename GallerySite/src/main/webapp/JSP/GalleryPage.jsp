<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리 페이지</title>
<link href="../CSS/GalleryPageCSS.css?ver=10" rel="stylesheet" type="text/css" />
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
		<!-- 갤러리 -->
		<div class="content">
			<div id="contentWrap">
				<div id="galleryBoard"></div>
				<div id="galleryPager"></div>
			</div>
			<div id="galleryAdd">
				<img id="galleryAdd" src="../Image/addButton.svg" alt="갤러리 추가">
			</div>
		</div>
	</div>
</body>
</html>