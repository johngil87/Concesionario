package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Registro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("         <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl\" crossorigin=\"anonymous\">\r\n");
      out.write("      \r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <form  action=\"Registro\" method=\"post\">\r\n");
      out.write("            <div class=\"form-row\">\r\n");
      out.write("                <div class=\"form-group col-md-6\">\r\n");
      out.write("                    <label for=\"nom\">Primer Nombre</label>   \r\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"pnombre\" id=\"nom\" placeholder=\"Primer Nombre\" required=\"\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("                 <div class=\"form-group col-md-6\">\r\n");
      out.write("                    <label for=\"nom\">Segundo Nombre</label>   \r\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"snombre\" id=\"nom2\" placeholder=\"segundo Nombre\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group col-md-6\">\r\n");
      out.write("                    <label for=\"ape\">Primer Apellido</label>\r\n");
      out.write("                    <input  class=\"form-control\" type=\"text\" name=\"papellido\" id=\"ape\" placeholder=\"Primer Apellido\" required=\"\"/>\r\n");
      out.write("                </div>    \r\n");
      out.write("                <div class=\"form-group col-md-6\">\r\n");
      out.write("                    <label for=\"ape\">Segundo Apellido</label>\r\n");
      out.write("                    <input  class=\"form-control\" type=\"text\" name=\"sapellido\" id=\"ape2\" placeholder=\"Segundo Apellido\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group col-md-6\">\r\n");
      out.write("                    <label for=\"usser\">Usuario</label>    \r\n");
      out.write("\r\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"usuario\" id=\"usser\" placeholder=\"Usuario\" required=\"\"/>\r\n");
      out.write("                </div>    \r\n");
      out.write("                <div class=\"form-group col-md-6\">\r\n");
      out.write("                    <label for=\"pass\">Contraseña</label>\r\n");
      out.write("                    <input class=\"form-control\" id=\"pass\" type=\"password\" name=\"pass\" placeholder=\"Contraseña\" required=\"\" />          \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group col-lg-12\">\r\n");
      out.write("                    <label for=\"tel\">Telefono</label>\r\n");
      out.write("                    <input class=\"form-control\" id=\"tel\" type=\"text\" name=\"cell\" placeholder=\"Telefono\" required=\"\" /> \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group col-md-12\">\r\n");
      out.write("                    <label for=\"mail\">Correo Electronico</label>\r\n");
      out.write("                    <input class=\"form-control\" id=\"mail\" type=\"email\" name=\"email\" placeholder=\"Correo electronico\" required=\"\" />  \r\n");
      out.write("                </div> \r\n");
      out.write("                <div class=\"form-group col-md-6\">\r\n");
      out.write("                    <label for=\"nom\">No de Documento</label>   \r\n");
      out.write("                    <input class=\"form-control\" type=\"text\" name=\"documento\" id=\"nom\" placeholder=\"# Documento\" required=\"\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group col-md-4\">\r\n");
      out.write("                    <label for=\"pais\">Tipo de documento</label>\r\n");
      out.write("                    <select name=\"tipoDocumento\" id=\"pais\" class=\"form-control\">\r\n");
      out.write("                        <option value=\"CC\">Cedula de Ciudadania</option>\r\n");
      out.write("                        <option value=\"CE\">Cedula de Extranjeria</option>\r\n");
      out.write("                        <option value=\"NIP\">Numero de Identificacion Personal</option>\r\n");
      out.write("                        <option value=\"NIT\">Numero de Identificacion Tributaria</option>\r\n");
      out.write("\r\n");
      out.write("                    </select><br/>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>    \r\n");
      out.write("            <div class=\"col-sm-10\">\r\n");
      out.write("\r\n");
      out.write("                <input class=\"btn btn-primary navbar-btn\" type=\"submit\" value=\"Registrar\"/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </form>\r\n");
      out.write("        <form class=\"form-inline \" action=\"Login.jsp.jsp\" method=\"get\" >\r\n");
      out.write("            <input class=\"btn btn-primary navbar-btn\" type=\"submit\" value=\"Regresar\"/>  \r\n");
      out.write("        </div>\r\n");
      out.write("    </form>\r\n");
      out.write("</body>\r\n");
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
