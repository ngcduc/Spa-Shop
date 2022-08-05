/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Cart;
import model.CategoryProduct;
import model.Product;

/**
 *
 * @author Le Viet
 */
public class orderdetailDBContext extends DBContext{

    public void addCarts(int orderID, Map<Integer, Cart> carts) {
        try {
            String sql ="INSERT INTO [Order Details]\n" +
                    "           ([orderID]\n" +
                    "           ,[productID]\n" +
                    "           ,[quantity])\n" +
                    "          \n" +
                    "     VALUES\n" +
                    "           (?,?,?)";
            
            PreparedStatement stm   = connection.prepareStatement(sql);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productID = entry.getKey();
                Cart cart = entry.getValue();
                stm.setInt(1, orderID);
                stm.setInt(2, productID);
                stm.setInt(3, cart.getQuantity());
                stm.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(orderdetailDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
       
           
    
    }
    
}
