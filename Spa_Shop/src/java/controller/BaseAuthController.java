/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import database.AccountDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author Le Viet
 */

public abstract class BaseAuthController extends HttpServlet {
   private boolean isAuthenticated (HttpServletRequest request){
      Account account = (Account)request.getSession().getAttribute("account");
        if(account ==null)
            return false;
        else
        {
            String url = request.getServletPath();
            AccountDBContext db = new AccountDBContext();
            int permission = db.getPerssion(account.getUsername(), url);
            return permission > 0;
        }
      
   }
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (isAuthenticated(request)) {
            processGet(request, response);
        } else {
            response.sendRedirect("login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (isAuthenticated(request)) {
            processPost(request, response);
        } else {
           response.sendRedirect("login");
        }
    }
    protected abstract void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;
     protected abstract void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException;
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
