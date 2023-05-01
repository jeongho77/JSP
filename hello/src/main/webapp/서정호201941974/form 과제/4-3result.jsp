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
<title>회원가입</title>
</head>
<body>
<caption><h3>회원가입 확인하기</h3></caption>
	<%
					request.setCharacterEncoding("utf-8");
	
					String name = request.getParameter("name");
					String id = request.getParameter("id");
					String passwd = request.getParameter("passwd");
					String repasswd = request.getParameter("repasswd");
					String[] hobby = request.getParameterValues("hobby");
					String major = request.getParameter("major");
					String a;
					%>

	<div class="container">
      <div class="row">
         <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
            <thead>
               <tr>
                  <th>이름</th>
                  <th>아이디</th>
                  <th>비밀번호</th>
                  <th>비밀번호확인</th>
                  <th>취미</th>
                  <th>전공</th>
               </tr>
            </thead>
            <tbody>
               <tr>
          		    <td><%=name %></td>
          		    <td><%=id %></td>
             		  <td><%=passwd %></td>
              		<td><%=repasswd %></td>
              		<td><%=major %></td>
              		<td><% for(int i = 0;i<hobby.length;i++){ %>
											<% out.print(hobby[i]); %><br>
         							<% }  %>
         					</tr>
           		</tbody>
</body>
</html>