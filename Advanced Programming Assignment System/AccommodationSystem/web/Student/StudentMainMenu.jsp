<%-- 
    Document   : StudentMainMenu
    Created on : 09-Jan-2017, 20:46:54
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
                <li><a onclick="home()">HOME</a></li>
                <li><a onclick="profile()">PROFILE </a> </li>
                
                <li>PROPERTY DETAILS 
                
                    <ul>
                        <li><a onclick="property()">VIEW PROPERTY</a></li>
                </ul>
                
                </li>
                
               
                <li>REQUESTS
                
                   <ul>
                       <li><a onclick="adminrequests()">ADMIN REQUESTS</a></li>
                       <li><a onclick="requests()">OTHER ENQUIRE</a></li>
                       <li><a onclick="enquirefeedback()">ENQUIRE FEEDBACK</a></li>
                       <li><a onclick="receivedrequests()">RECEIVED ENQUIRES</a></li>


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
             

              var usern="<%=username  %>";
              var pass="<%=password %>";
    
             
         </script>
        
        <script>
            
                        
               function help() {
                   
                    alert("Select any function to implement related transaction. If you want to logout, Click 'LOGOUT' button");
               }
               
                function logout() {
                   
                  var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   
                   location.href="http://localhost:8080/AccommodationSystem/Student/StudentLogin.jsp";
                      
                  }
               }
               
               function home() {
                
                   window.location.href="http://localhost:8080/AccommodationSystem/Student/StudentMainMenu.jsp?username=" +usern + "&password=" +pass;
                
                }
            
              function profile() {
                  
                  
                  window.location.href="http://localhost:8080/AccommodationSystem/Student/StudentProfile.jsp?username=" +usern + "&password=" +pass;
              }
              
              function property() {
                  
                  window.location.href="http://localhost:8080/AccommodationSystem/Student/ViewPropertyFunction.jsp?username=" +usern + "&password=" +pass;
              }
              
              function reports() {
                  
                  window.location.href="http://localhost:8080/AccommodationSystem/Student/StudentMaintainReport.jsp?username=" +usern+ "&password=" +pass;
              }
              
              function requests() {
                  
                  var receiver=" ";
                  window.location.href="http://localhost:8080/AccommodationSystem/Student/ReplicationForm.jsp?username=" +usern+ "&password=" +pass + "&receiver=" +receiver;
              }
            
              function adminrequests() {
                  
                  var receiver="Administrator";
                  
                window.location.href="http://localhost:8080/AccommodationSystem/Student/ReplicationForm.jsp?username=" +usern+ "&password=" +pass + "&receiver=" +receiver;
              }
              
              function receivedrequests() {
                  
                  var receiver=" ";
                  window.location.href="http://localhost:8080/AccommodationSystem/Student/RequestFunction.jsp?username=" +usern+ "&password=" +pass + "&receiver=" +receiver;
              }
              
              function enquirefeedback() {
                  
                  
                  window.location.href="http://localhost:8080/AccommodationSystem/Student/RequestFeedback.jsp?username="+usern+ "&password=" +pass;
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
