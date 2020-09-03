/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.forms;

import com.db.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MadanNikalje
 */
public class NewClass {
    public static void main(String[] args) {
        try {
            DataAccess db=new DataAccess();
            db.connect();
            int id = 1;
            
            ResultSet rs = db.getRows("select * from BusRouteView where id=?", ""+id+"");
            rs.next();
            
            System.out.println(rs.getString("ASeats"));
        } catch (SQLException ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
}
