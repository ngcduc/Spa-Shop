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

/**
 *
 * @author Le Viet
 */
public class CategoryProductDBContext extends DBContext{
      public ArrayList<CategoryProduct> getCateProducts(){
             ArrayList<CategoryProduct> cats = new ArrayList<>();
        try {
  
            String sql = "SELECT [categoryPID]\n" +
                            "      ,[categoryname]\n" +
                            "  FROM [CategoryProduct]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                CategoryProduct category = new CategoryProduct();
                category.setCid(rs.getInt("categoryPID"));
                category.setName(rs.getString("categoryname"));
                cats.add(category);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(CategoryProductDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cats ;
    }
}
