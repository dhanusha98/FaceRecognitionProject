package org.apache.jsp.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.net.URL;
import java.util.*;
import java.lang.*;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import business.BusinessLogicService;
import business.BusinessLogicService_Service;

public final class StudentProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 background-image: url(http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background.jpg);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #studentprofile {\n");
      out.write("                \n");
      out.write("                 \n");
      out.write("                 height: 1550px;\n");
      out.write("                 width:  800px;\n");
      out.write("                 background-color: rgba(0,0,0,0.5);\n");
      out.write("                 margin: 0 auto;\n");
      out.write("                 margin-top: 170px;\n");
      out.write("                 padding-top: 20px;\n");
      out.write("                 padding-left: 70px;\n");
      out.write("                 border-radius: 15px;\n");
      out.write("                 -webkit-border-radius: 15px;\n");
      out.write("                 -o-border-radius:15px;\n");
      out.write("                 -moz-border-radius: 15px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #studentprofile input[type=\"text\"] {\n");
      out.write("                \n");
      out.write("                width:350px;\n");
      out.write("                height:35px;\n");
      out.write("                border:0;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                -webkit-border-radius: 5px;\n");
      out.write("                -o-border-radius:5px;\n");
      out.write("                -moz-border-radius:5px;\n");
      out.write("                 font-size: 16px;\n");
      out.write("\n");
      out.write("            \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #studentprofile input[type=\"password\"] {\n");
      out.write("                \n");
      out.write("                width:350px;\n");
      out.write("                height:35px;\n");
      out.write("                border:0;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                -webkit-border-radius: 5px;\n");
      out.write("                -o-border-radius:5px;\n");
      out.write("                -moz-border-radius:5px;\n");
      out.write("                font-size: 16px;\n");
      out.write("\n");
      out.write("            \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #studentprofile input[type=\"submit\"] {\n");
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
      out.write("               \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("             input[type=\"submit\"] {\n");
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
      out.write("            #studentprofile input[type=\"reset\"] {\n");
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
      out.write("            \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #studentprofile input[type=\"submit\"]:hover{\n");
      out.write("                \n");
      out.write("                  background-color: red;\n");
      out.write("\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #studentprofile input[type=\"reset\"]:hover{\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 background-color: red;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #studentprofile imgprofile {\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            #h2{\n");
      out.write("                \n");
      out.write("                  color:white;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #p{\n");
      out.write("                \n");
      out.write("                 font-size: 16px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("             #footer{\n");
      out.write("                \n");
      out.write("                   background-color: black;\n");
      out.write("                   height:100px;\n");
      out.write("                   width:100%;\n");
      out.write("                   margin-top: 570px;\n");
      out.write("                   text-align: center;\n");
      out.write("                   font-size: 16px;\n");
      out.write("                   font-weight: bold;\n");
      out.write("            }\n");
      out.write("        </style>        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

             
             
             String user=request.getParameter("username");
             String pass=request.getParameter("password");
         
              
                   // out.println("Your Username:     "+user+"<br>Your Password:   "+pass);
                    
                    
                   BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                   
                   String showid=proxy.studentProfile(user, pass);
                   
                   String [] tdisplay=showid.split("===");
                   
                        out.println("Your User ID:   "+tdisplay[0] + "<br> <br>");
              
              if(request.getParameter("btnview")==null) {
                  
             
                
                  
                     request.setAttribute("userid", "   ");
                     request.setAttribute("usern", "  ");
                     request.setAttribute("passw", "  ");
                     request.setAttribute("fullname", " ");
                     request.setAttribute("contact", "  ");
                     request.setAttribute("address", "  ");
                     request.setAttribute("url", "  ");
                     
              }
              
              else if(request.getParameter("btnview")!=null) {
                  
             
                                   String txtuserid=request.getParameter("txtuserid");
                
                String arr=proxy.searchStudentProfile(txtuserid);
                
                  
                         String [] display=arr.split("===");
                   
                        String userid=display[0];
                        String usern=display[1];
                        String passw=display[2];
                        String fullname=display[3];
                        String contact=display[4];
                        String address=display[5];
                     
                                     
                  byte[] image=proxy.studentprofileimage(usern, passw);
                  
                String url = "data:image/png;base64," + Base64.encode(image); 
                
                
                request.setAttribute("userid", userid);
                request.setAttribute("usern", usern);
                request.setAttribute("passw", passw);
                request.setAttribute("fullname", fullname);
                request.setAttribute("contact", contact);
                request.setAttribute("address", address);
                request.setAttribute("url", url);
                 
          
              }
                  
             
      out.write("\n");
      out.write("             \n");
      out.write("             <input type=\"submit\" value=\"BACK\" onclick=\"back()\" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \n");
      out.write("             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \n");
      out.write("             <input type=\"submit\" value=\"HELP\" onclick=\"help()\" id=\"btnhelp\" name=\"btnhelp\" />\n");
      out.write("             \n");
      out.write("             \n");
      out.write("            \n");
      out.write("            <script>\n");
      out.write("                \n");
      out.write("                   function back() {\n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("                       var username=");
      out.print( user   );
      out.write(";\n");
      out.write("                       var password=");
      out.print( pass   );
      out.write(";\n");
      out.write("                       \n");
      out.write("                       var result=confirm(\"Do you really want to logout from system?\");\n");
      out.write("                  \n");
      out.write("                  if(result===true) {\n");
      out.write("                      \n");
      out.write("                   \n");
      out.write("                   location.href=\"http://localhost:8080/AccommodationSystem/Student/StudentMainMenu.jsp?username=\" +username + \"&password=\" +password;\n");
      out.write("                      \n");
      out.write("                  }\n");
      out.write("                       \n");
      out.write("                   }\n");
      out.write("                   \n");
      out.write("                   function help() {\n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("                       var sent1=\"Please make sure to see your User ID to view records and implement other transactions\";\n");
      out.write("                       var sent2=\"***Note that User ID will display on exact one time and try to remember*** Other wise problems might occur\";\n");
      out.write("                       var sent3=\"You must enter your User ID to implement any transaction\";\n");
      out.write("                       var sent4=\"Please be note that uploading profile picture should be done at last after implementing other relevant transaction as this is a separate function. Otherwise problems might occur\";\n");
      out.write("\n");
      out.write("                      alert(sent1 + \"\\n \\n\" +sent2 +\"\\n \\n\"+sent3+\"\\n \\n\"+sent4);\n");
      out.write("                       \n");
      out.write("                   }\n");
      out.write("               \n");
      out.write("    \n");
      out.write("            </script>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("        \n");
      out.write("         <div id=\"studentprofile\">\n");
      out.write("            \n");
      out.write("          ***Please note that be sure to upload pictures after implementing 'update'/any transaction for records. Otherwise problems will occur***\n");
      out.write("             \n");
      out.write("             <form>\n");
      out.write("                 \n");
      out.write("                 <input type=\"hidden\" id=\"txtcheck\" name=\"txtcheck\" placeholder=\"\" style=\"width: 400px\" value=\"\" autocomplete=\"off\" /> \n");
      out.write("                 <input type=\"hidden\" id=\"txtheckpass\" name=\"txtcheckpass\" placeholder=\"\" style=\"width: 400px\" value=\"\" autocomplete=\"off\"/>        \n");
      out.write("                 <input type=\"hidden\" id=\"txtcheckid\" name=\"txtcheckid\" placeholder=\"\" style=\"width: 400px\" value=\"");
      out.print( request.getAttribute("userid")  );
      out.write("\" autocomplete=\"off\" /> \n");
      out.write("                \n");
      out.write("\n");
      out.write("                <h2><b> <font style=\"color: white\"> User Profile </font></b></h2> <br> \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <center><img src=\"");
      out.print( request.getAttribute("url") );
      out.write("\" height=\"300px\" width=\"300px\" id=\"imgprofile\" /> </center> <br> <br>\n");
      out.write("                \n");
      out.write("                <h3>Upload Profile Picture :    &nbsp; &nbsp; &nbsp;\n");
      out.write("                    <input type=\"file\" id=\"fileup\" name=\"fileup\" style=\"width: 400px; height: 35px\" /> &nbsp; &nbsp; &nbsp; \n");
      out.write("                    \n");
      out.write("                    <input type=\"submit\" id=\"btnfileupload\" name=\"btnfileupload\" value=\"SAVE IMAGE\" /> \n");
      out.write("                \n");
      out.write("                </h3> <br> <br> \n");
      out.write("                \n");
      out.write("                <h3>Student ID:    &nbsp; &nbsp; &nbsp;\n");
      out.write("                    <input type=\"text\" id=\"txtuserid\" name=\"txtuserid\" placeholder=\"\" style=\"width: 400px\"  value=\"");
      out.print( request.getAttribute("userid")  );
      out.write("\"   /> &nbsp; &nbsp; &nbsp; \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("                </h3> <br> <br> \n");
      out.write("                \n");
      out.write("                <h3>Username:    &nbsp; &nbsp; &nbsp;\n");
      out.write("                    <input type=\"text\" id=\"txtusername\" name=\"txtusername\" placeholder=\"\" style=\"width: 400px\" value=\"");
      out.print( request.getAttribute("usern")  );
      out.write("\" /> &nbsp; &nbsp; &nbsp; \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("                </h3> <br> <br> \n");
      out.write("                \n");
      out.write("                <h3>Password:   &nbsp; &nbsp; &nbsp;\n");
      out.write("                    <input type=\"text\" id=\"txtpassword\" name=\"txtpassword\" placeholder=\"\" style=\"width: 400px\" value=\"");
      out.print( request.getAttribute("passw")   );
      out.write("\" /> &nbsp; &nbsp; &nbsp; \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("                </h3> <br> <br> \n");
      out.write("                    \n");
      out.write("                <h3>Name:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("                    <input type=\"text\" id=\"txtfullname\" name=\"txtfullname\" placeholder=\"\" style=\"width: 400px\" value=\"");
      out.print( request.getAttribute("fullname")   );
      out.write("\" /> &nbsp; &nbsp; &nbsp; \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("                </h3> <br> <br> \n");
      out.write("                    \n");
      out.write("                <h3>Contact:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("                    <input type=\"text\" id=\"txtcontact\" name=\"txtcontact\" placeholder=\"\" style=\"width: 400px\" value=\"");
      out.print( request.getAttribute("contact")   );
      out.write("\" /> &nbsp; &nbsp; &nbsp; \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("                    \n");
      out.write("                </h3> <br> <br> \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                <h3>Address:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("                    <input type=\"text\" id=\"txtaddress\" name=\"txtaddress\" placeholder=\"\" style=\"width: 400px\" value=\"");
      out.print( request.getAttribute("address")   );
      out.write("\" /> &nbsp; &nbsp; &nbsp; \n");
      out.write("                                    \n");
      out.write("                \n");
      out.write("                </h3> \n");
      out.write("                    \n");
      out.write("                    <br> <br> <br>  \n");
      out.write("                \n");
      out.write("                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("                <input type=\"submit\" id=\"btnview\" name=\"btnview\" value=\"VIEW\" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("                <input type=\"submit\" id=\"btnupdate\" name=\"btnupdate\" value=\"UPDATE\" onclick=\"setupdate()\" /> \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("                    \n");
      out.write("        \n");
      out.write("         ");

             
             String txtusername=request.getParameter("txtusername");
             String txtpassword=request.getParameter("txtpassword");
             String txtfullname=request.getParameter("txtfullname");
             String txtcontact=request.getParameter("txtcontact");
             String txtaddress=request.getParameter("txtaddress");
                        
             if(request.getParameter("btnupdate")!=null) {
                 
             
                 
                    request.setAttribute("userid", "   ");
                    request.setAttribute("usern", "  ");
                    request.setAttribute("passw", "  ");
                    request.setAttribute("fullname", " ");
                    request.setAttribute("contact", "  ");
                    request.setAttribute("address", "  ");
                    request.setAttribute("url", "  ");
                     
                 
                 String txtuserid=request.getParameter("txtuserid");
                 
                 String update=proxy.updateStudentProfile(txtuserid, txtusername, txtpassword, txtfullname, txtcontact, txtaddress);
                 
                 
                 out.println(update);
             }          
                        
                        
             if(request.getParameter("btnfileupload")!=null) {
                 
                    String txtuserid=request.getParameter("txtuserid");
                    String filevalue=request.getParameter("fileup");
                    
                    String fileupload=proxy.insertstudentprofileimage(txtuserid, filevalue);
                    
                     out.println(fileupload);
                 
             }       
                        
                        
         
      out.write("\n");
      out.write("                    \n");
      out.write("         <br> <br>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("         <div id=\"footer\">\n");
      out.write("            \n");
      out.write("            <p style=\"color:white\">Copyright(c) in 2017 by ABC University</p>\n");
      out.write("        </div>\n");
      out.write("         \n");
      out.write("         <script>\n");
      out.write("             \n");
      out.write("              function setupdate() {\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                  location.href=\"http://localhost:8080/AccommodationSystem/Student/StudentProfileModification.jsp\";\n");
      out.write("              }\n");
      out.write("             \n");
      out.write("         </script>\n");
      out.write("           \n");
      out.write("         <script>\n");
      out.write("             \n");
      out.write("            \n");
      out.write("             function editusername() {\n");
      out.write("                 \n");
      out.write("                 document.getElementById(\"txtusername\").disabled=false;\n");
      out.write("             }\n");
      out.write("             \n");
      out.write("             function editpassword() {\n");
      out.write("                 \n");
      out.write("                 document.getElementById(\"txtpassword\").disabled=false;\n");
      out.write("\n");
      out.write("             }\n");
      out.write("             \n");
      out.write("             function editfullname() {\n");
      out.write("                 \n");
      out.write("                 document.getElementById(\"txtfullname\").disabled=false;\n");
      out.write("\n");
      out.write("             }\n");
      out.write("             \n");
      out.write("             function editcontact() {\n");
      out.write("                 \n");
      out.write("                 document.getElementById(\"txtcontact\").disabled=false;\n");
      out.write("\n");
      out.write("             }\n");
      out.write("             \n");
      out.write("             function editaddress() {\n");
      out.write("                 \n");
      out.write("                 document.getElementById(\"txtaddress\").disabled=false;\n");
      out.write("\n");
      out.write("             }\n");
      out.write("             \n");
      out.write("             \n");
      out.write("         </script> \n");
      out.write("             \n");
      out.write("         \n");
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
