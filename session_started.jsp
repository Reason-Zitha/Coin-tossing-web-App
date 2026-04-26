<%-- 
    Document   : session_started
    Created on : 19 Feb 2026, 22:00:11
    Author     : REASON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session Started Page</title>
    </head>
    <body>
        <h1>Session started</h1>
        <%
           String compName= pageContext.getServletContext().getInitParameter("computer_name");
        %>
        <p>
            Hello.My name is <b><%=compName%></b>. What's your name?
        </p>
        <form action="NameServlet.do" method="POST">
            <tr>
                 <td>Name: </td>
                 <td><input type="text" name="name"/></td>
            </tr>
            <tr>
                <td></td> 
                <td><input type="submit" value="SUBMIT"/></td>
            </tr>
          
        </form>
    </body>
</html>
