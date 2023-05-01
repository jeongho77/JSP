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

		String[] box = request.getParameterValues("box");
		String[] select = request.getParameterValues("select");
%>	

		관심언어 : <%
		for(int i = 0; i < box.length; i++){
			out.println(box[i] + " ");
		}
		%>
		<br>
		취미 : <%
		for(int i = 0; i < select.length; i++){
			out.println(select[i] + " ");
		}
		
		%>
</body>
</html>