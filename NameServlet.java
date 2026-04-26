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

/**
 *
 * @author REASON
 */
public class NameServlet extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
           HttpSession session = request.getSession();
           
           String name = request.getParameter("name");
           updateSession(session, name);
           
           RequestDispatcher disp = request.getRequestDispatcher("start_game.jsp");
           disp.forward(request, response);
           
        }
        private void updateSession(HttpSession session,String name){
              session.setAttribute("name", name);
        }
    }

  
