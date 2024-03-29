<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>커뮤니티::로그인폼</title>
</head>
<body>
<jsp:include page="include/navbar.jsp">
	<jsp:param value="login" name="menu"/>
</jsp:include>
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1>로그인 폼</h1>
			
<%
	/*
		요청 URL
			+ 로그인 메뉴를 클릭해서 요청할 때
				localhost/comm/loginform.jsp
			+ 로그인 실패로 재요청할 때
				localhost/comm/loginform.jsp?error=xxx
		요청파라미터
			error=xxx
			* error 요청 파라미터는 로그인요청이 실패했을 때
			  login.jsp가 응답으로 보내는 재요청URL에 포함되어 있다.
	*/
	
	// 1. 요청 파라미터 조회
	String error = request.getParameter("error");
%>

<%
	if ("fail".equals(error)) {
%>
			<div class="alert alert-danger">
				<strong>로그인 실패</strong> 아이디 혹은 비밀번호가 올바르지 않습니다.
			</div>
<%
	} else if ("deleted".equals(error)){
%>
			<div class="alert alert-danger">
				<strong>로그인 실패</strong> 탈퇴한 회원입니다.
			</div>
<%
	} else if ("deny".equals(error)){
%>
			<div class="alert alert-danger">
				<strong>로그인 필수</strong> 로그인이 필요한 요청입니다.
			</div>
<%
	}
%>

			<form class="border bg-light p-3"
				method="post"
				action="login.jsp"
				onsubmit="checkForm(event)">
				<div class="form-group">
					<label class="form-label">아이디</label>
					<input type="text" class="form-control" name="id" />
				</div>
				<div class="form-group mb-3">
					<label class="form-label">비밀번호</label>
					<input type="password" class="form-control" name="password" />
				</div>
				<div class="text-end">
					<a href="registerform.jsp" class="btn btn-secondary">회원가입</a>
					<button type="submit" class="btn btn-primary">로그인</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	function checkForm(event) {
		// 1. 아이디, 비밀번호 입력필드 엘리먼트를 조회한다.
		let idInput = document.querySelector("input[name=id]");
		let passwordInput = document.querySelector("input[name=password]");
		
		// 2. 아이디, 비밀번호 입력필드의 값을 조회한다.
		let id = idInput.value.trim();
		let password = passwordInput.value.trim();
		
		// 3. 아이디, 비밀번호 값을 체크한다.
		if (id === "") {
			alert("아이디를 입력하세요.");
			event.preventDefault();
			return;
		}
		
		if (password === "") {
			alert("비밀번호를 입력하세요.");
			event.preventDefault();
			return;
		}
	}
</script>
</body>
</html>