<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>시험 점수</title>
</head>
<body>
<%
        request.setCharacterEncoding("EUC-KR"); 
        
        int kor = Integer.parseInt(request.getParameter("kor"));
        int math = Integer.parseInt(request.getParameter("math"));
        int eng = Integer.parseInt(request.getParameter("eng"));
        
        String operator = request.getParameter("operator");
        
        int sum = kor + math + eng;
        double sum2 = sum;
        double avg = (sum2/3);
    %>
<!-- 점수,총점,평균출력 -->
 <%
 		
	 out.println("국어 점수는 : " + kor + "점 입니다.<br>"); 
   out.println("수학 점수는 : " + math + "점 입니다.<br>");
   out.println("영어 점수는 : " + eng + "점 입니다.<br>");
   out.println("국어,수학,영어의 총점은 : " + sum + "점 입니다.<br>");
   out.println("총점의 평균은 : "+ String.format("%.2f" , avg) + "점 입니다");
    
 %>

	
</body>
</html>