<%-- 
    Document   : start_game
    Created on : 19 Feb 2026, 22:35:01
    Author     : REASON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Game Page</title>
    </head>
    <body>
        <h1>Start game</h1>
        <%
          String compName = pageContext.getServletContext().getInitParameter("computer_name");
          String playerName =(String) session.getAttribute("name");
        %>
        <p>
            Hello <b><%=playerName%></b>. It's <b><%=compName%></b> here again.
            Click <a href="TossCoinServlet.do">here</a> to start the coin tossing game.
        </p>
    </body>
</html>
