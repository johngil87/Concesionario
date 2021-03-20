/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.sun.javafx.application.ParametersImpl;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Persona;
import modelDAO.PersonaDAO;

/**
 *
 * @author HP
 */
public class Registro extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Persona per = new Persona();
        PersonaDAO perDao = new PersonaDAO();
        String user = request.getParameter("usuario");
        String documento = request.getParameter("documento");
        String tipo = request.getParameter("tipoDocumento");
        String resultado = "";
        
        if(perDao.validarRegistro(user, documento, tipo)){
        resultado="El usuario ya existe";
        request.setAttribute("respuesta",resultado);
        request.getRequestDispatcher("Respuesta.jsp").include(request, response);
            
        }else{
         per.setDocumentoUser(request.getParameter("documento"));
        per.setPrimerNombreUser(request.getParameter("pnombre"));
        per.setSegundoNombreUser(request.getParameter("snombre"));
        per.setPrimerApellidoUser(request.getParameter("papellido"));
        per.setSegundoApellidoUser(request.getParameter("sapellido"));
        per.setTipoDocumento(request.getParameter("tipoDocumento"));
        per.setTelefono(Long.parseLong(request.getParameter("cell")));
        per.setCorreo(request.getParameter("email"));
        per.setUsuario(request.getParameter("usuario"));
        per.setContraseña(request.getParameter("pass"));
        perDao.registroPersona(per);
        resultado="Registro satisfactorio";
        request.setAttribute("respuesta",resultado);
        request.getRequestDispatcher("Respuesta.jsp").include(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
