<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>커뮤니티</title>
</head>
<body>
<%@ include file="include/navbar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1>회원가입 폼</h1>
<%
	/*
		요청URL
			회원가입 링크를 클릭한 경우
				localhost/comm/registerform.jsp
			회원가입 실패로 재요청한 경우
				localhost/comm/registerform.jsp?fail=id
				localhost/comm/registerform.jsp?fail=email
		요청파라미터
			fail=xxx
			* 정상적인 요청인 경우 fail의 요청파라미터값을 조회했을 때 null이다.
			* 가입실패로 인한 재요청인 경우 fail의 요청파라미터값은 id 혹은 email이다.
	*/
	
	String fail = request.getParameter("fail");
%>

<%
	if ("id".equals(fail)) {
%>
			<div class="alert alert-danger">
				<strong>회원가입 오류</strong> 이며 사용중인 아이디입니다.
			</div>
<%
	} 
%>
			<form class="border bg-light p-3" method="post" action="register.jsp">
				<div class="form-group mb-3">
					<label class="form-label">아이디</label>
					<input type="text" class="form-control" name="id" />
				</div>
				<div class="form-group mb-3">
					<label class="form-label">비밀번호</label>
					<input type="password" class="form-control" name="password" />
				</div>
				<div class="form-group mb-3">
					<label class="form-label">이름</label>
					<input type="text" class="form-control" name="name" />
				</div>
				<div class="form-group mb-3">
					<label class="form-label">이메일</label>
					<input type="text" class="form-control" name="email" />
				</div>
				<div class="form-group mb-3">
					<label class="form-label">전화번호</label>
					<input type="text" class="form-control" name="tel" />
				</div>
				<div class="text-end">
					<a href="" class="btn btn-secondary">취소</a>
					<button type="submit" class="btn btn-primary">가입</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>