/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;

/**
 *
 * @author Le Viet
 */
public class updatequantityProductController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      int productid = Integer.parseInt(request.getParameter("productid"));
      int quantity = Integer.parseInt(request.getParameter("quantity"));
      HttpSession session = request.getSession();
        Map<Integer,Cart> carts = (Map<Integer,Cart>) session.getAttribute("carts");
        if(carts ==null){
            carts = new LinkedHashMap<>();
        }
        if(carts.containsKey(productid)){
            if(quantity>1){
                carts.get(productid).setQuantity(quantity);
            }else{
                carts.get(productid).setQuantity(1);
            }
            
        }
         session.setAttribute("carts", carts);
         String urlhistory = (String) session.getAttribute("urlhistory2");
         if(urlhistory ==null){
             urlhistory = "giohang";
         }
         response.sendRedirect(urlhistory);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
