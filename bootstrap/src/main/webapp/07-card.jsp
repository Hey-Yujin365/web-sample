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
<!-- 
	.card
		+ 카드는 유연하고 확장이 가능한 컨테이너다.
		+ 카드는 Header, Body, Footer를 포함한다.
		+ 카드의 Body는 다양한 콘텐츠를 포함할 수 있다.
 -->
<div class="container">
	<div class="row">
		<div class="col-3">
			<div class="card">
				<img src="resources/images/sample.jpg"
					class="card-img-top"
					alt="상품표지">
				<div class="card-body">
					<h5 class="card-title">지구를 사랑하자</h5>
					<p class="card-text">사라져 가는 지구의 마지막 색깔들을 찾아서</p>
					<a href="" class="btn btn-primary">상세정보</a>
				</div>
			</div>
		</div>
		
		<div class="col-3">
			<div class="card">
				<div class="card-body">
						요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
						기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
						모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다
				</div>
			</div>
		</div>
		
		<div class="col-6">
			<div class="card">
				<div class="card-header">
					교육 내용
				</div>
				<div class="card-body">
					<h5 class="card-title">2023년 4분기 교육 내용</h5>
					<p class="card-text">
						요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
						기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
						모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다
					</p>
				</div>
				<div class="card-footer text-end">
					<a href="" class="btn btn-outline-primary btn-sm">추가정보</a>
				</div>
			</div>
		</div>
	</div>
	<div class="row mt-3">
		<div class="col-6">
			<div class="card">
				<div class="card-header">직원 현황</div>
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>연락처</th>
							<th>이메일</th>
							<th>부서명</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>