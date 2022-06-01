
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DatosPersona;

public class Modificar_SA extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
  
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
          String d =request.getParameter("txtDui");
          String n = request.getParameter("txtNombre");
          String a =request.getParameter("txtApellido");
          
         DatosPersona person = new DatosPersona (d, a, n);
         DatosPersona per = new DatosPersona();
       //CONDICION
        if(per.ActualizarD(person) == true){
            request.getRequestDispatcher("exito.jsp").forward(request, response);
            
        }
        else{
            request.getRequestDispatcher("noexito.jsp").forward(request, response);
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
