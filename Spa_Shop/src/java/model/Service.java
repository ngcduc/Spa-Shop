/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Le Viet
 */
public class Service {
    private int serviceID;
    private String servcename;
    private String price;
    private CategoryService  categoryservice;

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public String getServcename() {
        return servcename;
    }

    public void setServcename(String servcename) {
        this.servcename = servcename;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public CategoryService getCategoryservice() {
        return categoryservice;
    }

    public void setCategoryservice(CategoryService categoryservice) {
        this.categoryservice = categoryservice;
    }
    
}
