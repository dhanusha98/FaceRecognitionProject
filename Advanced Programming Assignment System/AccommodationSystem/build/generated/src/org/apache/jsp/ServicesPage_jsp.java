package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ServicesPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("          <style>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            #header{\n");
      out.write("                \n");
      out.write("                       height:300px;\n");
      out.write("                       width:100%;\n");
      out.write("                       background-color: black;\n");
      out.write("                       opacity: .8;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                \n");
      out.write("                 background-image: url(https://s-media-cache-ak0.pinimg.com/originals/1b/43/1c/1b431cd0ea784697bb283824957f765d.jpg);\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #footer{\n");
      out.write("                \n");
      out.write("                   background-color: black;\n");
      out.write("                   height:100px;\n");
      out.write("                   width:100%;\n");
      out.write("                   margin-top: 570px;\n");
      out.write("                   text-align: center;\n");
      out.write("                   font-size: 16px;\n");
      out.write("                   font-weight: bold;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            input[type=\"submit\"] {\n");
      out.write("                \n");
      out.write("                width:200px;\n");
      out.write("                height:35px;\n");
      out.write("                border:0;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                -webkit-border-radius: 5px;\n");
      out.write("                -o-border-radius:5px;\n");
      out.write("                -moz-border-radius:5px;\n");
      out.write("                font-weight:bold;\n");
      out.write("                 background-color: rgba(0,0,0,0.5);\n");
      out.write("                color:white;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div id=\"header\"> <br> <br> <br> \n");
      out.write("            \n");
      out.write("            <center><b><i><u> <font style=\"color: white; size: 35px\"> <h1>OUR SERVICES </h1></font></u></i></b> </center>\n");
      out.write("          \n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("                     <input type=\"submit\" value=\"BACK\" onclick=\"back()\" /> \n");
      out.write("\n");
      out.write("        <br> <br>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("            function back() {\n");
      out.write("                       \n");
      out.write("                       var result=confirm(\"Do you really want to logout from system?\");\n");
      out.write("                  \n");
      out.write("                  if(result===true) {\n");
      out.write("                      \n");
      out.write("                   \n");
      out.write("                   location.href=\"http://localhost:8080/AccommodationSystem/Entrance.jsp\";\n");
      out.write("                      \n");
      out.write("                      \n");
      out.write("                  }\n");
      out.write("                       \n");
      out.write("                   }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <ul>\n");
      out.write("            \n");
      out.write("            <b> <li>Online Property Publishing facility</li> </b><br> <br>\n");
      out.write("            <b><li>Different User Account facility</li> </b> <br> <br>\n");
      out.write("            <b><li>Many Other Services</li> </b>\n");
      out.write("       \n");
      out.write("        </ul>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <div id=\"footer\">\n");
      out.write("            \n");
      out.write("            <p style=\"color:white\">Copyright(c) in 2017 by ABC University</p>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("          <!--\n");
      out.write("       \n");
      out.write("                    //Recommendations for Future Maintenances\n");
      out.write("       \n");
      out.write("       \n");
      out.write("       \n");
      out.write("                 Update Design to ensure quality of system\n");
      out.write("       \n");
      out.write("                 Ensure Accuracy syntaxes of tags, statements etc.\n");
      out.write("       \n");
      out.write("                 Ensure clear page structure for every system page to enhance friendliness and Standability of system\n");
      out.write("       \n");
      out.write("                 Manage Code Length\n");
      out.write("       \n");
      out.write("                 Make most updatable Web Service references at all time to prevent issues\n");
      out.write("         \n");
      out.write("                 Import all required drivers/class libraries to implement transactions to make system error free\n");
      out.write("       \n");
      out.write("       -->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
