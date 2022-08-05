/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Validate;

import java.util.regex.Pattern;

/**
 *
 * @author Le Viet
 */
public class validateinforcustomer {
     public  boolean checkname(String name) {
      
            if (name.isEmpty()||name.replaceAll("\\s+", " ").trim()== null) {
                return false;
            
            } else {
               return true;
        }
    }
       public  boolean checkaddress(String address) {
       
            if (address.isEmpty()||address.replaceAll("\\s+", " ").trim()== null) {
                return false;
            } 
            else {
               return true;
        }
    }
     public  boolean checkPhone(String phone) {
        //regex to check informationis right format
        //condition: alphabetics, number and spaces
        Pattern checkInfor = Pattern.compile("^[0-9]+$");
      
            if (phone.isEmpty()||phone.replaceAll("\\s+", " ").trim()== null) {
                return false;
            } else if (checkInfor.matcher(phone).find()) {
                return true;
            } else {
               return false;
        }
}
}
