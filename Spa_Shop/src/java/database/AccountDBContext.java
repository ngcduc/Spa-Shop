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
import model.Account;

/**
 *
 * @author Le Viet
 */
public class AccountDBContext extends DBContext{

    public Account getAccount(String username, String password)
    {
        try {
            String sql = "SELECT  [accountID]\n" +
                            "      ,[username]\n" +
                            "      ,[password]\n" +
                            "      ,[displayname]\n" +
                            "  FROM [Account]\n" +
                            "  WHERE [username] = ? AND [password] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Account account = new Account();
                account.setAccountID(rs.getInt("accountID"));
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                account.setDisplayname(rs.getString("displayname"));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    //lấy quyền của tài khoản đăng nhập
     public int getPerssion(String username, String url)
    {
        try {
            String sql = "SELECT count(*) as total FROM \n" +
                    "account a inner join Group_Account ga on a.userName = ga.userName\n" +
                    "inner join [Group] g on g.gid = ga.gid\n" +
                    "inner join Group_Feature gf on gf.gid = g.gid\n" +
                    "inner join Feature f on f.fid = gf.fid\n" +
                    "where a.userName = ? and f.url = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, url);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                return rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
     
  
       
    
}
