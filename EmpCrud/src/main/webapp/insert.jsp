<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.mphasis.empbean.Empbean" %>
	<%@ page import="com.mphasis.empdao.EmpCRUD" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
Empbean eb=new Empbean();
eb.setEmpno(Integer.parseInt(request.getParameter("empno")));
eb.setEmpname(request.getParameter("empname"));
EmpCRUD crud=new EmpCRUD();
int row=crud.insert(eb);
if(row>0){
    out.println("insertion successful");%>

<form action="retrive.jsp">
<input type="submit" value="retrive">
</form>


<%}

else{
    out.println("chck the insertion");
}
%>




</body>
</html>
