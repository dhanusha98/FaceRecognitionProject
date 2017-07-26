<%-- 
    Document   : ViewPropertyFunction
    Created on : 09-Jan-2017, 23:28:11
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
            
            #propertyfunction {
                
                 
                 height: 1700px;
                 width:  1100px;
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
            
            #propertyfunction input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #propertyfunction input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #propertyfunction input[type="submit"] {
                
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
            
            
            #propertyfunction input[type="reset"] {
                
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
            
            #propertyfunction input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #propertyfunction input[type="reset"]:hover{
                
                
                 background-color: red;

            }
            
            #propertyfunction imgprofile {
                
                
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
            
            BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
            
            String show=proxy.displayallPropertyID();
            
           /* String [] showdis=show.split(", ");

               String show1=showdis[0];
               String show2=showdis[1];
               String show3=showdis[2];
             
            */
          
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
                      
                   
                   location.href="http://localhost:8080/AccommodationSystem/Student/StudentMainMenu.jsp?username=" +username + "&password=" +password;
                      
                  }
                       
                   }
                   
                    function help() {
                       
                       
                       var sent1="***Note that all available Property IDs will display under 'Search Properties Based on these Identities' text field. View Property details by providing relevant ID and click view button***";
                       var sent2="Click 'BACK' button to navigate to Main Menu if necessary.";

                      alert(sent1 + "\n \n" +sent2);
                       
                   }
               
    
            </script>
            
        
              <h3>Search Properties Based on these Identities:   &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtids" name="txtids" placeholder="" style="width: 400px; height: 70px" value="<%= show %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> <br>
        
          <script>
              
              function onview() {
              
              if(document.getElementById("txtpropertyid").value==="") {
                  
                  
                       alert("Enter Property ID");
              }
              
    }
              
          </script>
                
         <%
         
             
             
                
           if(request.getParameter("btnview")==null) {
             
              request.setAttribute("propertyid", " ");
              request.setAttribute("propname", " ");
              request.setAttribute("type", " ");
              request.setAttribute("more", "  ");
              request.setAttribute("landlordid", "  ");
              
         } 
                
           if(request.getParameter("btnview")!=null) {
                
               
               
                /*String propid=request.getParameter("txtpropertyid");
                
                String arr=proxy.propertydetails(propid);
                
                if(arr.equalsIgnoreCase("Enter PropertyID to View results!")) {
                    
                    
                    request.setAttribute("propertyid", "   ");
                      request.setAttribute("propname", "   ");
                      request.setAttribute("type", " ");
                      request.setAttribute("more", "  ");
                      request.setAttribute("landlordid", "  ");
                      
                      
                    out.println("Enter PropertyID to View results!");
                }
               
                else { */
              
              String propid=request.getParameter("txtpropertyid");
                
                String arr=proxy.propertydetails(propid);
                
                String [] display=arr.split("===");
                
                      request.setAttribute("propertyid", display[0]);
                      request.setAttribute("propname", display[1]);
                      request.setAttribute("type", display[2]);
                      request.setAttribute("more", display[3]);
                      request.setAttribute("landlordid", display[4]);

                
                     byte[] image=proxy.propertyimage(propid);
                      
                     String url="data:image/png;base64," +Base64.encode(image);
                     
                     
                     byte[] image2=proxy.secondpropertyimage(propid);
                      
                     String url2="data:image/png;base64," +Base64.encode(image2);
                     
                     byte[] image3=proxy.thirdpropertyimage(propid);
                      
                     String url3="data:image/png;base64," +Base64.encode(image3);
                     
                     
                      request.setAttribute("propimg1", url);
                      request.setAttribute("propimg2", url2);
                      request.setAttribute("propimg3", url3);
                      
                }
                      
                
         %>
          
         
           <div id="propertyfunction">
               
                
            
               <form onsubmit="onview()">
                   
                   <input type="hidden" id="txtusercheck" name="txtusercheck" placeholder="" style="width: 800px" value="" /> 
               <input type="hidden" id="txtpasscheck" name="txtpasscheck" placeholder="" style="width: 800px" value=""/>
                   
                <center> <h2><b> <font style="color: white"> Properties </font></b></h2> </center> <br> 
                
                <img src="<%= request.getAttribute("propimg1")  %>" height="400px" width="400px" id="imgprofile" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              <img src="<%= request.getAttribute("propimg2")  %>" height="400px" width="400px" id="imgprofile2" /> <br> <br> <br> &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
              <img src="<%= request.getAttribute("propimg3")  %>" height="400px" width="400px" id="imgprofile3" />  <br> <br> <br>
 
                
                
                <h3>Property ID:     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtpropertyid" name="txtpropertyid" placeholder="" style="width: 800px" value="<%= request.getAttribute("propertyid") %>" />  &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                
                <h3>Property Name:    &nbsp; &nbsp;
                    <input type="text" id="txtpropertyname" name="txtpropertyname" placeholder="" style="width: 800px" disabled="true" value="<%= request.getAttribute("propname")  %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                    
                    
                <h3>Property Type:   &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txttype" name="txttype" placeholder="" style="width: 800px" disabled="true" value="<%= request.getAttribute("type")  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> 
                    
                <h3>More details:   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                    <input type="text" id="txtmore" name="txtmore" placeholder="" style="width: 800px" disabled="true" value="<%= request.getAttribute("more")   %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> <br>
                    
                <h3>Land Lord ID:   &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtlandlordid" name="txtlandlordid" placeholder="" style="width: 800px" disabled="true" value="<%= request.getAttribute("landlordid")   %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> <br>
                        
                 
                
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnview" name="btnview" value="VIEW" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                
                <input type="submit" id="btnrequest" name="btnrequest" value="SEND REQUEST" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                
                
            </form>
            
            
          
        </div>
        
        <script>
                        
            var usname="<%= username   %>";
            var upass="<%= password    %>";
            
            window.name=usname;
            window.name=upass;
            
            document.getElementById("txtusercheck").value=usname;
            document.getElementById("txtpasscheck").value=upass;
                        
        </script>
                    
         <%
         
           if(request.getParameter("btnrequest")!=null) {
               
               String propid=request.getParameter("txtpropertyid");
               String landlordid=request.getParameter("txtlandlordid");
               
               String txtusername=request.getParameter("txtusercheck");
               String txtpassword=request.getParameter("txtpasscheck");
               
               String tval="Regarding Property Request. Property ID:   "; 
               
               String state= new String("http://localhost:8080/AccommodationSystem/Student/ReplicationForm.jsp?purpose=" + tval + "&PropertyID=" + propid + "&LandLordID=" + landlordid + "&username=" +txtusername + "&password=" +txtpassword);
               
               response.setStatus(response.SC_MOVED_TEMPORARILY);
               
               response.setHeader("Location", state);
               
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
