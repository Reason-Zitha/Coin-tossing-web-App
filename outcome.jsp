<%-- 
    Document   : outcome
    Created on : 19 Feb 2026, 23:31:26
    Author     : REASON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Outcome</h1>
        <%
           String compName = pageContext.getServletContext().getInitParameter("computer_name");
           String playerName = (String) session.getAttribute("name");
           String toss =(String) session.getAttribute("toss");
           String guess =(String) request.getAttribute("guess");
           String outcome =(String) request.getAttribute("outcome");
        %>
        
        <p>
            Below is the toss outcome: 
        </p>
        <table>
            <tr>
                <td><%=compName%>'s toss:</td>
                <td><%=toss%></td>
            </tr>
            <tr>
                <td><%=playerName%>'s guess</td>
                <td><%=playerName%></td>
            </tr>
            <tr>
                <td>Outcome: </td>
                <td><%=outcome%></td>
            </tr>
        </table>
            <p>
                Click <a href="TossCoinServlet.do">here</a> to continue the game
                or <a href="summary.jsp">here</a> to the end the game.
            </p>
    </body>
</html>
