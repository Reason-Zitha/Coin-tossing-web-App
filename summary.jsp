<%-- 
    Document   : summary
    Created on : 19 Feb 2026, 23:53:10
    Author     : REASON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary Page</title>
    </head>
    <body>
        <h1>Summary</h1>
       
        <%
           String compName = pageContext.getServletContext().getInitParameter("computer_name");
           String playerName = (String) session.getAttribute("name");
           Integer numGamesPlayed =(Integer) session.getAttribute("numGamesPlayed");
           Integer numGamesWon =(Integer) session.getAttribute("numGamesWon");
           Integer numGamesLost =(Integer) session.getAttribute("numGamesLost");
          
        %>
        
        <p>
            Hi <b><%=playerName%></b>, <b><%=compName%></b> here again. Below is the summary.
        </p>
        <table>
            <tr>
                <td>Number of games played :</td>
                <td><%=numGamesPlayed%></td>
            </tr>
            <tr>
                <td>Number of games won: </td>
                <td><%=numGamesWon%></td>
            </tr>
            <tr>
                <td>Number of games lost: </td>
                <td><%=numGamesLost%></td>
            </tr>
        </table>
            <p>
                Click <a href="EndSessionServlet.do">here</a> to end the game
                
            </p>
    </body>
</html>
