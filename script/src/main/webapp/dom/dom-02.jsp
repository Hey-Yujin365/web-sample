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
			<h1>엘리먼트 선택하기</h1>
			
			<div id="box" class="border p-3 mt-3">
				<p id="intro"  class="box-text">첫 번째 엘리먼트</p>
				<p id="box-text">두 번째 엘리먼트</p>
				<p>세 번째 엘리먼트</p>
				<p>네 번째 엘리먼트</p>
				<p>다섯 번째 엘리먼트</p>
			</div>
			<div class="border p-3 mt-3">
				<button onclick="handler1()">아이디로 선택하기</button>
				<button onclick="handler2()">태그명으로 선택하기</button>
				<button onclick="handler3()">클래스명으로 선택하기</button>
				<button>css 선택자로 엘리먼트 하나 선택하기</button>
				<button>css 선택자로 엘리먼트 여러 개 선택하기</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	/*
		엘리먼트 선택하기
			Element				getElementById(id)
			NodeList			getElementsByTagName(tagName)
			NodeList			getElementsByClassName(className)
	
			Element				querySelector(css선택자)
			NodeList			querySelectorAll(css선택자)
	*/
	
	function handler1() {
		let el = document.getElementById("intro");
		// 선택된 엘리먼트의 스타일을 변경하기
		el.style.color = 'red';
	}

	function handler2() {
		let nodeList = document.getElementsByTagName("p");
		for (let index = 0; index < nodeList.length; index++) {
			let el = nodeList[index];
			// display 스타일 속성을 none로 지정하면 엘리먼트가 화면에서 사라진다.
			// 엘리먼트가 삭제되지는 않음
			el.style.display = 'none';
		}
	}
	
	function handler3() {
		let nodeList = document.getElementsByClassName("box-text");
		for (let index = 0; index < nodeList.length; index++) {
			let el = nodeList[index];
			// display 스타일 속성을 "block"으로 지정하면 엘리먼크가 화면에 표시된다.
			el.style.display = '';}
	}
</script>
</body>
</html>