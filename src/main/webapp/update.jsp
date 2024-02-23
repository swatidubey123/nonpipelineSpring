<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Integer empno=Integer.parseInt(request.getParameter("empno")) ;
String empname=request.getParameter("empname");
String phono=request.getParameter("phono");
%>
<form action="update">
Employee Number<input type="text" name="empno" value="<%=empno%>" readonly="readonly"><br>
Empname<input type="text" name="empname" value="<%=empname%>"><br>
Empphono<input type="text" name="phono" value="<%=phono%>"><br>
<input type="submit" value="update employee">
</form>
</body>
</html>