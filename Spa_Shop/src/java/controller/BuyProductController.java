/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.ProductDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Product;

/**
 *
 * @author Le Viet
 */
public class BuyProductController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("Id"));
      // map with key = productID value: Cart (Model)
        HttpSession session = request.getSession();
        Map<Integer,Cart> carts = (Map<Integer,Cart>) session.getAttribute("carts");
        if(carts==null){
            carts = new LinkedHashMap<>();// Products added will have order
            
        }
        //select product with productID
       
        //TH1: CART contain productID( The product already exists in the cart)
         if(carts.containsKey(productID)){
             int oldQuantity = carts.get(productID).getQuantity();// old quantity in the carts
             carts.get(productID).setQuantity(oldQuantity+1);
         }
         //TH2:The product is not in the cart
         else{
             
             Product product = new ProductDBContext().getProductByID(productID);
             Cart c = new Cart();
             c.setQuantity(1);
             c.setProduct(product);
             carts.put(productID,c);
         }
         //add product to section
         session.setAttribute("carts", carts);
        response.sendRedirect("thanhtoan");
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
