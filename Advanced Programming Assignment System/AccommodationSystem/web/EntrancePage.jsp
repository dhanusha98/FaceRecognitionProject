<%-- 
    Document   : EntrancePage
    Created on : 07-Jan-2017, 18:54:26
    Author     : BANDULA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC University - Accommodation System</title>
        
                <!-- Presentation Layer   -->

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
                
                 background-image: url(https://s-media-cache-ak0.pinimg.com/originals/1b/43/1c/1b431cd0ea784697bb283824957f765d.jpg);
                
                
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
                <li>PROPERTY
                
                <ul>
                    <li><a href="http://localhost:8080/AccommodationSystem/Student/StudentlLogin.jsp">BUY/RENT HOUSE</a></li>
                     <li><a href="http://localhost:8080/AccommodationSystem/LandLord/LandLordlLogin.jsp">PUBLISH HOUSES</a></li>
                </ul>
                
                </li>
                
                <li>STUDENT
                
                    <ul>
                        <li><a href="http://localhost:8080/AccommodationSystem/Student/StudentlLogin.jsp" >LOGIN</a></li>
                        <li><a href="http://localhost:8080/AccommodationSystem/Student/StudentSignUp.jsp" >SIGN UP</a></li>
                </ul>
                </li>
                
                <li>LANDLORD
                
                    <ul>
                        <li><a href="http://localhost:8080/AccommodationSystem/LandLord/LandLordlLogin.jsp" >LOGIN</a></li>
                        <li><a href="http://localhost:8080/AccommodationSystem/LandLord/LandLordSignUp.jsp" >SIGN UP</a></li>
                </ul>
                
                </li>
                <li>ADMINISTRATOR
                
                   <ul>
                       <li><a href="http://localhost:8080/AccommodationSystem/Administrator/EntranceLogin.jsp">LOGIN</a></li>
                       <li><a href="http://localhost:8080/AccommodationSystem/Administrator/EntranceLogin.jsp">SIGN UP</a></li>
                </ul>
                
                </li>
                <li><a href="http://localhost:8080/AccommodationSystem/ServicesPage.jsp">SERVICES</a></li>
                
            </ul>
                
                
            </div>
        
            </div>
        
       
        
        <br> <br>
        
    <center><h1> <b> <i> <font style="color: black">WELCOME TO OUR STUDENT ACCOMMODATION SYSTEM  </font> </i></b></h1> </center>
            
        
    <script>
        
          function normallogin() {
              
                 window.location.href="http://localhost:8080/AccommodationSystem/NormalLogin.jsp";
          }
          
          function studentsignup() {
              
              
               window.location.href="http://localhost:8080/AccommodationSystem/Student/StudentSignUp.jsp";
               
          }
          
          function landlordsignup() {
              
              
               window.location.href="http://localhost:8080/AccommodationSystem/LandLord/LandLordSignUp.jsp";
               
          }
          
          
          function entrancelogin() {
              
              window.location.href="http://localhost:8080/AccommodationSystem/Administrator/EntranceLogin.jsp";
          }
          
          function adminsignup() {
              
              
              window.location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminSignUp.jsp";
          }
          
          function home() {
              
              window.location.href="http://localhost:8080/AccommodationSystem/EntrancePage.jsp";

          }
          
           function services() {
              
              window.location.href="http://localhost:8080/AccommodationSystem/ServicesPage.jsp";

          }
        
        </script>
        
        
        
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
