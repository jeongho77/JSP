<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action = "4-7result.jsp" method = "post">
	
	관심언어 : <input type = "checkbox" name = "box" value="PHP">PHP
					 <input type = "checkbox" name = "box" value="JSP">JSP
					 <input type = "checkbox" name = "box" value="ASP.NET">ASP.NET<br>
	취미 : <select name = "select" size = "4" multiple>
					<option value = "영화">영화</option>
					<option value = "운동">운동</option>
					<option value = "독서">독서</option>
					<option value = "기타">기타</option><br>
				</select><br>
					<input type = "submit" value="전송">	
	</form>
	
</body>
</html>