
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DatosPersona;


public class recibir_SA extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet recibir_SA</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet recibir_SA at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        
            String dui=request.getParameter("txtDui");
        String apellidos=request.getParameter("txtApellido");
        String nombres=request.getParameter("txtNombre");
        
        DatosPersona person= new DatosPersona();
        person.setDui(dui);
        person.setApellido(apellidos);
        person.setNombre(nombres);
        
        if(person.InsertarDatos()==true){
            request.getRequestDispatcher("exito.jsp").forward(request, response);
        }else{
          request.getRequestDispatcher("noexito.jsp").forward(request, response);   
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
