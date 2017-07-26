<%-- 
    Document   : AdminProfile
    Created on : 09-Jan-2017, 23:38:40
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
            
            #adminprofile {
                
                 
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
            
            #adminprofile input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #adminprofile input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #adminprofile input[type="submit"] {
                
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
            
            
            #adminprofile input[type="reset"] {
                
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
            
            #adminprofile input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #adminprofile input[type="reset"]:hover{
                
                
                 background-color: red;

            }
            
            #adminprofile imgprofile {
                
                
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
            
              String username=request.getParameter("username");
              String password=request.getParameter("password");
            
              %>
              
              <br> <br>
            <input type="submit" value="BACK" onclick="back()" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             <input type="submit" value="HELP" onclick="help()" id="btnhelp" name="btnhelp" />
            
             <br>
            <script>
                
                   function back() {
                       
                       
                       var username=<%= username   %>;
                       var password=<%= password   %>;
                       
                       var result=confirm("Do you really want to logout from system?");
                  
                  if(result===true) {
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/Administrator/AdminPanelMenu.jsp?username=" +username + "&password=" +password;
                      
                  }
                       
                   }
                   
                   function help() {
                       
                       
                       var sent1="Please make sure to see your User ID to view records and implement other transactions.";
                       var sent2="***Note that User ID will display on exact one time and try to remember*** Other wise problems might occur.";
                       var sent3="You must enter your User ID to implement any transaction.";
                       var sent4="Please be note that uploading profile picture should be done at last after implementing other relevant transaction as this is a separate function. Otherwise problems might occur.";

                      alert(sent1 + "\n \n" +sent2 +"\n \n"+sent3+"\n \n"+sent4);
                       
                   }
               
    
            </script>
            
              
              <%
              
              String txtcheck=request.getParameter("txtcheck"); //For View Records 

              String txtuserid=request.getParameter("txtuserid");
              
              
              BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
              
              
              String provalue=proxy.adminProfile(username);
                  
                          String [] pdisplay=provalue.split("===");
                          
                      out.println("Your UserID:   "+pdisplay[0]); 

               if(request.getParameter("btnview")==null) {
                   
                    request.setAttribute("userid", "  ");
                    request.setAttribute("usern", "  ");
                    request.setAttribute("passw", "  ");
                    request.setAttribute("more", "   ");
                    request.setAttribute("department", "  ");
                    request.setAttribute("url", "  ");
                   
               }
               
              else if(request.getParameter("btnview")!=null) {
                   
                  
                      if(request.getParameter("txtuserid")==null) {
                             
                             out.println("User ID is Required!!!");
                         }
                      
                  else {
                      
                    String result=proxy.searchAdminProfile(txtuserid);
                    
                    
                  
                    String [] display=result.split("===");
              
                    String userid=display[0];
                    String usern=display[1];
                    String passw=display[2];
                    String more=display[3];
                    String department=display[4];
               
                 byte[] image=proxy.adminprofileimage(usern, passw);
                  
                  
                 String url = "data:image/png;base64," + Base64.encode(image);
                   
               
               request.setAttribute("userid", userid);
               request.setAttribute("usern", usern);
               request.setAttribute("passw", passw);
               request.setAttribute("more", more);
               request.setAttribute("department", department);
               request.setAttribute("url", url);
               
                      }
               }
               
                

            %>
        
            
            
         <div id="adminprofile">
            
        ***Please note that be sure to upload pictures after implementing 'update'/any transaction for records. Otherwise problems will occur***
             
            <form>
                
                <h2><b> <font style="color: white"> User Profile </font></b></h2> <br> 
                
                
                <input type="hidden" id="txtheck" name="txtcheck" placeholder="" style="width: 400px" value="<%= username  %>" /> 
                <input type="hidden" id="txtcheckid" name="txtcheckid" placeholder="" style="width: 400px" value="<%= request.getAttribute("userid")  %>" /> 
                
                <center><img src="<%= request.getAttribute("url")  %>" height="300px" width="300px" id="imgprofile" /> </center> <br> <br>
                
                <h3>Upload Profile Picture :    &nbsp; &nbsp; &nbsp;
                    <input type="file" id="fileup" name="fileup" style="width: 400px; height: 35px" /> &nbsp; &nbsp; &nbsp; 
                    
                    <input type="submit" id="btnfileupload" name="btnfileupload" value="SAVE IMAGE" /> 
                
                </h3> <br> <br> 
                
                <h3>Admin ID:    &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtuserid" name="txtuserid" placeholder="" style="width: 400px"  value="<%= request.getAttribute("userid")  %>"   /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                
                <h3>Username:     &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtusername" name="txtusername" placeholder="" style="width: 400px" value="<%= request.getAttribute("usern")  %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                
                <h3>Password:    &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtpassword" name="txtpassword" placeholder="" style="width: 400px"  value="<%= request.getAttribute("passw")  %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                    
                    
                <h3>More Information:   &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtmore" name="txtmore" placeholder="" style="width: 400px"  value="<%= request.getAttribute("more")  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                    
                <h3>Department:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtdepartment" name="txtdepartment" placeholder="" style="width: 400px"  value="<%= request.getAttribute("department")  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> <br>
                    
                    
                 
                
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnview" name="btnview" value="VIEW" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnupdate" name="btnupdate" value="UPDATE" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                
                
            </form>
            
            
        </div>
                    
           <script>
             
             function editusername() {
                 
                 document.getElementById("txtusername").disabled=false;
             }
             
             function editpassword() {
                 
                 document.getElementById("txtpassword").disabled=false;

             }
             
             function editmore() {
                 
                 document.getElementById("txtmore").disabled=false;

             }
             
             function editdepartment() {
                 
                 document.getElementById("txtdepartment").disabled=false;

             }
             
             
         </script> 
             
            
            <%
                
                String txtusername=request.getParameter("txtusername");
                String txtpassword=request.getParameter("txtpassword"); 
                String txtmore=request.getParameter("txtmore"); 
                String txtdepartment=request.getParameter("txtdepartment");
                
                
                
                 if(request.getParameter("btnupdate")!=null) {
                     
                     
                       /*String state=new String("http://localhost:8080/AccommodationSystem/Administrator/AdminProfileModification.jsp?userid=" + userid+ "&username="+usern + "&password=" + passw+ "&more=" + more + "&department=" +department);
                      
                       response.setStatus(response.SC_MOVED_TEMPORARILY);
                       response.setHeader("Location", state);  */
                       
                       
                       String update=proxy.updateAdminProfile(txtuserid, txtusername, txtpassword, txtmore, txtdepartment);
                       
                       
                        out.println(update);
                     
                 }
                 
                 if(request.getParameter("btnfileupload")!=null) {
                     
                     String filevalue=request.getParameter("fileup");
                     
                     String fileupload=proxy.insertadminprofileimage(txtuserid,filevalue);
                     
                     out.println(fileupload);
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
