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
	<div class="col-12">
		<h1>폼 입력양식</h1>

<%--
	List<Status> statusList = dao.getAllStatus();
	
	for (Status s : statusList) {
		<div class="form-check">
			<input type="radio"
				   class="form-check-input"
				   name="status"
				   id="status-<%=s.getNo()%>"
				   value="<%=s.getNo()%>" />
			<label class="form-check-label"><%=s.getName() %></label>
		</div>
	}
--%>		
		<form>
			<div class="form-group">
				<label class="form-label">카테고리</label>
				<select class="form-select" name="catNo">
					<option value="100"> 가구</option>
					<option value="101"> 가전</option>
					<option value="102" selected> 디지털</option>
					<option value="103"> 주방</option>
					<option value="104"> 기타</option>
				</select>
			</div>
			<div class="form-gorup">
				<label class="form-label">이름</label>
				<input type="text" class="form-control" name="username" />
			</div>
			<div class="form-group">
				<label class="form-label">닉네임</label>
				<input type="text" class="form-control" name="nickname" value="멋쟁이" />
			</div>
			<div class="form-group">
				<label class="form-label">메모</label>
				<textarea class="form-control" rows="4" name="memo">좋은 제품입니다.</textarea>
			</div>
			<div class="form-group">
				<label class="form-label">상태</label>
				<div class="form-check">
					<input type="radio" class="form-check-input" id="status-300" name="status" value="300">
					<label class="form-check-label">입고예정</label>
				</div>
				<div class="form-check">
					<input type="radio" class="form-check-input" id="status-301" name="status" value="301">
					<label class="form-check-label">판매중</label>
				</div>
				<div class="form-check">
					<input type="radio" class="form-check-input" id="status-302" name="status" value="302">
					<label class="form-check-label">재고없음</label>
				</div>
			</div>
			<div class="form-group">
				<label class="form-label">이벤트</label>
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="event-700" name="event" value="700" checked>
					<label class="form-check-label">무료배송</label>
				</div>
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="event-701" name="event" value="701" checked="checked">
					<label class="form-check-label">당일배송</label>
				</div>
				<div class="form-check">
					<input type="checkbox" class="form-check-input" id="event-702" name="event" value="702">
					<label class="form-check-label">카드할인</label>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	/*
		폼입력양식(input, select, textarea)의 값 조회하기
			let x = element.value;
			* x에 해당 엘리먼트의 값이 대입된다.
			
		폼입력양식(input, select, textarea)의 값 변경하기
			element.value = 값;
	*/
	
	// selectbox의 선택된 옵션값 조회하기
	// document.getElementById();	// id가 없기 때문에 사용 못함
	// document.getElementsByTagName();		// NodeList를 반환해서 사용 못함
	// document.getElementsByClassName();	// NodeList를 반환해서 사용 못함
	// document.querySelectorAll();		// NodeList를 반환해서 사용 못함
	let el1 = document.querySelector("select[name='catNo']");
	let value1 = el1.value;
	console.log("카테고리번호", value1);
	
	// selectbox의 선택된 값을 변경하기
	el1.value = "104";
	
	// 이름 입력필드(input)의 값을 변경하기
	let el2 = document.querySelector("input[name='username']");
	el2.value = "홍길동";
	
	// 닉네임 입력필드의 값을 조회하기
	let el3 = document.querySelector("input[name='nickname']");
	let value3 = el3.value;
	console.log(value3);
	
	// text 입력필드의 값 조회하기
	let el4 = document.querySelector("textarea[name='memo']");
	let value4 = el4.value;
	console.log(value4);
	
	// radio버튼 중에서 특정 라디오버튼을 체크하기
	let el5 = document.querySelector("#status-301");
	el5.checked = true;
	
	// radio 버튼 중에서 체크된 라디오버튼의 값을 조회하기
	let el6 = document.querySelector("input[name=status]:checked");
	let value6 = el6.value;
	console.log(value6);
	
	// 모든 체크박스를 선택해제하기
	let eventNodeList = document.querySelectorAll("input[name=event]");
	// eventNodeList => [checkbox엘리먼트, checkbox엘리먼트, checkbox엘리먼트]
	for (let index = 0; index < eventNodeList.length; index++) {
		let checkbox = eventNodeList[index];
		checkbox.checked = false;
	}
	
</script>
</body>
</html>