<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ex0405.MemberDBManager" %>
<%
	String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	
	MemberDBManager mdm = new MemberDBManager();
	boolean ret = mdm.loginCheck(userName, password);
	if(ret){
		session.setAttribute("userName", userName);
		response.sendRedirect("index.jsp");
	}else{
		String alert = "<script>alert('로그인 실패'); location.href = 'index.jsp'</script>";
		out.println(alert);
	}
	
%>