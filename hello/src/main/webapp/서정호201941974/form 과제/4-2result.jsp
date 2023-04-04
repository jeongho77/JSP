<%@page import="java.util.Calendar"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
   .container {
      width: 70%;
      }
</style>
<title>Insert title here</title>
</head>
<body>
	<%
					request.setCharacterEncoding("utf-8");
	
					String name = request.getParameter("name");
					String title = request.getParameter("title");
					String text = request.getParameter("text");
		
 					out.println("현재시간 : ");
 					java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy년MM월dd일HH:mm:ss");
 					String today = formatter.format(new java.util.Date());

 					out.println(today);

%>
	<div class="container">
      <div class="row">
         <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
            <thead>
               <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성내용</th>
               </tr>
            </thead>
            <tbody>
               <tr>
          		    <td>1</td>
             		  <td><%=title %></td>
              		<td><%=name %></td>
              		<td><%=text %></td>
	
</body>
</html>