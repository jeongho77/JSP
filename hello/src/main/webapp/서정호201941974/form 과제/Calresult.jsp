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
        request.setCharacterEncoding("EUC-KR"); 
        
        int num1 = Integer.parseInt(request.getParameter("x"));
        int num2 = Integer.parseInt(request.getParameter("y"));
        
        String operator = request.getParameter("operator"); 
  %>

 <%
    
    if (operator.equals("+")) { %>
           <%=num1%> + <%=num2%> = <%=num1+num2 %>
       <%
        } else if (operator.equals("-")) { %>
            <%=num1%> - <%=num2%> = <%=num1-num2 %>
       <%
        }else if (operator.equals("*")){ %>
            <%=num1%> * <%=num2%> = <%=num1*num2 %>
       <%
        }else{ %>
            <%=num1%> / <%=num2%> = <%=num1/num2 %>
       <%	
        }
        %>

</body>
</html>