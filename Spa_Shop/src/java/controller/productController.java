/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.CategoryProductDBContext;
import database.ProductDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CategoryProduct;
import model.Product;

/**
 *
 * @author Le Viet
 */
public class productController extends HttpServlet {
      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDBContext db = new ProductDBContext();
        int pagesize =6;
        String page = request.getParameter("page");
         if(page ==null || page.trim().length()==0){
             page ="1";
         }
        int pageindex = Integer.parseInt(page); 
        ArrayList<Product> products = db.getProducts(pageindex,pagesize);
        CategoryProductDBContext pdb = new CategoryProductDBContext();
        ArrayList<CategoryProduct> cateProducts = pdb.getCateProducts();
        int count = db.count();
        int totalpage = (count%pagesize==0)?(count/pagesize):(count/pagesize)+1;
        request.setAttribute("cateProducts",cateProducts);
        request.setAttribute("products", products);
        request.setAttribute("totalpage", totalpage);
        request.setAttribute("pageindex", pageindex);
        //get /sanpham to session
        request.getSession().setAttribute("urlhistory", "sanpham");
        request.getRequestDispatcher("view/sanpham.jsp").forward(request, response);
    }

   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
