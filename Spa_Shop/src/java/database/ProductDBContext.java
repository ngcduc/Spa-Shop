/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.CategoryProduct;
import model.Product;

/**
 *
 * @author Le Viet
 */
public class ProductDBContext extends DBContext{
     public ArrayList<Product> getProducts( int pageindex, int pagesize){
             ArrayList<Product> products = new ArrayList<>();
        try {
  
            String sql = "SELECT [productID]\n" +
                            "      ,[productname]\n" +
                            "      ,[image]\n" +
                            "      ,[price]\n" +
                            "      ,[quantity]\n" +
                            "      ,[categoryPID]\n" +
                            " FROM (SELECT *, ROW_NUMBER() OVER (ORDER BY productID ASC) as row_index FROM Product) tbl\n" +
                            " WHERE row_index>= (?-1)* ? + 1 AND row_index <= ? * ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, pageindex);
            stm.setInt(2, pagesize);
            stm.setInt(3, pageindex);
            stm.setInt(4, pagesize);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                 Product d = new Product();
                d.setProductid(rs.getInt("productID"));
                d.setProductname(rs.getString("productname"));
                d.setImage(rs.getString("image"));
                d.setPrice(rs.getInt("price"));
                d.setQuantity(rs.getInt("quantity"));
                CategoryProduct c = new CategoryProduct();
                c.setCid(rs.getInt("categoryPID"));
                d.setCateProduct(c);
                products.add(d);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products ;
    }
    public int count(){
        try {
  
            String sql = "SELECT COUNT(*) as total FROM Product";
            PreparedStatement stm = connection.prepareStatement(sql);
          
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                return rs.getInt("total");
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1 ;
    }
      public ArrayList<Product> getProductByCategoryID( int CategoryID){
             ArrayList<Product> products = new ArrayList<>();
        try {
  
            String sql = "SELECT [productID]\n" +
                            "      ,[productname]\n" +
                            "      ,[image]\n" +
                            "      ,[price]\n" +
                            "      ,[quantity]\n" +
                            "      ,[categoryPID]\n" +
                            "  FROM [Product]\n" +
                            "  WHERE categoryPID =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, CategoryID);
          
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                 Product d = new Product();
                d.setProductid(rs.getInt("productID"));
                d.setProductname(rs.getString("productname"));
                d.setImage(rs.getString("image"));
                d.setPrice(rs.getInt("price"));
                d.setQuantity(rs.getInt("quantity"));
                CategoryProduct c = new CategoryProduct();
                c.setCid(rs.getInt("categoryPID"));
                d.setCateProduct(c);
                products.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products ;
    }
       public Product getProductByID( int id){
        try {
  
            String sql = "SELECT [productID]\n" +
                            "      ,[productname]\n" +
                            "      ,[image]\n" +
                            "      ,[price]\n" +
                            "      ,[quantity]\n" +
                            "      ,[categoryPID]\n" +
                            "  FROM [Product]\n" +
                            "  WHERE productID =?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
          
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                 Product d = new Product();
                d.setProductid(rs.getInt("productID"));
                d.setProductname(rs.getString("productname"));
                d.setImage(rs.getString("image"));
                d.setPrice(rs.getInt("price"));
                d.setQuantity(rs.getInt("quantity"));
                CategoryProduct c = new CategoryProduct();
                c.setCid(rs.getInt("categoryPID"));
                d.setCateProduct(c);
                return d;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null ;
    }
    public ArrayList<Product> getRandomProducts(){
             ArrayList<Product> products = new ArrayList<>();
        try {
  
            String sql = "SELECT top 4 [productID]\n" +
                                    "      ,[productname]\n" +
                                    "      ,[image]\n" +
                                    "      ,[price]\n" +
                                    "      ,[quantity]\n" +
                                    "      ,[categoryPID]\n" +
                                    "  FROM [Product]\n" +
                                    "  ORDER BY NEWID()\n";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                 Product d = new Product();
                d.setProductid(rs.getInt("productID"));
                d.setProductname(rs.getString("productname"));
                d.setImage(rs.getString("image"));
                d.setPrice(rs.getInt("price"));
                d.setQuantity(rs.getInt("quantity"));
                CategoryProduct c = new CategoryProduct();
                c.setCid(rs.getInt("categoryPID"));
                d.setCateProduct(c);
                products.add(d);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return products ;
    }
    public void updateQuantityProduct(Product p) {
       String sql = "UPDATE [Product]\n" +
                        "   SET \n" +
                        "      [quantity] = ?\n" +
                        " WHERE [productID] = ?";
        PreparedStatement stm = null;
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, p.getQuantity());
            stm.setInt(2, p.getProductid());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            if(stm != null)
                try {
                    stm.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
            if(connection != null)
                try {
                    connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(ProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
}
}
