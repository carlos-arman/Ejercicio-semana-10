
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DatosPersona;


public class Actualizar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
            String accion = request.getParameter("accion");
            String Dui = request.getParameter("dui");
            
            
            DatosPersona p = new DatosPersona();
            ArrayList<DatosPersona> persona = new ArrayList<>();
        
        if(accion.equals("editar"))
        {
         
            persona = p.ConsultarR(Integer.parseInt(Dui));
            request.getSession().setAttribute("persona", persona); //Asignar valores a la sesion
        
            request.getRequestDispatcher("modificar.jsp").forward(request, response);
        } else if (accion.equals("eliminar"))
        {
            persona = p.ConsultarR(Integer.parseInt(Dui)); // Consulta los registros y los almacena en nuevo array llamado personas
            request.getSession().setAttribute("persona", persona); //Asignar valores a la sesion
            request.getRequestDispatcher("Eliminar.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
