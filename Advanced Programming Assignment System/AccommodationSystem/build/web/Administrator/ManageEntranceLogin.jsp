<%-- 
    Document   : ManageEntranceLogin
    Created on : 17-Jan-2017, 01:33:28
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
                
                
                 background-image: url(http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background.jpg);
            }
            
            #manageentrancelogin {
                
                 
                 height: 600px;
                 width:  800px;
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
            
            #manageentrancelogin input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #manageentrancelogin input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #manageentrancelogin input[type="submit"] {
                
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
            
            
            #manageentrancelogin input[type="reset"] {
                
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
            
            #manageentrancelogin input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #manageentrancelogin input[type="reset"]:hover{
                
                
                 background-color: red;

            }
            
            #manageentrancelogin imgproperty {
                
                
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
            
            
            
            #h2{
                
                  color:white;
            }
            
            #p{
                
                 font-size: 16px;
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
        
        <%
            
             String EntranceID=request.getParameter("txtid");
                String username=request.getParameter("txtusername");
                String password=request.getParameter("txtpassword");
                
                if(request.getParameter("btnreset")!=null) {
                    
                    
                      request.setAttribute("entranceid", "  ");
                      request.setAttribute("usern", "  ");
                      request.setAttribute("passw", "  ");
                    
                }

                if(request.getParameter("btnsearch")==null) {
                    
                    
                        request.setAttribute("entranceid", "  ");
                        request.setAttribute("usern", "  ");
                        request.setAttribute("passw", "  ");
                       
                    
                }
                
            
                else if(request.getParameter("btnsearch")!=null) {
                   
                    BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                    
                   String dbcon=proxy.databaseconnection();
                   
                   String search=proxy.entranceLoginDetails(EntranceID);
                   
                   if(search.equalsIgnoreCase("NOT FOUND!")) {
                       
                         out.println("NOT FOUND");
                       
                   }
                   
                   else {
                            String [] display=search.split("===");
                   
                            String userid=display[0];
                            String usern=display[1];
                            String passw=display[2];
                      
                        
                     
                     request.setAttribute("entranceid", userid);
                        request.setAttribute("usern", usern);
                        request.setAttribute("passw", passw);
                       
                   }

               }   
            
            
            %>
        
            
           <%
                
                String user=request.getParameter("username");
                String pass=request.getParameter("password");
                
                                    BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();

                                    String show=proxy.displayallEntranceLoginID();
                
             %>
             
         <input type="submit" value="BACK" onclick="back()" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
         <input type="submit" value="HELP" onclick="help()" id="btnhelp" name="btnhelp" />
            
            <script>
                
                   function back() {
                       
                       
                       var username=<%= user   %>;
                       var password=<%= pass   %>;
                       
                       var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                      location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminPanelMainMenu.jsp?username=" +username + "&password=" +password;
                      
                      
                  }
                       
                   }
                   
                    function help() {
                       
                       
                       var sent1="***Note that Entrance Login's IDs will display under 'Search Entrance Login Details Based on these Identities' text box and *display only one time. Make sure to remember. Otherwise problems might occur****.";
                       var sent2="Provide only Entrance Login ID to view property details.";
                       var sent3="In order to 'INSERT' records, you must provide information for all the fields except 'Entrance ID'.";
                       var sent4="In order to 'UPDATE' records, you must provide information for 'Entrance ID' and other relevant required fields.";
                       var sent5="In order to 'DELETE' records, you must provide only 'Entrance ID'. Otherwise problems may occur";
                       var sent6="Click 'BACK' button to navigate to Main Menu if necessary";

                       
                       alert(sent1 + "\n \n" +sent2 + "\n \n" +sent3 + "\n \n" +sent4 + "\n \n" +sent5 + "\n \n" +sent6);
                   }
               
               
    
            </script>
            
             <h3>Search Entrance Login Details Based on these Identities:   &nbsp; &nbsp; &nbsp; &nbsp;
              <input type="text" id="txtids" name="txtids" placeholder="" style="width: 400px; height: 70px" value="<%= show  %>"  /> &nbsp; &nbsp; &nbsp;  
                    
                
                </h3> <br> <br> <br>
             
         <div id="manageentrancelogin">
            
            <form>
                
                <center><h2><b> <font style="color: white"> Manage Entrance Login </font></b></h2> </center> <br> 
                                
                <h3>Entrance Login ID:     &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtid" name="txtid" placeholder="" style="width: 500px" value="<%= request.getAttribute("entranceid") %>"  />  
                    
                </h3> <br> 
                
                <h3>Username:     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtusername" name="txtusername" placeholder="" style="width: 500px" value="<%= request.getAttribute("usern") %>" />  
                    
                </h3> <br> 
                
                <h3>Password:    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtpassword" name="txtpassword" placeholder="" style="width: 500px" value="<%= request.getAttribute("passw") %>"/> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br>  <br> <br>
                    
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnsearch" name="btnsearch" value="SEARCH" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btninsert" name="btninsert" value="INSERT" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <input type="submit" id="btnupdate" name="btnupdate" value="UPDATE" /> <br> <br> <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btndelete" name="btndelete" value="DELETE" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

                
                <input type="submit" id="btnreset" name="btnreset" value="RESET" />
                
                
            </form>
            
            
        </div>
        
        
        <%
            
           

              if(request.getParameter("btninsert")!=null) {
                   
                       BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                       
                            
                         String dbcon=proxy.databaseconnection();
                 

                     String insert=proxy.insertEntranceLogin(username, password);
                   
                      out.println(insert);
               }
            
              else if (request.getParameter("btnupdate")!=null) {
                   
                  BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                                                   
                         String dbcon=proxy.databaseconnection();
                 
                           
                  
                  
                   String update=proxy.updateEntranceLogin(EntranceID, username, password);
                   
                   out.println(update);
               }
            
               else if(request.getParameter("btndelete")!=null) {
                   
                   BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                   
                   String dbcon=proxy.databaseconnection();
                                    
                   String delete=proxy.deleteEntranceLogin(EntranceID);
                     
                   out.println(delete);
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
