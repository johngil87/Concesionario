package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelDAO.VehiculoDAO;
import java.util.List;
import model.Vehiculos;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"estilos/EstilosGenerales.css\">\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js\" charset=\"utf-8\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css\">\r\n");
      out.write("        <title>Concesionario POLI</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");

            Vehiculos veh = new Vehiculos();
            VehiculoDAO vehDao = new VehiculoDAO();
            List<Vehiculos> listaVeh = vehDao.listar();
        
      out.write("\r\n");
      out.write("        <header>\r\n");
      out.write("            <div class=\"inner-width\">\r\n");
      out.write("                <a href=\"#\" class=\"logo\"><img src=\"logo.png\" alt=\"\"></a>\r\n");
      out.write("                <i class=\"menu-toggle-btn fas fa-bars\"></i>\r\n");
      out.write("                <nav class=\"navigation-menu\">\r\n");
      out.write("                    <a href=\"#\"><i class=\"fas fa-home home\"></i> Home</a>\r\n");
      out.write("                    <a href=\"#\"><i class=\"fas fa-users team\"></i> Team</a>\r\n");
      out.write("                    <a href=\"Login.jsp\"><i class=\"fas fa-headset contact\"></i> Login</a>\r\n");
      out.write("                </nav>\r\n");
      out.write("            </div>\r\n");
      out.write("        </header>\r\n");
      out.write("        <article>\r\n");
      out.write("            ");

                for (int i = 0; i < listaVeh.size(); i++) {
                    String urlImg = listaVeh.get(i).getFotoVehiculo();
            
      out.write("\r\n");
      out.write("            <div>\r\n");
      out.write("                <hr>\r\n");
      out.write("                <hr>\r\n");
      out.write("                <h3>Marca ");
      out.print( listaVeh.get(i).getMarcaVehiculo());
      out.write(" </h3>\r\n");
      out.write("                <h3>Linea ");
      out.print( listaVeh.get(i).getLineaVehiculo());
      out.write(" </h3>\r\n");
      out.write("                <img src=\"");
 out.print(listaVeh.get(i).getFotoVehiculo());
      out.write(" \" width=\"250\" height=\"200\" >\r\n");
      out.write("                <h3>Placa ");
      out.print( listaVeh.get(i).getPlacaVehiculo());
      out.write(" </h3>\r\n");
      out.write("                <h3>Color  ");
      out.print( listaVeh.get(i).getColorVehiculo());
      out.write(" </h3>\r\n");
      out.write("                <h3>Modelo ");
      out.print( listaVeh.get(i).getModeloVehiculo());
      out.write(" </h3>\r\n");
      out.write("            </div>\r\n");
      out.write("            ");
 }
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </article>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            $(\".menu-toggle-btn\").click(function () {\r\n");
      out.write("                $(this).toggleClass(\"fa-times\");\r\n");
      out.write("                $(\".navigation-menu\").toggleClass(\"active\");\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
