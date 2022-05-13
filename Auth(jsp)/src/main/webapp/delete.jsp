<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="ex0405.MemberDBManager"%>
<%@page import="ex0405.Member"%>
<%


// 주소줄에 한개 가져오기
// request.getParmeter("id");
// id 여러개 가져오기
	
String ids[] = request.getParameterValues("id");
for (int i = 0; i < ids.length; i++) {
	out.println(ids[i]);
}

MemberDBManager mdm = new MemberDBManager();
String result = mdm.doDelete(ids);

if (result.equals("success")) {
	response.sendRedirect("select.jsp"); 
}
 
%>