<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ page import="com.mphasis.empdao.EmpCRUD" %>
    	<%@ page import="com.mphasis.empbean.Empbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% EmpCRUD crud=new EmpCRUD();
Empbean eb = new Empbean();%>
<form>
Empno<input type="text" name="empno">
<input type="submit">
</form>
<%
eb.setEmpno(Integer.parseInt(request.getParameter("empno")));
int row=crud.delete(eb);
if(row>0){
    out.println("One record id deleted");

	}

else{
    out.println("deletion not happen");
}%>

</form>
</body>
</html>