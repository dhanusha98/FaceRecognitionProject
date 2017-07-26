<%-- 
    Document   : AdminPanelMenu
    Created on : 08-Jan-2017, 21:55:56
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
                       width:125%;
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
        
        <%
            
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            
            %>
        
         <div id="header"> <br> <br> <br> <br> <br>
            <div id="navmenu"> 
            <ul>
                <li><a onclick="navhome()">HOME</a></li>
                <li>PROFILE
                
                   <ul>
                       <li><a onclick="adminprofile()">VIEW MY PROFILE</a></li>
                       <li><a onclick="otherprofile()">OTHER USER PROFILES</a></li>
                    </ul>
                
                </li>
                <li>PROPERTY
                
                <ul>
                    <li><a onclick="manageproperty()">MAINTAIN PROPERTY DETAILS</a></li>

                </ul>
                
                </li>
                
                <li>REPORTS
                
                    <ul>
                        <li><a onclick="managereports()">VIEW REPORTS</a></li>
                        <li><a onclick="managereports()">MAKE A NEW REPORT</a></li>
                </ul>
                </li>
                
                <li>REQUESTS
                
                    <ul>
                        <li><a onclick="receivedrequest()">RECEIVED REQUESTS</a></li>
                     <li><a onclick="newenquire()">NEW ENQUIRE</a></li>
                </ul>
                
                </li>
                <li><a onclick="naventrancelogin()">MANAGE ENTRANCE LOGIN</a></li>
                <li><a onclick="help()">HELP</a></li>
                <li><a onclick="logout()">LOGOUT</a></li>

            </ul>
                
                
            </div>
        
         </div> <br> <br>
        
         <div id="footer">
            
            <p style="color:white">Copyright(c) in 2017 by ABC University</p>
        </div>
        
          <script>
            
               function help() {
                   
                 alert("Select any function to implement related transaction. If you want to logout, Click 'LOGOUT' button");
                 
               }
               
               function logout() {
                   
                  var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminLogin.jsp";
                      
                  }
               }
               
               function navhome() {
                   
                   var user="<%= username   %>";
                   var pass="<%= password   %>";
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminPanelMenu.jsp?username=" + user + "&password=" +pass;
               }
            
                function adminprofile() {
                   
                   var user="<%= username   %>";
                   var pass="<%= password   %>";
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminProfile.jsp?username=" + user + "&password=" +pass;
               }
               
               function otherprofile() {
                   
                   var user="<%= username   %>";
                   var pass="<%= password   %>";
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/ManageProfiles.jsp?username=" + user + "&password=" +pass;
                   
                   
               }
               
                function manageproperty() {
                   
                   var user="<%= username   %>";
                   var pass="<%= password   %>";
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/ManageProperties.jsp?username=" + user + "&password=" +pass;
                   
                   
               }
            
                function managereports() {
                   
                   var user="<%= username   %>";
                   var pass="<%= password   %>";
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminMaintainReport.jsp?username=" + user + "&password=" +pass;
                   
                   
               }
               
               function receivedrequest() {
                   
                   var user="<%= username   %>";
                   var pass="<%= password   %>";
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/ARequestFunction.jsp?username=" + user + "&password=" +pass;
                   
                   
               }
               
               function newenquire() {
                   
                   var user="<%= username   %>";
                   var pass="<%= password   %>";
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminReplication.jsp?username=" + user + "&password=" +pass;
                   
                   
               }
               
               function naventrancelogin() {
                   
                   var user="<%= username    %>";
                   var pass="<%= password   %>"; 
                   
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/ManageEntranceLogin.jsp?username=" +user + "&password=" + pass;
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
