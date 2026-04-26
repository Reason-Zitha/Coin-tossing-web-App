<%-- 
    Document   : user_guess
    Created on : 19 Feb 2026, 22:53:05
    Author     : REASON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Guess Page</title>
    </head>
    <body>
        <h1>User guess</h1>
        <%
           String compName = pageContext.getServletContext().getInitParameter("computer_name");
           String playerName = (String) session.getAttribute("name");
        %>
        <p>
            <b><%=playerName%></b>,it's <b><%=compName%></b> here again.
            I have tossed a coin .Please guess it.
        </p>
        <<form action="GuessServlet.do" method="POST">
            <table>
                <tr>
                    <td>Guess: </td>
                    <td>
                        <select name="guess"> 
                            <option value="Heads">Heads</option>
                            <option value="Tails">Tails</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SUBMIT"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
