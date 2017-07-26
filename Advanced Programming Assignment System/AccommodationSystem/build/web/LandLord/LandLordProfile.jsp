<%-- 
    Document   : LandLordProfile
    Created on : 09-Jan-2017, 23:31:47
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
            
            #landlordprofile {
                
                 
                 height: 1500px;
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
            
            #landlordprofile input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #landlordprofile input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #landlordprofile input[type="submit"] {
                
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
            
            #landlordprofile input[type="reset"] {
                
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
            
            #landlordprofile input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #landlordprofile input[type="reset"]:hover{
                
                
                 background-color: red;

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
            
            String txtuserid=request.getParameter("txtuserid");

            BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
            
          
            
                      String prof=proxy.landLordProfile(username);
                      
                              String [] trdisplay=prof.split("===");
                              
                         
                         out.println("Your User ID:   "+trdisplay[0] + "<br>");
            
                
                if(request.getParameter("btnview")==null) {
                    
                      request.setAttribute("userid", " ");
                      request.setAttribute("usern", " ");
                      request.setAttribute("passw", " ");
                      request.setAttribute("fullname", " ");
                      request.setAttribute("contact", " ");
                      request.setAttribute("address", " "); 
                      request.setAttribute("otherdetails", " ");
                      request.setAttribute("url", " ");

                }
                
                
                else if(request.getParameter("btnview")!=null) {
                    
                         if(request.getParameter("txtuserid")==null) {
                             
                             out.println("User ID is Required!!!");
                         }
                     
                         else {    
                         
                      String proval=proxy.searchLandLordProfile(txtuserid);
            
                      String [] display=proval.split("===");
                      
                       String userid=display[0];
                       String usern=display[1];
                       String passw=display[2];
                       String fullname=display[3];
                       String contact=display[4];
                       String address=display[5];
                       String otherdetails=display[6];

            
                      byte[] image=proxy.landlordprofileimage(usern, passw);
                  
                  
                      String url = "data:image/png;base64," + Base64.encode(image);
                
                    
                      request.setAttribute("userid", userid);
                      request.setAttribute("usern", usern);
                      request.setAttribute("passw", passw);
                      request.setAttribute("fullname", fullname);
                      request.setAttribute("contact", contact); 
                      request.setAttribute("address", address); 
                      request.setAttribute("otherdetails", otherdetails);
                      request.setAttribute("url", url);

                    }
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
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/LandLord/LandLordMainMenu.jsp?username=" +username + "&password=" +password;
                      
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
            
         <div id="landlordprofile">
            
       ***Please note that be sure to upload pictures after implementing 'update'/any transaction for records. Otherwise problems will occur***
             
            <form>
                
                <h2><b> <font style="color: white"> User Profile </font></b></h2> <br> 
                
                <center><img src="<%= request.getAttribute("url")  %>" height="300px" width="300px" id="imgprofile" /> </center> <br> <br>
                
                <h3>Upload Profile Picture :    &nbsp; &nbsp; &nbsp;
                    <input type="file" id="fileup" name="fileup" style="width: 400px; height: 35px" /> &nbsp; &nbsp; &nbsp; 
                    
                    <input type="submit" id="btnfileupload" name="btnfileupload" value="SAVE IMAGE" /> 
                
                </h3> <br> <br> 
                
                <h3>LandLord ID:    &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtuserid" name="txtuserid" placeholder="" style="width: 400px"  value="<%= request.getAttribute("userid")  %>"   /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                
                <h3>Username:    &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtusername" name="txtusername" placeholder="" style="width: 400px" value="<%= request.getAttribute("usern")   %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                
                <h3>Password:   &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtpassword" name="txtpassword" placeholder="" style="width: 400px" value="<%= request.getAttribute("passw")   %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                    
                    
                <h3>Name:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtfullname" name="txtfullname" placeholder="" style="width: 400px" value="<%= request.getAttribute("fullname")   %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                    
                <h3>Contact:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtcontact" name="txtcontact" placeholder="" style="width: 400px" value="<%= request.getAttribute("contact")   %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                    
                    
                <h3>Address:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtaddress" name="txtaddress" placeholder="" style="width: 400px" value="<%= request.getAttribute("address")   %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                
                </h3> <br> <br>
                    
                 <h3>Other Details:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                     <input type="text" id="txtother" name="txtother" placeholder="" style="width: 400px" value="<%= request.getAttribute("otherdetails")   %>" /> &nbsp; &nbsp; &nbsp; 
                    
                 
                 </h3> 
                    
                    <br> <br> <br>  
                
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnview" name="btnview" value="VIEW" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnupdate" name="btnupdate" value="UPDATE" />
                
                
            </form>
            
            
        </div>
                     
            <%
                         
                String txtusername=request.getParameter("txtusername");
                String txtpassword=request.getParameter("txtpassword");
                String txtfullname=request.getParameter("txtfullname");
                String txtcontact=request.getParameter("txtcontact");
                String txtaddress=request.getParameter("txtaddress");
                String txtotherdetails=request.getParameter("txtother");
            
                 if(request.getParameter("btnupdate")!=null) {
                     
                     String update=proxy.updateLandLordProfile(txtuserid, txtusername, txtpassword, txtfullname, txtcontact, txtaddress, txtotherdetails);
                   
                     out.println(update);
                 }   
                        
                 if(request.getParameter("btnfileupload")!=null) {
                     
                     String filevalue=request.getParameter("fileup"); 
                     
                     String fileupload=proxy.insertlandlordprofileimage(txtuserid,filevalue);
                     
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
