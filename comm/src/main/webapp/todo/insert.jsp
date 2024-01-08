<%@page import="dao.TodoDao"%>
<%@page import="vo.User"%>
<%@page import="vo.TodoCategory"%>
<%@page import="vo.Todo"%>
<%@page import="utils.NumberUtils"%>
<%@page import="dto.LoginUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LoginUser loginUser = (LoginUser) session.getAttribute("LOGIN_USER");
	
	if (loginUser == null) {
		response.sendRedirect("../loginform.jsp?error=deny");
		return;
	}
	
	int categoryNo = NumberUtils.toInt(request.getParameter("categoryNo"));
	String title = request.getParameter("title");
	String expectedDate = request.getParameter("expectedDate");
	String content = request.getParameter("content");
	
	TodoCategory category = new TodoCategory();
	category.setNo(categoryNo);
	
	User user = new User();
	user.setNo(loginUser.getNo());

	Todo todo = new Todo();
	
	todo.setCategory(category);
	todo.setTitle(title);
	todo.setExpectedDate(expectedDate);
	todo.setContent(content);
	todo.setUser(user);
	
	TodoDao todoDao = new TodoDao();
	todoDao.insertTodo(todo);
	
	response.sendRedirect("list.jsp");

%>