<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>DOM</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1>엘리먼트의 텍스트 콘텐츠 조회/변경하기</h1>
			
			<p id="e-1">첫 번째 텍스트</p>
			<p id="e-2">두 번째 텍스트</p>
		</div>
	</div>
</div>
<script type="text/javascript">
	// 첫 번째 p엘리먼트의 텍스트 콘텐츠를 조회하기
	let el1 = document.getElementById("e-1");	// Element 객체를 반환한다.
	let el2 = document.querySelector("#e-1");	// Element 객체를 반환한다.
	let el3 = document.querySelector("p");		// Element 객체를 반환한다.
	
	let el4 = document.getElementsByTagName("p");	// NodeList 객체를 반환한다.
	let el5 = document.querySelectorAll("p");		// NodeList 객체를 반환한다.
	
	let text1 = el1.textContent;	// Element객체의 textContent 프로퍼티값을 조회한다.
	let text2 = el2.textContent;
	let text3 = el3.textContent;
	let text4 = el4.textContent;	// NodeList객체는 textContent 프로퍼티가 없다. undefined가 반환된다.
	let text5 = el5.textContent;
	
	console.log(text1, text2, text3, text4, text5);
	
	// 두 번째 p엘리먼트의 텍스트 콘텐츠를 변경하기
	let el6 = document.getElementById("e-2");
	let el7 = document.querySelector("#e-2");
	
	el6.textContent = "텍스트 변경하기";
	el7.textContent = "텍스트 변경하기";
</script>
</body>
</html>