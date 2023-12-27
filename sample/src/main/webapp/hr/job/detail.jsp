<%@page import="java.util.List"%>
<%@page import="hr.vo.Job"%>
<%@page import="hr.dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>직종 상세 정보</h1>
<%
	// 요청 URL : http://localhost/sample/hr/job/detail.jsp?jobId=xxx
	String jobId = request.getParameter("jobId");

	JobDao dao = new JobDao();
	Job job = dao.getJobById(jobId);
%>
	<dl>

		<dt>아이디</dt><dd><%=job.getId() %></dd>
		<dt>제목</dt><dd><%=job.getTitle() %></dd>
		<dt>최저급여</dt><dd><%=job.getMinSalary() %></dd>
		<dt>최고급여</dt><dd><%=job.getMaxSalary() %></dd>
	</dl>
	
	<div>
		<a href="list.jsp">목록</a>
	</div>
</body>
</html>