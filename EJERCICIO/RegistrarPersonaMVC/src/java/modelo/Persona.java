
package modelo;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;

public class Persona {

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    String dui;
    String apellido;
    String nombre;
    
    Connection cnn;
    Statement state;
    ResultSet result;
    public Persona(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd__recurso_humano?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Persona(String dui, String apellidos, String nombres){
        this.dui = dui;
        this.apellido = apellidos;
        this.nombre = nombres;
    }
    
    
  
    
    public boolean insertarDatos(){
        try{
           String miQuery = "insert into tb_persona values('" + dui + "', '" + apellido +  "','" + nombre + "');";
           int estado = 0;
           state = cnn.createStatement();
           estado = state.executeUpdate(miQuery);
           if(estado == 1){
               return true;
           }
        } catch (SQLException ex){
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public ArrayList<Persona> consultarRegistro(){
        ArrayList<Persona> person = new ArrayList();
        try{
            String miQuery = "select * form tb_persona;";
            state = cnn.createStatement();
            result = state.executeQuery(miQuery);
            while(result.next()){
                person.add(new Persona(result.getString("dui_persona"), result.getString("apellidos_persona"), result.getString("nombre_persona")));
            }
        }catch (SQLException ex){
            Logger.getLogger(Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return person;
    }
  
}
