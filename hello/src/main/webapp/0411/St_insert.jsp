<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
	<meta charset="UTF-8">
<title>신상정보 입력폼</title>
</head>
<body>
<div style="width:30; border:solid 2px; height:30px background-color:#e78e52; float:left; margin:30px; ">

<div class = "hi">
	<form action="Main.jsp">
		<h2>신상정보 입력폼</h2>	
		<hr>
		학번 : <input type="text" name="number" required><br>
		이름 : <input type="text" name="name" required><br>
		학년 : <input type="radio" name="grade" value = "1" >1학년
				  <input type="radio" name="grade" value = "2">2학년
					<br>
		선택과목 :  
			<select name="class">
	 	    	<option value="JAVA">JAVA</option>
	      	<option value="C">C</option>
      </select><br>
    
      <button type="submit">입력완료</button>	
      
      			
	</form>
</div> 
	</div>
</body>
</html>