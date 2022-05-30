/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.DatosPersona;

public class Mostrar_CA extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            DatosPersona p = new DatosPersona();
        ArrayList<DatosPersona> personas = new ArrayList();
        personas = p.ConsultarR();
        request.getSession().setAttribute("personas", personas);
        request.getRequestDispatcher("mostrartodo.jsp").forward(request, response);
        }
}

