<%@page import="java.util.Calendar"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		Date date = new Date();
					SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
					String strdate = simpleDate.format(date);
					
					out.println("이름 " + name +"<br>");
					out.println("제목 " + title+"<br>");
					out.println("내용 " + text+ "<br>");
					out.println(strdate);	
					
	%>
	<%
		Calendar cal = Calendar.getInstance();
	%>
	
	<p>
	<%= cal.get(Calendar.YEAR) %>년
	<%= cal.get(Calendar.MONTH) %>월
	<%= cal.get(Calendar.DATE) %>일
	<%= cal.get(Calendar.MINUTE) %>일
	
	
</body>
</html>