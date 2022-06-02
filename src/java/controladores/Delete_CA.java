
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DatosPersona;


public class Delete_CA extends HttpServlet {

    
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
            DatosPersona pers = new DatosPersona();
            String dui = request.getParameter("txtDui");
            if(pers.Delete(Integer.parseInt(dui)) == true)
            {
              request.getRequestDispatcher("ExitoEliminado.jsp").forward(request, response);
            
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
