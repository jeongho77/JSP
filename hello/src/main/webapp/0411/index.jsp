<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type = "text/javascript" src="js.js"></script>
<head>

	<meta charset="UTF-8" >
<title>Insert title here</title>
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
#test_btn1{
	border-top-left-radius: 5px;
	border-bottom-left-radius:5px;
	margin-right:-4px;
}
.test_btn2{
	border-top-left-radius: 5px;
	border-bottom-left-radius:5px;
	margin-right:-3px;
}
.btn_group button{
border : 1px solid skyblue;
background-color : rbga(0,0,0,0);
color:skyblue;
padding : 5px;
}
#btn_group button:hover{
color:white;
background-color:skyblue;
}

</style>
</head>
<body>

<div class = "hi" >


<h2>학생정보 등록/조회</h2>
		
		<div class = "2div">
			<div id = "btn_group">
			<button class="test_btn" onclick="location.href='St_insert.jsp'">학생정보 등록하기</button>
			
			<button class="test_btn3" onclick="location.href='St_list.jsp'">학생정보 리스트보기</button>
			</div>
		</div>
</div>	
</body>
</html>