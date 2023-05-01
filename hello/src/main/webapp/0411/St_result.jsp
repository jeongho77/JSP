<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<style>
 .hi{
	border: 1px solid;
    text-align: center;
    width: 400px;
    height: 120px;
    color: green;
    text-align-last: center;
    padding: 100px;
}
 </style>
 

<div class = "hi">

<h2>이름을 입력해주세요.</h2>
	
	<form action="St_select.jsp">
		
		이름 : <input type="text" name="name"><br>
		
		<button type = submit>조회하기</button>
				
	</form>
		
</div> 