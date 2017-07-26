package org.apache.jsp.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import business.BusinessLogicService;
import business.BusinessLogicService_Service;

public final class ReplicationForm_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <!-- Presentation Layer   -->\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 background-image: url(http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background-2.jpg);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #enquireform {\n");
      out.write("                \n");
      out.write("                 \n");
      out.write("                 height: 1100px;\n");
      out.write("                 width:  500px;\n");
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
      out.write("            #enquireform input[type=\"text\"] {\n");
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
      out.write("            #enquireform input[type=\"password\"] {\n");
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
      out.write("            #enquireform input[type=\"submit\"] {\n");
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
      out.write("            input[type=\"submit\"]:hover{\n");
      out.write("                \n");
      out.write("                  background-color: red;\n");
      out.write("\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            #enquireform input[type=\"reset\"] {\n");
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
      out.write("            #enquireform input[type=\"submit\"]:hover{\n");
      out.write("                \n");
      out.write("                  background-color: red;\n");
      out.write("\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #enquireform input[type=\"reset\"]:hover{\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 background-color: red;\n");
      out.write("\n");
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
      out.write("            #h2{\n");
      out.write("                \n");
      out.write("                  color:white;\n");
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
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

            
            
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            out.println(username +password);
            String receiver;
            String purpose;
            String PropertyID;
            String LandLordID;
            
            String txtusercheck=request.getParameter("txtusercheck");
            String txtpasscheck=request.getParameter("txtpasscheck");

              BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
            
             String text=proxy.studentProfile(username, password);
             

            
             String textval; 
              
            
             
             
               if(request.getParameter("receiver")==null) {
               
                     receiver="";
                 }
               
               else {
                   
                   receiver=request.getParameter("receiver");
               }
                         

               if(text.equalsIgnoreCase("NOT FOUND!!!")) {
                   
                     textval="";
               }
               
               else {
                   
                   String [] display=text.split("===");
                   
                   textval=display[0];
               }
               
               if(request.getParameter("purpose")==null) {
                   
                   purpose="";
               }
               
               else {
                   
                     purpose=request.getParameter("purpose");
               }
               
               if(request.getParameter("PropertyID")==null) {
                   
                   
                       PropertyID="";
               }
               
               else {
                   
                     PropertyID=request.getParameter("PropertyID");
               }
               
             
            
      out.write("\n");
      out.write("       \n");
      out.write("            \n");
      out.write("        <input type=\"submit\" value=\"BACK\" onclick=\"back()\" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \n");
      out.write("             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \n");
      out.write("             <input type=\"submit\" value=\"HELP\" onclick=\"help()\" id=\"btnhelp\" name=\"btnhelp\" />\n");
      out.write("        \n");
      out.write("            \n");
      out.write("            <script>\n");
      out.write("                \n");
      out.write("                   function back() {\n");
      out.write("                       \n");
      out.write("                       \n");
      out.write("                       var username=");
      out.print( username   );
      out.write(";\n");
      out.write("                       var password=");
      out.print( password   );
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
      out.write("                       var sent1=\"Please make sure to see and know your user ID which will display in either Land Lord ID/Student ID. If you have an Administrator Account, That won't display in related sections\";\n");
      out.write("                       var sent2=\"***Note that you must provide information for all enabled fields to make success you enquiry\";\n");
      out.write("                       \n");
      out.write("\n");
      out.write("                      alert(sent1 + \"\\n \\n\" +sent2);\n");
      out.write("                       \n");
      out.write("                   }\n");
      out.write("               \n");
      out.write("    \n");
      out.write("            </script>\n");
      out.write("            \n");
      out.write("         <script>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("           function send() {\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            if(document.getElementById(\"txtfullname\").value===\"\" || document.getElementById(\"txtcontact\").value===\"\" || document.getElementById(\"txtemail\").value===\"\" || document.getElementById(\"txtpurpose\").value===\"\" || document.getElementById(\"txtaccounttype\").value===\"\" || document.getElementById(\"txtsend\").value===\"\" || document.getElementById(\"txtmessage\").value===\"\" || document.getElementById(\"txtstudentid\").value===\"\"  ) {\n");
      out.write("                \n");
      out.write("                  alert(\"Required Fields are Empty!!!\");\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("           \n");
      out.write("    }\n");
      out.write("            \n");
      out.write("            </script>\n");
      out.write("         <!--Presentation Layer-->\n");
      out.write("        \n");
      out.write("         <div id=\"enquireform\">\n");
      out.write("            \n");
      out.write("             <form onsubmit=\"send()\">\n");
      out.write("                 \n");
      out.write("                 <input type=\"hidden\" id=\"txtusercheck\" name=\"txtusercheck\"  style=\"width: 400px\" value=\"");
      out.print( username  );
      out.write("\" />\n");
      out.write("                 <input type=\"hidden\" id=\"txtpasscheck\" name=\"txtpasscheck\" style=\"width: 400px\"  value=\"");
      out.print( password  );
      out.write("\"/>\n");
      out.write("                \n");
      out.write("                <h2><b> <font style=\"color: white\"> Request Form(Students) </font></b></h2> <br> \n");
      out.write("                \n");
      out.write("                <input type=\"text\" id=\"txtfullname\" name=\"txtfullname\" placeholder=\"Fullname\" style=\"width: 400px\" /> <br> <br> <br>\n");
      out.write("                \n");
      out.write("                <input type=\"text\" id=\"txtcontact\" name=\"txtcontact\" placeholder=\"Contact Number\" style=\"width: 400px\" /> <br> <br> <br>\n");
      out.write("                \n");
      out.write("                <input type=\"text\" id=\"txtemail\" name=\"txtemail\" placeholder=\"Email Address\" style=\"width: 400px\" /> <br> <br> <br>\n");
      out.write("                \n");
      out.write("                <input type=\"text\" id=\"txtpurpose\" name=\"txtpurpose\" placeholder=\"Purpose\" style=\"width: 400px\" value=\"");
      out.print( purpose + PropertyID );
      out.write("\" /> <br> <br> <br>\n");
      out.write("                \n");
      out.write("                <input type=\"text\" id=\"txtaccounttype\" name=\"txtaccounttype\" placeholder=\"Your Account Type (Student/LandLord/ADMINISTRATOR) ***case senstive***\" style=\"width: 400px\" value=\"\" /> <br> <br> <br>\n");
      out.write("\n");
      out.write("                <input type=\"text\" id=\"txtsend\" name=\"txtsend\" placeholder=\"SendTo\" style=\"width: 400px\" value=\"");
      out.print( receiver  );
      out.write("\" /> <br> <br> <br>\n");
      out.write("                \n");
      out.write("                <input type=\"text\" id=\"txtmessage\" name=\"txtmessage\" placeholder=\"Message\" style=\"width: 400px; height: 150px;\" /> <br> <br> <br>\n");
      out.write("                \n");
      out.write("                <input type=\"text\" id=\"txtstudentid\" name=\"txtstudentid\" placeholder=\"Student ID\" style=\"width: 400px\" value=\"");
      out.print( textval  );
      out.write("\"   /> <br> <br> <br>\n");
      out.write("                \n");
      out.write("                <input type=\"text\" id=\"txtlandlordid\" name=\"txtlandlordid\" placeholder=\"LandLord ID \" style=\"width: 400px\" value=\"\"/> (Type 'NULL' if enquire is not for Land Lord) <br> <br> <br>\n");
      out.write("\n");
      out.write("                <input type=\"text\" id=\"txtfeedback\" name=\"txtfeedback\" placeholder=\"Feedback\" style=\"width: 400px; height: 150px;\" disabled=\"true\"/> \n");
      out.write("\n");
      out.write("                \n");
      out.write("                <br> <br> <br> <br>  \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <input type=\"submit\" id=\"btnsubmit\" name=\"btnsubmit\" value=\"SUBMIT\" /> &nbsp; &nbsp;\n");
      out.write("                <input type=\"reset\" id=\"btnreset\" name=\"btnreset\" value=\"RESET\" />\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("                \n");
      out.write("         <script>\n");
      out.write("                    \n");
      out.write("                  if(document.getElementById(\"txtsend\").value===\"ADMINISTRATOR\")  {\n");
      out.write("                      \n");
      out.write("                       document.getElementById(\"txtstudentid\").disabled=true;\n");
      out.write("                  }\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                    \n");
      out.write("         \n");
      out.write("         </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("         ");

            
             
             
             
             if(request.getParameter("btnsubmit")!=null) {
                 
                 
             String txtfullname=request.getParameter("txtfullname");
             String txtcontact=request.getParameter("txtcontact");
             String txtemail=request.getParameter("txtemail");
             String txtpurpose=request.getParameter("txtpurpose");
             String txtaccounttype=request.getParameter("txtaccounttype");
             String txtsend=request.getParameter("txtsend");
             String txtmessage=request.getParameter("txtmessage");
             String txtstudentid=request.getParameter("txtstudentid");
             String txtlandlordid=request.getParameter("txtlandlordid");
             String txtfeedback=request.getParameter("txtfeedback");
             
             
             if(request.getParameter("txtfullname")=="" || request.getParameter("txtcontact")=="" || request.getParameter("txtcontact")=="" ||  request.getParameter("txtcontact")=="" || request.getParameter("txtcontact")=="" || request.getParameter("txtcontact")=="" || request.getParameter("txtcontact")=="" || request.getParameter("txtcontact")=="" || request.getParameter("txtcontact")=="" ) {
                  
                  
                     out.println("Required Fields are empty!!!");
              }
             
             else {
                 
             
                      String enquire=proxy.userEnquire(txtfullname, txtcontact, txtemail, txtpurpose, txtaccounttype,  txtsend, txtmessage, txtstudentid, txtlandlordid, txtfeedback);
             
              
                    
                      out.println("&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"+enquire);  
                      
             }
                     
                }
                 
            
      out.write("\n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <div id=\"footer\">\n");
      out.write("            \n");
      out.write("            <p style=\"color:white\">Copyright(c) in 2017 by ABC University</p>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <!--\n");
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
      out.write("        \n");
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
