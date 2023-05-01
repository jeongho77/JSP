<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
			request.setCharacterEncoding("utf-8");
	
			float radius = Float.parseFloat(request.getParameter("radius"));
			
	%>
		
	원의 둘레는 : <%= String.format("%.2f" , radius * 3.14 * 2) %><br>
	원의 넓이는 : <%= String.format("%.2f" , radius*radius*3.14) %>
</body>
</html>