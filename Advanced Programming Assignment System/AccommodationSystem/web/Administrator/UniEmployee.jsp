<%-- 
    Document   : UniEmployee
    Created on : 09-Jan-2017, 11:01:45
    Author     : BANDULA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            
            body{
                
                background-image: url("http://i.huffpost.com/gen/1614466/images/o-BUSINESS0210-facebook.jpg");
                height:950px;
                
            }
            
            #header{
                
                 background-color: green;
                 height:100px;
                 width:100%;
                 color:white;
                 font-weight: bold;
                
            }
            #adminlog{
                
                height:300px;
                width:400px;
                margin-left: 20%;
                background-color: rgba(0,0,0,0.5);
                border-radius: 15px;
                -webkit-border-radius: 15px;
                -o-border-radius:15px;
                -moz-border-radius: 15px;
                
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
            
            
            #adminsignup{
                
                height:300px;
                width:400px;
                margin-left: 80%;
                background-color: rgba(0,0,0,0.5);
                border-radius: 15px;
                -webkit-border-radius: 15px;
                -o-border-radius:15px;
                -moz-border-radius: 15px;
                

            }
            
            #btnlogin {
                
                  height:260px;
                  width:350px;
                  background-color:red;
                  color:white;
                  font-weight: bold;
                  line-height: 50px;
                  opacity:.8;
                  font-size: 32px;
                  
            }
            
            #btnlogin:hover{
                
                background-color: orange;
                
            }
            #footer{
                
                   background-color: green;
                   height:100px;
                   width:100%;
                   margin-top: 670px;
                   text-align: center;
                   font-size: 16px;
                   font-weight: bold;
            }
        </style>
    </head>
    <body>
        
        
        <div id="header"> <br>
            
                 <center><h1>University Employee Page</h1></center>
        </div>
        <br> 
        
         <input type="submit" value="BACK" onclick="back()" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
         <input type="submit" value="HELP" onclick="help()" id="btnhelp" name="btnhelp" />
         <br> <br> <br>
         <script>
                
                   function back() {
                       
                       var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/EntranceLogin.jsp";
                      
                  }
                       
                   }
                   
                   function help() {
                       
                       
                       var sent1="Select relevant function to implement transactions";
                       var sent2="Click 'BACK' button to navigate to Entrance Login if necessary";

                      alert(sent1 + "\n \n" +sent2);
                       
                   }
               
    
            </script>
         
                  
        <br> <br> <br> <br>
        
        <table>
            
            <tr>
                
             <td> 
             <div id="adminlog">
            
            <br>
            &nbsp; &nbsp; &nbsp;  <input type="button" value="ADMIN LOGIN" id="btnlogin" onclick="adminlogin()" />
           
            </div> 
          </td>
          
            
               
          <td>
              
                <div id="adminsignup">
            
                     <br>
                     &nbsp; &nbsp; &nbsp;  <input type="button" value="ADMIN SIGN UP" id="btnlogin" onclick="adminsignup()" />
                </div> 
              
          </td>
                
                
            </tr>
            
        </table>
        
        <div id="footer">
            
            <p>Copyright(c) in 2017 by ABC University</p>
        </div>
        
        
        <script>
            
                 function adminlogin() {
                     
                       window.location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminLogin.jsp";
                     
                 }
                 
                 function adminsignup() {
                     
                       window.location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminSignUp.jsp";
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
