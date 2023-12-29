<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>bootstrap</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark mb-5">
	<div class="container-fluid">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a href="" class="nav-link">링크1</a>
			</li>
			<li class="nav-item">
				<a href="" class="nav-link active">링크2</a>
			</li>
			<li class="nav-item">
				<a href="" class="nav-link">링크3</a>
			</li>
			<li class="nav-item">
				<a href="" class="nav-link">링크4</a>
			</li>
		</ul>
	</div> 
</nav>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark mb-5">
	<div class="container-fluid">
		<!-- 
			회사 로그이미지 혹은 회사명이 위치한다.
			보통 클릭하면 해당 웹사이트의 홈페이지로 이동한다.
		 -->
		<a class="navbar-brand" href="home.jsp">
			중앙HTA
		</a>
	</div>
</nav>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark mb-5">
	<div class="container-fluid">
		<a class="navbar-brand">
			<img src="resources/images/sample.jpg" style="width:40px;" class="rounded-pill" />
		</a>
		<ul class="navbar-nav me-auto">
			<li class="nav-item">
				<a href="" class="nav-link">링크1</a>
			</li>
			<li class="nav-item">
				<a href="" class="nav-link active">링크2</a>
			</li>
			<li class="nav-item">
				<a href="" class="nav-link">링크3</a>
			</li>
			<li class="nav-item">
				<a href="" class="nav-link">링크4</a>
			</li>
		</ul>
		<ul class="navbar-nav">
			<li class="nav-item">
				<a href="" class="nav-link">로그인</a>
			</li>
			<li class="nav-item">
				<a href="" class="nav-link">회원가입</a>
			</li>
		</ul>
	</div>
</nav>

<div class="container">
	<div class="row">
		<div class="col-12">
		요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
		기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
		모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다.
		요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
		기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
		모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다.
		</div>
	</div>
</div>
</body>
</html>