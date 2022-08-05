/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;

/**
 *
 * @author Le Viet
 */
public class orderDBContext extends DBContext{

    public int createOrderReturnID(Order o) {
         try {
         String sql ="INSERT INTO [Orders]\n" +
                    "           ([customerID]\n" +
                    "           ,[note]\n" +
                    "           ,[totalprice])\n" +
                    "     VALUES\n" +
                    "       (?,?,?)"    ;
            PreparedStatement stm = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            stm.setInt(1, o.getCustomerid());
            stm.setString(2, o.getNote());
            stm.setDouble(3, o.getTotalprice());
            stm.executeUpdate();
            ResultSet rs = stm.getGeneratedKeys();
            
            if(rs.next()){
                return rs.getInt(1); // return order id on postition 1 (id)
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(orderDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
 return 0;
    }
    
}
