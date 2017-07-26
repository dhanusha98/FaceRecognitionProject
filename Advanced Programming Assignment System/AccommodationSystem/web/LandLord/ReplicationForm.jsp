<%-- 
    Document   : ReplicationForm
    Created on : 09-Jan-2017, 23:36:10
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
        
        <!-- Presentation Layer   -->
        <style>
            
            body{
                
                
                 background-image: url(http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background-2.jpg);
            }
            
            #enquireform {
                
                 
                 height: 1300px;
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
            
            #enquireform input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #enquireform input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #enquireform input[type="submit"] {
                
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
            
            #enquireform input[type="reset"] {
                
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
            
            #enquireform input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #enquireform input[type="reset"]:hover{
                
                
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
        
        
        <%
            
            
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            %>
            
            
              <input type="submit" value="BACK" onclick="back()" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             <input type="submit" value="HELP" onclick="help()" id="btnhelp" name="btnhelp" />
             
             
             <script>
                
                   function back() {
                       
                       
                       var username=<%= username   %>;
                       var password=<%= password   %>;
                       
                       var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/LandLordMainMenu.jsp?username=" +username + "&password=" +password;
                      
                  }
                       
                   }
                   
                    function help() {
                       
                       
                       var sent1="Please make sure to see and know your user ID which will display in either Land Lord ID/Student ID. If you have an Administrator Account, That won't display in related sections";
                       var sent2="***Note that you must provide information for all enabled fields to make success you enquiry";
                       

                      alert(sent1 + "\n \n" +sent2);
                       
                   }
               
               
            </script>
             
            
            <%
            String receiver;
            String LandLordID;

              BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
            
             String text=proxy.searchLandLordID(username, password);
             
               if(request.getParameter("receiver")==null) {
               
                     receiver="";
                 }
               
               else {
                   
                   receiver=request.getParameter("receiver");
               }
                         

               if(text.equalsIgnoreCase("Not Found")) {
                   
                     text="";
               }
               
              
               if(request.getParameter("LandLordID")==null) {
                   
                   LandLordID=" ";
               }
               
               else {
                   
                    LandLordID=request.getParameter("LandLordID");
               
               }
               
               
            %>
       
           
        
            
           
        <script>
            
            
           function send() {
            
            
            if(document.getElementById("txtfullname").value==="" || document.getElementById("txtcontact").value==="" || document.getElementById("txtemail").value==="" || document.getElementById("txtpurpose").value==="" || document.getElementById("txtaccounttype").value==="" || document.getElementById("txtsend").value==="" || document.getElementById("txtmessage").value==="" || document.getElementById("txtstudentid").value==="" || document.getElementById("txtlandlordid").value===""  ) {
                
                  alert("Required Fields are Empty!!!");
            }
           
            
    }
            
            </script>
        
         <!--Presentation Layer-->
        
         <div id="enquireform">
            
             <form onsubmit="send()">
                
                <h2><b> <font style="color: white"> Request Form(Land Lords) </font></b></h2> <br> 
                
                <input type="text" id="txtfullname" name="txtfullname" placeholder="Fullname" style="width: 400px" /> <br> <br> <br>
                
                <input type="text" id="txtcontact" name="txtcontact" placeholder="Contact Number" style="width: 400px" /> <br> <br> <br>
                
                <input type="text" id="txtemail" name="txtemail" placeholder="Email Address" style="width: 400px" /> <br> <br> <br>
                
                <input type="text" id="txtpurpose" name="txtpurpose" placeholder="Purpose" style="width: 400px" /> <br> <br> <br>
                
                 <input type="text" id="txtaccounttype" name="txtaccounttype" placeholder="Your Account Type (Student/LandLord/ADMINISTRATOR) ***case senstive***" style="width: 400px" value="" /> <br> <br> <br>

                <input type="text" id="txtsend" name="txtsend" placeholder="SendTo" style="width: 400px" value="<%= receiver  %>" /> <br> <br> <br>
                
                <input type="text" id="txtmessage" name="txtmessage" placeholder="Message" style="width: 400px; height: 150px;" /> <br> <br> <br>
                
                <input type="text" id="txtstudentid" name="txtstudentid" placeholder="Student ID" style="width: 400px"  /> <br> <br> <br>
                
                <input type="text" id="txtlandlordid" name="txtlandlordid" placeholder="LandLord ID " style="width: 400px" value=""/> (Type 'NULL' if enquire is not for Land Lord) <br> <br> <br>

                <input type="text" id="txtfeedback" name="txtfeedback" placeholder="Feedback" style="width: 400px; height: 150px;" disabled="true"/> 

                
                <br> <br> <br> <br>  
                
                
                <input type="submit" id="btnsubmit" name="btnsubmit" value="SUBMIT" /> &nbsp; &nbsp;
                <input type="reset" id="btnreset" name="btnreset" value="RESET" />
                
                
            </form>
            
            
        </div>
                
         <script>
                    
                  if(document.getElementById("txtsend").value==="ADMINISTRATOR")  {
                      
                       document.getElementById("txtstudentid").disabled=true;
                  }
                  
                  
                    
         
         </script>
        
        
         <%
            
             
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
                 
            %>
            
            <br>
            
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
