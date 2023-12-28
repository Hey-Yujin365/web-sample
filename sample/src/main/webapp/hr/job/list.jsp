<%@page import="hr.vo.Job"%>
<%@page import="java.util.List"%>
<%@page import="hr.dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직종 목록</title>
</head>
<body>
	<h1>직종 목록</h1>
<%
	JobDao dao = new JobDao();
	List<Job> jobList = dao.getAllJobs();
%>
	<ul>
<% 
	for (Job job : jobList) {
%>
		<li><a href="detail.jsp?jobId=<%=job.getId() %>"><%=job.getTitle() %></a></li>
<%
	}
%>
	</ul>
	
	<div>
		<a href="form.jsp">신규 직종 등록</a>
	</div>
</body>
</html>