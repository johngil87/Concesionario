/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Vehiculos;
import modelDAO.VehiculoDAO;

/**
 *
 * @author HP
 */
@WebServlet(name = "Registro1", urlPatterns = {"/Registro1"})
public class Registro1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
               Vehiculos veh = new Vehiculos();
        VehiculoDAO vehDao = new VehiculoDAO();
        String placa = request.getParameter("placa");
        veh = vehDao.listarVehiculoId(placa);
        String resultado = "";
        String foto = "Imagenes/" + request.getParameter("foto");

        if (veh.getPlacaVehiculo()==null) {
            veh.setPlacaVehiculo(request.getParameter("placa"));
            veh.setMarcaVehiculo(request.getParameter("marca"));
            veh.setLineaVehiculo(request.getParameter("linea"));
            veh.setModeloVehiculo(Integer.parseInt(request.getParameter("modelo")));
            veh.setFotoVehiculo(foto);
            veh.setEstadoVehiculo(Integer.parseInt(request.getParameter("estado")));
            veh.setColorVehiculo(request.getParameter("color"));
            veh.setCodSucursal(request.getParameter("codigoSucursal"));
            vehDao.registro(veh);
            resultado = "Registro satisfactorio";
            request.setAttribute("respuestaV", resultado);
            request.getRequestDispatcher("RespuestaVehiculo.jsp").forward(request, response);
        } else {
            resultado = "El Vehiculo con esta placa ya existe";
            request.setAttribute("respuestaV", resultado);
            request.getRequestDispatcher("RespuestaVehiculo.jsp").forward(request, response);

        }
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
        processRequest(request, response);
   
        
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
