<%-- 
    Document   : LandLordMainMenu
    Created on : 09-Jan-2017, 20:47:27
    Author     : BANDULA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            
            
            #header{
                
                       height:300px;
                       width:100%;
                       background-color: black;
                       opacity: .8;
                
            }
            
            #navmenu{
                
                  margin-top: 100px;
                  
            }
            
            #navmenu ul{
                
                
                list-style: none;
                margin-left: auto;
                margin-right: auto;
               

            }
            
            #navmenu ul li{
                
                background-color: grey;
                width:200px;
                border: 1px solid white;
                line-height:50px;
                height:50px;
                text-align: center;
                float: left;
                color: white;
                font-weight: bold;
                text-decoration: none;

            }
            
            #navmenu ul li a {
                
                color: white;
                font-weight: bold;
                text-decoration: none;
                
            }
            
            #navmenu ul li:hover{
                
                
                background-color: red;
                
            }
            
            #navmenu ul ul {
                
                display:none;
            }
            
            #navmenu ul li:hover > ul{
                
                display:block;
                
            }
            
            body{
                
                 background-image: url(http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background.jpg);
                 height:1030px;
                
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
        
        
        
        <div id="header"> <br> <br> <br> <br> <br>
            <div id="navmenu"> 
            <ul>
                <br>
                <li><a onclick="navhome()">HOME</a></li>
                <li><a onclick="navprofile()">PROFILE</a></li>
                <li>PROPERTY
                
                <ul>
                    <li><a onclick="navproperty()">VIEW PROPERTY</a></li>
                    <li><a onclick="navproperty()">ADD NEW PROPERTY</a></li>
                    <li><a onclick="navproperty()">MAINTAIN PROPERTY DETAILS</a></li>

                </ul>
                
                </li>
                
                <li>REQUESTS
                
                    <ul>
                        <li><a onclick="receivedrequests()">RECEIVED REQUESTS</a></li>
                        <li><a onclick="adminenquire()">SEND ADMIN REQUESTS</a></li>
                        <li><a onclick="receivedfeedback()">RECEIVED FEEDBACKS</a></li>
                        <li><a onclick="normalenquire()">OTHER ENQUIRE</a></li>
                </ul>
                
                </li>
                
                <li><a onclick="help()">HELP</a></li>
                <li><a onclick="logout()">LOGOUT</a></li>
                
            </ul>
                
                
            </div>
        
            </div>
        
        
        
        <br> <br>
        
        <div id="footer">
            
            <p style="color:white">Copyright(c) in 2017 by ABC University</p>
        </div>
        
        
       
         <%
            
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            
            
            %>
        
            <script>
                
                var user="<%= username    %>";
                var pass="<%= password     %>";
                var receiver;
           </script>
           
           <script>
               function navhome() {
                   
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/LandLordMainMenu.jsp?username=" +user + "&password=" +pass;
               }
               
                function logout() {
                   
                  var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                   
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/LandLordLogin.jsp";
                      
                  }
               }
               
               
               function navprofile() {
                   
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/LandLordProfile.jsp?username=" +user + "&password=" +pass;
               }
                
               function navproperty() {
                   
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/LandLordProperty.jsp?username=" +user + "&password=" +pass;

               }
               
               function receivedrequests() {
                   
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/LRequestFunction.jsp?username=" +user + "&password="+pass;
               }
               
               function adminenquire() {
                   
                   receiver="ADMINISTRATOR";
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/ReplicationForm.jsp?username=" +user + "&password=" +pass + "&receiver=" +receiver;
               }
               
               function normalenquire() {
                   
                   receiver="";
                   
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/ReplicationForm.jsp?username=" +user + "&password=" +pass + "&receiver=" +receiver;
               }
               
                function help() {
                   
                 alert("Select any function to implement related transaction. If you want to logout, Click 'LOGOUT' button");               
        
                }
                
                function receivedfeedback() {
                    
                    location.href="http://localhost:8080/AccommodationSystem/LandLord/LRequestFeedback.jsp?username=" +user + "&password=" +pass;
                }
                
            </script>
          
            
            
        
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
