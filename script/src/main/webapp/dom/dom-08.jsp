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
			<h1>이벤트 버블링</h1>
			
			<div onclick="handler1(event)" class="border p-3">
				첫 번째 박스
				<div onclick="handler2(event)" class="border p-3 mt-3">
					두 번째 박스
					<div onclick="handler3(event)" class="border p-3 mt-3">
						세 번째 박스
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function handler1(event) {
		console.log("1번 박스가 클릭되었습니다.");
		event.stopImmediatePropagation();
	}
	function handler2(event) {
		console.log("2번 박스가 클릭되었습니다.");
		event.stopImmediatePropagation();
	}
	function handler3(event) {
		console.log("3번 박스가 클릭되었습니다.");
		event.stopImmediatePropagation();
	}

</script>
</body>
</html>