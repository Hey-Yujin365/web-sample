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
	그리드 시스템
		+ 그리드 시스템은 컨테이너, 행, 열을 사용하여 콘텐츠를 표시하는 레아이웃을 구성하고 정렬한다.
		+ .row는 행을 정의한다.
		+ .col은 열을 정의한다.
		+ 행은 열의 래퍼다.(즉, 모든 열은 반드시 특정 행에 포함되어야 한다.)
		+ 행 하나당 12개의 열을 사용할 수 있다.
		+ 12개의 열을 다양하게 조합해서 레이아웃을 구성한다.
		+ 모든 콘텐츠는 반드시 열 안에서 표현해야 한다.
 -->
<div class="container">
	<div class="row bg-primary">
		<div class="col-12">
			요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
			기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
			모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다
		</div>
	</div>
	<div class="row bg-secondary">
		<div class="col-6">
			요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
			기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
			모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다
		</div>
		<div class="col-6">
			요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
			기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
			모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다
		</div>
	</div>
	<div class="row bg-warning">
		<div class="col-3">
			요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
			기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
			모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다
		</div>
		<div class="col-9">
			요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
			기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
			모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다
		</div>
	</div>
</div>
</body>
</html>