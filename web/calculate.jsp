
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_other.jsp" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String n1=request.getParameter("num1");
            String n2=request.getParameter("num2");
            String op=request.getParameter("operation");
            
            int a=Integer.parseInt(n1);
            int b=Integer.parseInt(n2);
            pageContext.setAttribute("a", a);
            pageContext.setAttribute("b", b);
            pageContext.setAttribute("op", op);
            
        %>
        <x:choose>
            <x:when test="${op=='Add'}">
                <x:out value="Result is ${a+b}"></x:out>
            </x:when>
            <x:when test="${op=='Subtract'}">
                <x:out value="Result is ${a-b}"></x:out>
            </x:when>
            <x:when test="${op=='Multiply'}">
                <x:out value="Result is ${a*b}"></x:out>
            </x:when>
            <x:when test="${op=='Divide'}">
                <x:out value="Result is ${a/b}"></x:out>
            </x:when>
        </x:choose>
    </body>
</html>
