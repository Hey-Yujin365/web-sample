<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 
	반응형 meta 태그를 추가한다.
	+ 부트스트랩은 모바일 기기를 우선으로 개발하기 때문에 모바일 기기에 최적화하기 위해
	  모든 모바일 장치에 화면이 올바르게 렌더링되고, 터치 확대 조절을 보장하기 위해서 
	  <head>태그에 <meta>태그로 viewport 메타태그를 추가한다.
	  viewport 메타태그로 해당 모바일 장치의 너비와 확대축소 스케일을 지정한다.
 -->
<meta name="viewport" content="width=device-width, initail-scale=1">
<!-- 
	부트스트랩 CSS 파일을 이 페이지에 포함시킨다.
	+ bootstrap.css와 bootstrap.min.scc 중 하나를 포함시킨다.
	+ bootstrap.css와 bootstrap.min.css는 내용이 동일한 파일이다.
	+ bootstrap.min.css는 bootstrap.css에서 불필요한 빈줄, 공백을 제거한 파일이다.
	+ bootstrap.min.css가 bootstrap.css보다 파일의 ㅏ이즈가 더 작다.
	  (네트워크로 더 빠르게 내려받을 수 있고, 통신요금도 절약된다.)
 -->
<link rel="stylesheet" href="resources/bootstrap-5.3.1-dist/css/bootstrap.min.css">
<!-- 
	부트스트랩의 다양한 플러그인 실행을 지원하는 자바스크립트 코드를 포함시킨다.
 -->
<script type="text/javascript" src="resources/bootstrap-5.3.1-dist/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 
	컨테이너(.container 혹은 .container-fluid)
		+ 부트스트랩에서 모든 콘텐츠를 포함하는 요소다.
		+ 부트스트랩으로 구성된 화면에는 항상 최외곽에
		  .container 혹은 .container-fluid 클래스 속성이 적용된 div가 위치해야 한다.
		+ 부트스트랩에서 제공하는 그리드시스템(레이아웃 구성을 지원한다.)이 정상적으로
		  적용되기 위해서 필요하다.
 -->
	<div class="container">
		요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
		기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
		모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다.
		요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
		기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
		모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다.
	</div>
	<div class="container-fluid">
		요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
		기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
		모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다.
		요소는 캘린더나 날짜 선택기 같은 서드 파티 위젯에서 폭넓게 사용되고 있기 때문에 Bootstrap의 테이블은 opt-in 방식을 사용합니다.
		기본 클래스 table을에 넣으면 우리의 선택 수정자 클래스 또는 커스텀 스타일로 확장할 수 있습니다.
		모든 테이블 스타일이 Bootstrap에 상속되지 않기 때문에 중첩된 테이블은 부모와 독립적으로 스타일을 지정할 수 있습니다.
	</div>
</body>
</html>