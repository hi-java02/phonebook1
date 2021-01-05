<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo"%>


<%
	/* http://localhost:8088/phonebook1/insert.jsp?name=황일영&hp=010-1111-1111&company=02-2222-2222 */
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(name, hp, company);
	
	
	PhoneDao phoneDao = new PhoneDao();
	/* 저장 */
	phoneDao.personInsert(personVo);
	
	
	/* response.sendRedirect("./list.jsp"); */
	
%>
