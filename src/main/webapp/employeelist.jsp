<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.example.demo.pojo.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%List<Employee> list=(List<Employee>)request.getAttribute("list");  %>
<table border="1">
<tr><th>Employee Id</th><th>Employee Name</th><th>Employee Phono</th></tr>
<%for(Employee ss:list){ %>
<tr><td><%=ss.getEmpno() %></td><td><%=ss.getEmpname() %></td><td><%=ss.getPhono() %></td>
<td><form method="post" action="delete">
<input type="hidden" name="empno" value="<%=ss.getEmpno() %>">
<button type="submit">Delete Employee</button>
</form>
</td>
<td>
<form method="post" action="update.jsp">
<input type="hidden" name="empno" value="<%=ss.getEmpno() %>">
<input type="hidden" name="empname" value="<%=ss.getEmpname() %>">
<input type="hidden" name="phono" value="<%=ss.getPhono() %>">
<button type="submit">update Employee</button>
</form>
</td>


</tr>
<%} %>
</table>
</body>
</html>
