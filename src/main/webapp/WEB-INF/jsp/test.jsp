<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	true！
	<%
	Cookie[] cookies = request.getCookies();
	String name=null;
	String value=null;
	for (Cookie cookie : cookies) {
		if(cookie.getName().equals("rukujspCookie")){
			name=cookie.getName();
		}
		if(cookie.getValue().equals("rukujspCookie")){
			System.out.print(cookie.getValue()+"+cookie.getValue()");
			value=cookie.getValue();
			System.out.print(value+"+VALUE");
		}else{
			value="123";
		}
	}
	if(!value.equals("rukujspCookie")){
	%>
	123
	<%}else{
	%>
	456
	<%} %>
</body>
</html>