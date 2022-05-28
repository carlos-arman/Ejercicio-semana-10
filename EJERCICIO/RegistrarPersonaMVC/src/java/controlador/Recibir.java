package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Persona;

public class Recibir extends HttpServlet {

   
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dui = request.getParameter("txtDui");
        String apellido = request.getParameter("txtApellidos");
        String nombre = request.getParameter("txtNombres");
        
        Persona person = new Persona();
        person.setDui(dui);
        person.setApellido(apellido);
        person.setNombre(nombre);
        
        if(person.insertarDatos() == true){
            request.getRequestDispatcher("exito.jsp").forward(request, response);
            
        }else{
            
        
            request.getRequestDispatcher("noexito.jsp").forward(request, response);
        }
    }

   
}
