<%-- 
    Document   : AdminLogin
    Created on : 08-Jan-2017, 21:55:24
    Author     : BANDULA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="business.BusinessLogicService"%>
<%@page import="business.BusinessLogicService_Service"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <style>
            
            body{
                
                 background-image: url(https://s-media-cache-ak0.pinimg.com/originals/1b/43/1c/1b431cd0ea784697bb283824957f765d.jpg);
            }
            
            #userlogin {
                
                 
                 height: 330px;
                 width:  500px;
                 background-color: rgba(0,0,0,0.5);
                 margin: 0 auto;
                 margin-top: 170px;
                 padding-top: 20px;
                 padding-left: 70px;
                 border-radius: 15px;
                 -webkit-border-radius: 15px;
                 -o-border-radius:15px;
                 -moz-border-radius: 15px;
            }
            
            #userlogin input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #userlogin input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #userlogin input[type="submit"] {
                
                width:200px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-weight:bold;
                 background-color: rgba(0,0,0,0.5);
                color:white;
               
            }
            
            #userlogin input[type="reset"] {
                
                width:200px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-weight:bold;
                 background-color: rgba(0,0,0,0.5);
                color:white;
            
            }
            
            #userlogin input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #userlogin input[type="reset"]:hover{
                
                
                 background-color: red;

            }
            
            input[type="submit"] {
                
                width:200px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-weight:bold;
                 background-color: rgba(0,0,0,0.5);
                color:white;
                
            }
            
            input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            
            #h2{
                
                  color:white;
            }
            
             #footer{
                
                   background-color: black;
                   height:100px;
                   width:100%;
                   margin-top: 570px;
                   text-align: center;
                   font-size: 16px;
                   font-weight: bold;
            }
        </style>        
        
        
        
        
    </head>
    <body>
        
            <input type="submit" value="BACK" onclick="back()" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            <input type="submit" value="HELP" onclick="help()" id="btnhelp" name="btnhelp" />
             
             <script>
                
                   function back() {
                       
                       var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/UniEmployee.jsp";
                      
                  }
                       
                   }
                   
                   function help() {
                       
                       
                       var sent1="Provide Username and Password acccurately to log to the sysem.";
                       var sent2="Click 'BACK' button to navigate to Entrance Page if necessary.";
                      

                      alert(sent1 + "\n \n" +sent2);
                       
                   }
               
    
            </script>
            
              <script>
            
            
           function send() {
            
            
            if(document.getElementById("txtusername").value==="" || document.getElementById("txtpassword").value==="") {
                
                  alert("Required Fields are Empty!!!");
            }
            
            
            
    }
            
            </script>
        
        <div id="userlogin">
            
            <form onsubmit="send()">
                
                <h2><b> <font style="color: white"> Admin Login </font></b></h2> <br> 
                
                <input type="text" id="txtusername" name="txtusername" placeholder="Enter Username" style="width: 400px" /> <br> <br> <br>
                
                <input type="password" id="txtpassword" name="txtpassword" placeholder="Enter Password" style="width: 400px" /> <br> <br> <br> <br>  
                
                
                <input type="submit" id="btnsubmit" name="btnsubmit" value="SUBMIT" /> &nbsp; &nbsp;
                <input type="reset" id="btnreset" name="btnreset" value="RESET" />
                
                
            </form>
            
            
        </div>
            
              <%
            
            
                                    
                if(request.getParameter("btnsubmit")!=null)     {              
                                    
               String username=request.getParameter("txtusername");
               String password=request.getParameter("txtpassword");

               
              BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
              
               String database=proxy.databaseconnection();
               
               
               
               
               
               String validation=proxy.adminlogin(username, password);
               
              String successmessage="LOGIN SUCCESSFUL!";
              String incorrectmessage="INCORRECT USER AUTHENTICATIONS";

          
               if(validation.equalsIgnoreCase(successmessage)) {
                   
                   
                   //JOptionPane.showMessageDialog(null,""+ successmessage);
                   
                   
                   
                   String state=new String("http://localhost:8080/AccommodationSystem/Administrator/AdminPanelMenu.jsp?username=" + username + "&password=" + password);
                   
                   response.setStatus(response.SC_MOVED_TEMPORARILY);
                   response.setHeader("Location", state);
               }
               
               else if(validation.equalsIgnoreCase(incorrectmessage)) {
                   
                         // JOptionPane.showMessageDialog(null,""+incorrectmessage);
                         out.println(incorrectmessage);
               }

               
               session.setMaxInactiveInterval(180);
               session.setAttribute("AdminSession", "Admins");
            
            
               out.print(session.getAttribute("AdminSession"));
            
               Cookie cook = new Cookie("AdminSession", session.getAttribute("AdminSession").toString()) ;
            
               cook.setMaxAge(3);
            
               response.addCookie(cook);
               
                   }
            %>
            
        
        <br> <br>
        
        
        
         <div id="footer">
            
            <p style="color:white">Copyright(c) in 2017 by ABC University</p>
        </div>
        
     
             <!--
       
                    //Recommendations for Future Maintenances
       
       
       
                 Update Design to ensure quality of system
       
                 Ensure Accuracy syntaxes of tags, statements etc.
       
                 Ensure clear page structure for every system page to enhance friendliness and Standability of system
       
                 Manage Code Length
       
                 Make most updatable Web Service references at all time to prevent issues
         
                 Import all required drivers/class libraries to implement transactions to make system error free
       
       -->
    </body>
</html>
