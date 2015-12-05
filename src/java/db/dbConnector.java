/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Giulio
 */
public class dbConnector {
    private static Connection conn = null;
    
    public static Connection getConnection(){
        if(conn == null){
            try{
                Class.forName("com.mysql.jdbc.Driver");

                String connectionUrl = "jdbc:mysql://localhost:3306/log15";
                conn = DriverManager.getConnection(connectionUrl, "root", "1234");
            }
            catch(Exception e){
                System.out.println(e);
            }
        }
        return conn;
    }
}
