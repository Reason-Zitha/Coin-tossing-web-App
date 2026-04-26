/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.TossCoinManager;
import za.ac.tut.model.bl.TossCoinManagerInt;

/**
 *
 * @author REASON
 */
public class GuessServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
         HttpSession session = request.getSession();
         String guess = request.getParameter("guess");
         String toss =(String) session.getAttribute("toss");
         
         TossCoinManagerInt tcmi = new TossCoinManager();
         String outcome = tcmi.determineOutcome(guess, toss);
         updateSession(outcome, session);
         request.setAttribute("guess", guess);
         request.setAttribute("outcome", outcome);
         
         RequestDispatcher disp = request.getRequestDispatcher("outcome.jsp");
         disp.forward(request, response);
         
         
        }
     private void updateSession(String outcome,HttpSession session){
          Integer numGamesPlayed =(Integer) session.getAttribute("numGamesPlayed");
          Integer numGamesWon =(Integer) session.getAttribute("numGamesWon");
          Integer numGamesLost =(Integer) session.getAttribute("numGamesLost");
          
          numGamesPlayed++;
          
          if(outcome.equals("Won")){
            numGamesWon++;
          }
          else{
            numGamesLost++;
          }
           session.setAttribute("numGamesPlayed",numGamesPlayed);
           session.setAttribute("numGamesWon",numGamesWon);
           session.setAttribute("numGamesLost",numGamesLost);
     }
    }

