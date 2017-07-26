<%-- 
    Document   : RequestFeedback
    Created on : 18-Jan-2017, 00:02:45
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
            
            #normalfeedback {
                
                 
                 height: 1200px;
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
            
            #normalfeedback input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #normalfeedback input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #normalfeedback input[type="submit"] {
                
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
            
            
            #normalfeedback input[type="reset"] {
                
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
            
            #normalfeedback input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #normalfeedback input[type="reset"]:hover{
                
                
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
            
               BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
             
                 String text=proxy.studentProfile(username, password);
                 
                 String [] textdisplay=text.split("===");
                 
                   String userid=textdisplay[0];
                   
                   
                   String ar=proxy.studentsentenquire(userid, "Student");
                   
                   
                   
               if(request.getParameter("btnsubmit")==null) {

                  request.setAttribute("RequestID", "  ");
                  request.setAttribute("FullName",  "  ");
                  request.setAttribute("Contact",  "  ");
                  request.setAttribute("Email",  "  ");
                  request.setAttribute("Purpose",  "  ");
                  request.setAttribute("AccountType",  "  ");
                  request.setAttribute("SendTo",  "  ");
                  request.setAttribute("Message",  "  ");
                  request.setAttribute("StudentID",  "  ");
                  request.setAttribute("LandLordID",  "  ");
                  request.setAttribute("Feedback",  "  ");           
                                
                }
            
               else if(request.getParameter("btnsubmit")!=null) {
                 
                 
             /*String txtfullname=request.getParameter("txtfullname");
             String txtcontact=request.getParameter("txtcontact");
             String txtemail=request.getParameter("txtemail");
             String txtpurpose=request.getParameter("txtpurpose");
             String txtaccounttype=request.getParameter("txtaccounttype");
             String txtsend=request.getParameter("txtsend");
             String txtmessage=request.getParameter("txtmessage");
             String txtstudentid=request.getParameter("txtstudentid");
             String txtlandlordid=request.getParameter("txtlandlordid");
             String txtfeedback=request.getParameter("txtfeedback");*/
                  
                   String id=request.getParameter("txtid");
                  
                String searchenquire=proxy.userenquirefeedback(id);
             
         
                   String [] display=searchenquire.split("===");
                   
                     
                  request.setAttribute("RequestID", display[0]);
                  request.setAttribute("FullName",  display[1]);
                  request.setAttribute("Contact",  display[2]);
                  request.setAttribute("Email",  display[3]);
                  request.setAttribute("Purpose",  display[4]);
                  request.setAttribute("AccountType",  display[5]);
                  request.setAttribute("SendTo",  display[6]);
                  request.setAttribute("Message",  display[7]);
                  request.setAttribute("StudentID",  display[8]);
                  request.setAttribute("LandLordID",  display[9]);
                  request.setAttribute("Feedback",  display[10]); 


             }
             
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
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/Student/StudentMainMenu.jsp?username=" +username + "&password=" +password;
                      
                  }
                       
                   }
                   
                   function help() {
                       
                       
                       var sent1="***Note that your sent enquires' IDs will display under 'Search Enquires Based on these Identities' text box and *display only one time. Make sure to remember. Otherwise problems might occur****.";
                       var sent2="***Note that you must use available Enquiry ID to view feedbacks for them***.";
                       var sent3="Click 'BACK' button to navigate to Main Menu if necessary.";

                      alert(sent1 + "\n \n" +sent2 + "\n \n" +sent3);
                       
                   }
               
    
            </script>
            
        <h3>Search Enquires Based on these Identities:   &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="text" id="txtids" name="txtids" placeholder="" style="width: 400px; height: 70px" value="<%= ar    %>"  /> &nbsp; &nbsp; &nbsp;  
                    
                
                </h3> <br> <br> <br>
          
        
        
        <div id="normalfeedback">
            
            <form>
                
                <center><h2><b> <font style="color: white"> Enquire Received Feedback (Students) </font></b></h2> </center> <br> 
                                
                <h3>Request ID:     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtid" name="txtid" placeholder="" style="width: 500px" value=""  />  
                    
                </h3> <br> 
                
                <h3>Full Name:     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtname" name="txtname" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("FullName")   %>" />  
                    
                </h3> <br> 
                
                <h3>Contact:    &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtcontact" name="txtcontact" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("Contact")    %>"/> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                    
                    
                <h3>Email: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtemail" name="txtemail" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("Email")   %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                
                <h3>Purpose: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtpurpose" name="txtpurpose" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("Purpose")  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                
                <h3>Account Type (Sender):   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtaccounttype" name="txtaccounttype" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("AccountType")  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                
                <h3>Send To: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtsend" name="txtsend" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("SendTo")  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                
                <h3>Message: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtmessage" name="txtmessage" placeholder="" style="width: 500px" value="<%= request.getAttribute("Message")  %>" /> &nbsp; &nbsp; &nbsp; 
                
                </h3> <br> 
                
                <h3>Student ID: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtstudentid" name="txtstudentid" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("StudentID")  %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                
                <h3>Land Lord ID: &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtlandlordid" name="txtlandlordid" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("LandLordID")  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                
                    
                <h3>Feedback:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;   
                    <input type="text" id="txtfeedback" name="txtfeedback" placeholder="" style="width: 500px" disabled="true" value="<%= request.getAttribute("Feedback")  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> <br>
                    
               
                
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnsubmit" name="btnsubmit" value="SEARCH" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

                <input type="submit" id="btnreset" name="btnreset" value="RESET" />
                
                
            </form>
            
            
        </div>
        
         <script>
            
               if(document.getElementById("btnreset").value!==null) {
                   
                   document.getElementById("txtid").value=" ";
                   
               }
            
            
        </script>
           
        
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
