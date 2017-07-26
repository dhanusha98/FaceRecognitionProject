<%-- 
    Document   : ManageStudentProfiles
    Created on : 09-Jan-2017, 23:42:28
    Author     : BANDULA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="business.BusinessLogicService"%>
<%@page import="business.BusinessLogicService_Service"%>
<%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            
            body{
                
                
                 background-image: url(http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background.jpg);
            }
            
            #managestudent {
                
                 
                 height: 1300px;
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
            
            #managestudent input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #managestudent input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #managestudent input[type="submit"] {
                
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
            
            
            #managestudent input[type="reset"] {
                
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
            
            #managestudent input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #managestudent input[type="reset"]:hover{
                
                
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
            
            
            #managestudent imgprofile {
                
                
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
            
               String StudentID=request.getParameter("txtid");
                String username=request.getParameter("txtusername");
                String password=request.getParameter("txtpassword");
                String fullname=request.getParameter("txtfullname");
                String contact=request.getParameter("txtcontact");
                String address=request.getParameter("txtaddress"); 
                
                
                if(request.getParameter("btnreset")!=null) {
                    
                        request.setAttribute("userid", "  ");
                        request.setAttribute("usern", "  ");
                        request.setAttribute("passw", "  ");
                        request.setAttribute("name", "  ");
                        request.setAttribute("contactno", "  ");
                        request.setAttribute("uaddress", "  ");
                        request.setAttribute("url", "  ");
   
                }
                
                if(request.getParameter("btnsearch")==null) {
                    
                    
                        request.setAttribute("userid", "  ");
                        request.setAttribute("usern", "  ");
                        request.setAttribute("passw", "  ");
                        request.setAttribute("name", "  ");
                        request.setAttribute("contactno", "  ");
                        request.setAttribute("uaddress", "  ");
                        request.setAttribute("url", "  ");

                    
                }
                
            
                else if(request.getParameter("btnsearch")!=null) {
                   
                    BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                    
                   String dbcon=proxy.databaseconnection();
                   
                   String search=proxy.searchStudentProfile(StudentID);
                   
                   String [] display=search.split("===");
                   
                       String userid=display[0];
                        String usern=display[1];
                        String passw=display[2];
                        String name=display[3];
                        String contactno=display[4];
                        String uaddress=display[5];
                        
                        
                         byte[] image=proxy.studentprofileimage(usern, passw);
                  
                String url = "data:image/png;base64," + Base64.encode(image); 
                        
                     
                        request.setAttribute("userid", userid);
                        request.setAttribute("usern", usern);
                        request.setAttribute("passw", passw);
                        request.setAttribute("name", name);
                        request.setAttribute("contactno", contactno);
                        request.setAttribute("uaddress", uaddress);
                        request.setAttribute("url", url);

               }
            
                        
            
            if(request.getParameter("btninsert")!=null) {
                
                    

                   
                       BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                       
                            
                         String dbcon=proxy.databaseconnection();
                 

                     String insert=proxy.studentSignUp(username, password, fullname, contact , address, " ");
                   
                      out.println(insert);
               }
            
              else if (request.getParameter("btnupdate")!=null) {
                   
                  BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                       
                            
                         String dbcon=proxy.databaseconnection();
                 
                           
                  
                  
                   String update=proxy.updateStudentProfile(StudentID, username, password, fullname, contact, address);
                   
                   out.println(update);
               }
            
               else if(request.getParameter("btndelete")!=null) {
                   
                   BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                   
                   String dbcon=proxy.databaseconnection();
                                    
                   String delete=proxy.deleteStudents(StudentID);
                     
                   out.println(delete);
               }
               
            
              BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
            
              
                          String show=proxy.displayallStudentID();

             
                 if(request.getParameter("btnfileupload")!=null) {
                 
                    String txtuserid=request.getParameter("txtid");
                    String filevalue=request.getParameter("fileup");
                    
                    String fileupload=proxy.insertstudentprofileimage(txtuserid, filevalue);
                    
                     out.println(fileupload);
                 
             }       

            %>
            
            <%
                 
                 String usern=request.getParameter("username");
                 String passw=request.getParameter("password");
                 
                 
            %>
            
           <input type="submit" value="BACK" onclick="back()" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             <input type="submit" value="HELP" onclick="help()" id="btnhelp" name="btnhelp" />
                    
            
            <script>
                
                   function back() {
                       
                       
                       var username=<%= usern   %>;
                       var password=<%= passw   %>;
                       
                       var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/ManageProfiles.jsp?username=" +username + "&password=" +password;
                      
                  }
                       
                   }
                   
                    function help() {
                       
                       
                       var sent1="***Note that your properties' IDs will display under 'Search Properties Based on these Identities' text box and *display only one time. Make sure to remember. Otherwise problems might occur****.";
                       var sent2="Provide only Student ID to view property details.";
                       var sent3="Please be note that uploading property pictures should be done at last after implementing other relevant transaction as this is a separate function. When inserting images, make sure to provide Student ID. Otherwise problems might occur.";
                       var sent4="In order to 'INSERT' records, you must provide information for all the fields except 'Student ID'.";
                       var sent5="In order to 'UPDATE' records, you must provide information for 'Student ID' and other relevant required fields.";
                       var sent6="In order to 'DELETE' records, you must provide only 'Student ID'. Otherwise problems may occur";
                       var sent7="Please be note that uploading profile picture should be done at last after implementing other relevant transaction as this is a separate function. Otherwise problems might occur.";
                       var sent8="Click 'BACK' button to navigate to Main Menu if necessary";

                       
                       alert(sent1 + "\n \n" +sent2 + "\n \n" +sent3 + "\n \n" +sent4 + "\n \n" +sent5 + "\n \n" +sent6 + "\n \n" +sent7 + "\n \n" +sent8);
                   }
               
    
            </script>
            
             <h3>Search Student Accounts Based on these Identities:   &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtids" name="txtids" placeholder="" style="width: 400px; height: 70px" value="<%= show %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> <br>
        
         <div id="managestudent">
            
         ***Please note that be sure to upload pictures after implementing 'update'/any transaction for records. Otherwise problems will occur***
             
            <form>
                
                <center> <h2><b> <font style="color: white"> Manage Students </font></b></h2> </center><br> 
                
                <center><img src="<%= request.getAttribute("url")  %>" height="300px" width="300px" id="imgprofile"  /> </center> <br> <br>
                
                <h3>Upload Profile Picture :    &nbsp; &nbsp; &nbsp;
                    <input type="file" id="fileup" name="fileup" style="width: 400px; height: 35px" /> &nbsp; &nbsp; &nbsp; 
                    
                    <input type="submit" id="btnfileupload" name="btnfileupload" value="SAVE IMAGE" /> 
                
                </h3> <br> <br> 
                
                
                <h3>Student ID:     &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtid" name="txtid" placeholder="" style="width: 500px" value="<%= request.getAttribute("userid") %>" />  
                    
                </h3> <br> 
                
                <h3>Username:     &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtusername" name="txtusername" placeholder="" style="width: 500px" value="<%= request.getAttribute("usern") %>" />  
                    
                </h3> <br> 
                
                <h3>Password:    &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtpassword" name="txtpassword" placeholder="" style="width: 500px" value="<%= request.getAttribute("passw") %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                    
                    
                <h3>Full Name: &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtfullname" name="txtfullname" placeholder="" style="width: 500px" value="<%= request.getAttribute("name") %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                    
                <h3>Contact:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
                    <input type="text" id="txtcontact" name="txtcontact" placeholder="" style="width: 500px" value="<%= request.getAttribute("contactno") %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                    
               <h3>Address:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtaddress" name="txtaddress" placeholder="" style="width: 500px" value="<%= request.getAttribute("uaddress") %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
               </h3> <br> <br> <br>
                
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnsearch" name="btnsearch" value="SEARCH" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btninsert" name="btninsert" value="INSERT" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <input type="submit" id="btnupdate" name="btnupdate" value="UPDATE" /> <br> <br> <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btndelete" name="btndelete" value="DELETE" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                
                <input type="submit" id="btnreset" name="btnreset" value="RESET" />
                
                
            </form>
            
            
        </div>
        
        <%
            
            
                
               /* String StudentID=request.getParameter("txtid");
                String username=request.getParameter("txtusername");
                String password=request.getParameter("txtpassword");
                String fullname=request.getParameter("txtfullname");
                String contact=request.getParameter("txtcontact");
                String address=request.getParameter("txtaddress"); */
                
               
                
              /* if(request.getParameter("btninsert")!=null) {
                   
                       BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                       
                       int contactno=Integer.parseInt(contact);
                            
                         String dbcon=proxy.databaseconnection();
                 

                     String insert=proxy.studentSignUp(username, password, fullname, contactno, address, " ");
                   
                      out.println(insert);
               }
            
              else if (request.getParameter("btnupdate")!=null) {
                   
                  BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                       
                       int contactno=Integer.parseInt(contact);
                            
                         String dbcon=proxy.databaseconnection();
                 
                           
                  
                  
                   String update=proxy.updateStudentProfile(StudentID, username, password, fullname, contact, address, " ");
                   
                   out.println(update);
               }
            
               else if(request.getParameter("btndelete")!=null) {
                   
                   BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
                   
                   String dbcon=proxy.databaseconnection();
                                    
                   String delete=proxy.deleteStudents(StudentID);
                     
                   out.println(delete);
               }
               
*/
               
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
