/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.crud;
import java.io.Serializable;
import java.util.Arrays;
/**
 *
 * @author Користувач
 */
public class DataList implements Serializable{
    
    private int id;
    private String itemName;
    private int itemPrice;
    private int itemAmount;
    private String itemClientName;
    private int itemDate;
    private String adress;
    boolean isAdmin;

    public DataList() {
    }

    public DataList(int id, String itemName, int itemPrice, int itemAmount, String itemClientName, int itemDate, String adress, boolean isAdmin) {
        this.id=id;
        this.itemName = itemName;
        this.itemPrice = itemPrice;
        this.itemAmount = itemAmount;
        this.itemClientName = itemClientName;
        this.itemDate = itemDate;
        this.adress = adress;
        this.isAdmin=isAdmin;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    
    public String getItemName() {
        return itemName;
    }
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
   
    public int getItemPrice() {
        return itemPrice;
    }
    public void setItemPrice(int itemPrice) {
        this.itemPrice = itemPrice;
    }

    public int getItemAmount() {
        return itemAmount;
    }
    public void setItemAmount(int itemAmount) {
        this.itemAmount = itemAmount;
    }
    
    public String getItemClientName() {
        return itemClientName;
    }
    public void setItemClientName(String itemClientName) {
        this.itemClientName = itemClientName;
    }
        
    public int getItemDate() {
        return itemDate;
    }
    public void setItemDate(int itemDate) {
        this.itemDate = itemDate;
    }
    
    public String getAdress() {
        return adress;
    }
    public void setAdress(String adress) {
        this.adress = adress;
    }

    
    public boolean isIsAdmin() {
        return isAdmin;
    }
    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }   
}
