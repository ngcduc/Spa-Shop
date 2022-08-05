/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Validate.validateinforcustomer;
import database.CategoryServiceDBContext;
import database.customerAdviseDBContext;
import database.customerDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CategoryService;
import model.Customer;

/**
 *
 * @author Le Viet
 */
public class customeradvise extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8");
      String name = request.getParameter("name");
      String phonenumber = request.getParameter("phonenumber");
      String address = request.getParameter("address");
      int categoryserviceID = Integer.parseInt(request.getParameter("service"));
      CategoryService cs = new CategoryServiceDBContext().getCateServicesByID(categoryserviceID);
      
        validateinforcustomer check = new validateinforcustomer();
        if (check.checkname(name) == false || check.checkPhone(phonenumber) == false || check.checkaddress(address) == false) {
            request.setAttribute("messagename", name);
            request.setAttribute("messagephone", phonenumber);
            request.setAttribute("messageaddress", address);
            request.setAttribute("service",cs.getCategorysname());
            request.setAttribute("message", "Vui lòng kiểm tra lại thông tin của bạn");
            request.getRequestDispatcher("view/main.jsp").forward(request, response);
            response.sendRedirect("home");
        }else {
             //add customer to database and return id of customer
            Customer cu = new Customer();
            cu.setName(name);
            cu.setPhone(phonenumber);
            cu.setAddress(address);
            customerDBContext cdb = new customerDBContext();
            int customerId = (Integer) cdb.createCustomerReturnID(cu);
            //insert advise to database
            customerAdviseDBContext cadb = new customerAdviseDBContext();
            cadb.insertCustomerAdvise(customerId, categoryserviceID);
            request.setAttribute("messagethank", "Bạn đã đăng ký thành công! Nhân viên của chúng tôi sẽ sớm liên hệ tới quý khách!");
            request.getRequestDispatcher("view/main.jsp").forward(request, response);
             response.sendRedirect("home");
            
        }
        
    }
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
