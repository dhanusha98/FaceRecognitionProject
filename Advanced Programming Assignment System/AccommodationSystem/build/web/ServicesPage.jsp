<%-- 
    Document   : ServicesPage
    Created on : 08-Jan-2017, 21:57:05
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
            
            
        </style>
    </head>
    <body>
        
        <div id="header"> <br> <br> <br> 
            
            <center><b><i><u> <font style="color: white; size: 35px"> <h1>OUR SERVICES </h1></font></u></i></b> </center>
          
            </div>
        
        <br>
                     <input type="submit" value="BACK" onclick="back()" /> 

        <br> <br>
        
        <script>
            
            function back() {
                       
                       var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/Entrance.jsp";
                      
                      
                  }
                       
                   }
            
            
        </script>
        
        
        <ul>
            
            <b> <li>Online Property Publishing facility</li> </b><br> <br>
            <b><li>Different User Account facility</li> </b> <br> <br>
            <b><li>Many Other Services</li> </b>
       
        </ul>
        
        
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
