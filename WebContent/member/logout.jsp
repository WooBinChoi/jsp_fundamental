<%@ page pageEncoding="utf-8" %>

<%
	session.invalidate();//세션 객체 날려버림
	//session.setAttribute("login", null); //정보를 null로 바꿈
	response.sendRedirect("/member/login.jsp");
%>
