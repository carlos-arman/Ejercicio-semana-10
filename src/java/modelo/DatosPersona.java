
package modelo;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DatosPersona {

    
    String dui;
    String apellido;
    String nombre;

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
     Connection cnn; 
    Statement state;
    ResultSet result;

       public DatosPersona(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_recurso_humano?zeroDateTimeBehavior=convertToNull","root","");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatosPersona.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DatosPersona.class.getName()).log(Level.SEVERE, null, ex);
        }
       }
       
        public DatosPersona(String dui, String apellido, String nombre) {
        this.dui = dui;
        this.apellido = apellido;
        this.nombre = nombre;
    }
       
}
