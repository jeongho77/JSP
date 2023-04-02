<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="Calresult.jsp" method="post">

	x : <input type="text" name="x"><br>
	y : <input type="text" name="y"><br>
	 
연산자: <select name="operator">
	  	    <option value="+">+</option>
  	      <option value="-">-</option>
          <option value="*">*</option>
          <option value="/">/</option>
      </select>
	
	<input type="submit" value="보내기">
</form>
</body>
</html>