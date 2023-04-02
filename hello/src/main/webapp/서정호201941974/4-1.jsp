<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% out.println("시험 점수를 입력해주세요"); %>
	
			<form action="4-1result.jsp" method="post">
	
				국어 : <input type="text" name="kor"><br>
				수학 : <input type="text" name="math"><br>
				영어 : <input type="text" name="eng"><br>
	
	 		<input type="submit" value="보내기">
	
			</form>
</body>
</html>