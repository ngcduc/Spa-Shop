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
import model.CategoryService;

/**
 *
 * @author Le Viet
 */
public class CategoryServiceDBContext extends DBContext{
    public ArrayList<CategoryService> getCateServices(){
             ArrayList<CategoryService> cats = new ArrayList<>();
        try {
  
            String sql = "SELECT categorySID,categoryname FROM CategoryService";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                CategoryService category = new CategoryService();
                category.setCategorysid(rs.getInt("categorySID"));
                category.setCategorysname(rs.getString("categoryname"));
                cats.add(category);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(CategoryServiceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cats ;
    }
     public CategoryService getCateServicesByID(int cid){
            
        try {
  
            String sql = "SELECT categorySID,categoryname FROM CategoryService"
                    + " WHERE categorySID =?  ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, cid);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                CategoryService category = new CategoryService();
                category.setCategorysid(rs.getInt("categorySID"));
                category.setCategorysname(rs.getString("categoryname"));
                return category;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(CategoryServiceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null ;
    }
}
