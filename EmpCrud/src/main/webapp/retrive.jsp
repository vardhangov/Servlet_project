<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.mphasis.empdao.EmpCRUD" %>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
EmpCRUD crud=new EmpCRUD();
ResultSet rs=crud.show();
out.println("Empno"+"  "+"Empname");
%>
<a href="Edit.jsp">Edit</a>  <a href="Delete.jsp">Delete</a>   <br>
<%
while(rs.next()){
    
    out.println(rs.getInt(1)+"  "+rs.getString(2)+"\n");
    
    %>
    <a href="Edit.jsp">Edit</a>  <a href="Delete.jsp">Delete</a>   <br>
    <form action="Edit.jsp"></form>
    <form action = "Delete.jsp">
    </form>
    
    <br>
    <%} %>

</form>



</body>
</html>
