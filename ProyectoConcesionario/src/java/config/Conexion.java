/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;

/**
 *
 * @author HP
 */
public class Conexion {

    String URL = "jdbc:mysql://localhost:3306/consecionario";
    String user = "root";
    String pass = "";
    Connection con;

    public Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(URL, user, pass);
        } catch (Exception e) {
            System.out.println("Error en la conexion a la base de datos " + e);
        }
    }

    public Connection getConnection() {
        return con;
    }
}
