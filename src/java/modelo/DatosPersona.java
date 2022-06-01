
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
            cnn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bd__recurso_humano?zeroDateTimeBehavior=convertToNull","root","");
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
           public boolean InsertarDatos(){
            try{
                String miQuery="insert into tb_persona values('" + dui + "','" + apellido + "','" + nombre + "');";
                int es=0;
                state=cnn.createStatement();
                es=state.executeUpdate(miQuery);
                if (es==1){
                    return true;
                }
            } catch (SQLException ex){
                        Logger.getLogger(DatosPersona.class.getName()).log(Level.SEVERE, null, ex);
                        }
                return false;
            }
            public ArrayList<DatosPersona>ConsultarR(){
            ArrayList<DatosPersona>person=new ArrayList();
            try{
                String miQuery="select*from tb_persona;";
                state=cnn.createStatement();
                result=state.executeQuery(miQuery);
                while(result.next()){
                    
                    person.add(new DatosPersona(result.getString("dui_persona"),result.getString("apellidos_persona"),result.getString("nombre_persona")));
                }
                }catch (SQLException ex){
                          Logger.getLogger(DatosPersona.class.getName()).log(Level.SEVERE, null, ex);
                }
            return person;
}
        public ArrayList<DatosPersona> ConsultarD() {
         ArrayList<DatosPersona> person = new ArrayList(); 
           try{
            String miQuery = "SELECT * from tb_persona WHERE dui_persona = " + dui;
            state = cnn.createStatement();
            result = state.executeQuery(miQuery);
            while(result.next()){
                person.add(new DatosPersona(result.getString("dui_persona"), result.getString("apellidos_persona"), result.getString("nombre_persona")));
            }
        }catch(SQLException ex){
            java.util.logging.Logger.getLogger(DatosPersona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return person;
    }    
}
