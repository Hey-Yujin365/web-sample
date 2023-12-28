<%@page import="hr.dao.EmployeeDao"%>
<%@page import="utils.DateUtils"%>
<%@page import="hr.vo.Employee"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 요청 URL: http://localhost/sample/hr/emp/add.jsp
	// 요청파라미터
	// firstName, lastName, email, tel1, tel2, tel3,
	// hireDate, jobId, salary, commission, depoId
	
	// 요청파라미터값 조회하기
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String hireDate = request.getParameter("hireDate");
	String jobId = request.getParameter("jobId");
	double salary = Double.valueOf(request.getParameter("salary"));
	double commission = Double.valueOf(request.getParameter("commission"));
	int deptId = Integer.valueOf(request.getParameter("deptId"));
	
	// Employee객체를 생성하고, 요청파라미터값을 저장한다.
	Employee emp = new Employee();
	emp.setFirstName(firstName);
	emp.setLastName(lastName);
	emp.setEmail(email);
	emp.setPhoneNumber(tel1 + "-" + tel2 + "-" + tel3);
	emp.setHireDate(DateUtils.toDate(hireDate));
	emp.setJobId(jobId);
	emp.setSalary(salary);
	emp.setCommissionPct(commission);
	emp.setDepartmentId(deptId);
	System.out.println(emp);
	
	EmployeeDao empDao = new EmployeeDao();
	empDao.insertEmployee(emp);
%>