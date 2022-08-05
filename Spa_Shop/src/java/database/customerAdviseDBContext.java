/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Le Viet
 */
public class customerAdviseDBContext extends DBContext{
    public void insertCustomerAdvise(int customerID, int categoryServiceID){
        try {
            String sql = "INSERT INTO [Customer Advise]\n" +
                    "           ([customerID]\n" +
                    "           ,[categorySID])\n" +
                    "     VALUES\n" +
                    "           (?,?)";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1,customerID );
            stm.setInt(2,categoryServiceID );
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(customerAdviseDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
