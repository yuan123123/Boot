<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login" method="post">
		<input type="text" name="username">
		<input type="text" name="password">
		<div id="divid">${error }</div>
		<input type="submit" value="提交">
	</form>
	<%
Cookie cookie=new Cookie("rukujspCookie", "rukujspCookie");
response.addCookie(cookie);
%>
	<a href="../../rdr_reason.jsp">
		调转
	</a>
	<a href="rdr_reason2.jsp">
		调转2
	</a>
	<a href="../rdr_reason1.jsp">
		调转1
	</a>
</body>
	<script src="../js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript">
	$(window).load(function(){
		//清除
		$("#divid").empty();
	});
	</script>
</html>