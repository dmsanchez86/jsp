/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author zopp
 */
public class Conection {
    protected Connection conection;
    protected PreparedStatement query;
    protected ResultSet response;
    
    private String url;
    private String user;
    private String password;
    
    public Conection(String url,String user,String password) throws InstantiationException, IllegalAccessException{
        this.url = url;
        this.user = user;
        this.password = password;
        
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (ClassNotFoundException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
    
    public Connection conectar(){
        try {
            this.conection = DriverManager.getConnection(this.url, this.user, this.password);
            System.out.println("Conection Stablish!");
            
            return this.conection;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public ResultSet query(String sql){
        try {
            this.query = this.conection.prepareStatement(sql);
            this.response = this.query.executeQuery();
            return this.response;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public void logout(){
        try {
            this.conection.close();
            System.out.println("The conection is close!");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public String insert(String name, String author, String pages){
        try {
            this.query = this.conection.prepareStatement("INSERT INTO book VALUES(?,?,?,?)");
            this.query.setInt(1, 0);
            this.query.setString(2, name);
            this.query.setString(3, author);
            this.query.setInt(4, Integer.parseInt(pages));
            int result = this.query.executeUpdate();
            
            if(result > 0)
                return "Se inserto el libro correctamente!";
            else
                return "No se pudo insertar el libro!";
        } catch (Exception e) {
            return "Error: " + e;
        }
    }
    
    public String update(String id, String name, String author, String pages){
        try {
            this.query = this.conection.prepareStatement("UPDATE book SET name = ?, author = ?, pages = ? WHERE id = ?");
            this.query.setString(1, name);
            this.query.setString(2, author);
            this.query.setInt(3, Integer.parseInt(pages));
            this.query.setInt(4, Integer.parseInt(id));
            int result = this.query.executeUpdate();
            
            if(result > 0)
                return "Se actualizo el libro correctamente!";
            else
                return "No se pudo actualizar el libro!";
        } catch (Exception e) {
            return "Error: " + e;
        }
    }
    
    public String delete(String id){
        try {
            this.query = this.conection.prepareStatement("DELETE FROM book WHERE id = ?");
            this.query.setInt(1, Integer.parseInt(id));
            int result = this.query.executeUpdate();
            
            if(result > 0)
                return "Se borro el libro correctamente!";
            else
                return "No se pudo borrar el libro!";
        } catch (Exception e) {
            return "Error: " + e;
        }
    }
}
