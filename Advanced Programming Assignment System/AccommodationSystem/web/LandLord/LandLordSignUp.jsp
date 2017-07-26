<%-- 
    Document   : LandLordSignUp
    Created on : 09-Jan-2017, 17:24:11
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
                
                background-image: url("https://s-media-cache-ak0.pinimg.com/originals/1b/43/1c/1b431cd0ea784697bb283824957f765d.jpg");
                
            }
            
            #landlordsignup {
                
                 
                 height: 700px;
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
            
            #landlordsignup input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;
            
            }
            
            #landlordsignup input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #landlordsignup input[type="submit"] {
                
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
            
            #landlordsignup input[type="reset"] {
                
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
            
            #landlordsignup input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #landlordsignup input[type="reset"]:hover{
                
                
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
        
        <div id="landlordsignup">
            
            
             <script>
            
           function send() {
            
            if(document.getElementById("txtfullname").value==="" || document.getElementById("txtcontact").value==="" || document.getElementById("txtaddress").value==="" || document.getElementById("txtother").value==="" || document.getElementById("txtusername").value==="" || document.getElementById("txtpassword").value==="" || document.getElementById("txtrepassword").value==="") {
                
                  alert("Required Fields are Empty!!!");
            }
            
            else if(document.getElementById("txtpassword").value!==document.getElementById("txtrepassword").value) {
                
                alert("Password is not match!");
            }
            
            
    }
            
            </script>
            
          
             
             <script>
                
                   function back() {
                      
                       
                       var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/EntrancePage.jsp";
                      
                  }
                       
                   }
                   
                   function help() {
                       
                       
                       var sent1="Please make sure provide all information for successful Sign Up";
                       var sent2="Please make sure to provide strong passwords to ensure high security";
                       var sent3="Click 'BACK' button to navigate for Entrance Page if ecessary";

                      alert(sent1 + "\n \n" +sent2 +"\n \n"+sent3);
                       
                   }
               
    
            </script>
            
            <form onsubmit="send()">
                
                <h2><b> <font style="color: white"> Sign Up Form (LandLord) </font></b></h2> <br> 
                
                <input type="text" id="txtfullname" name="txtfullname" placeholder="Fullname" style="width: 400px" /> <br> <br> <br>
                
                <input type="text" id="txtcontact" name="txtcontact" placeholder="Contact Number" style="width: 400px" /> <br> <br> <br>
                
                <input type="text" id="txtaddress" name="txtaddress" placeholder="Address" style="width: 400px" /> <br> <br> <br>
                
                <input type="text" id="txtother" name="txtother" placeholder="More Details" style="width: 400px" /> <br> <br> <br>
                
               <input type="text" id="txtusername" name="txtusername" placeholder="Username" style="width: 400px" /> <br> <br> <br>

               <input type="password" id="txtpassword" name="txtpassword" placeholder="Password" style="width: 400px" /> <br> <br> <br>

              <input type="password" id="txtrepassword" name="txtrepassword" placeholder="Re-Enter Password" style="width: 400px" /> 

                
                <br> <br> <br> <br>  
                
                
                <input type="submit" id="btnsubmit" name="btnsubmit" value="SUBMIT" /> &nbsp; &nbsp;
                <input type="reset" id="btnreset" name="btnreset" value="RESET" />
                
                
            </form>
            
            
        </div>
        
        <%
            
              String fullname=request.getParameter("txtfullname");
            
            String contactno=request.getParameter("txtcontact");
            
            String address=request.getParameter("txtaddress");
            String username=request.getParameter("txtusername");
            String password=request.getParameter("txtrepassword");
            String other=request.getParameter("txtother");
            
            if(request.getParameter("btnsubmit")!=null) {
                
                
              BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                
                            
                 String dbcon=proxy.databaseconnection();
                 
                            
                  String insertion=proxy.landLordSignUp(username, password, fullname, contactno, address, other, "");
                  
                  
                  out.println(insertion);
                
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
