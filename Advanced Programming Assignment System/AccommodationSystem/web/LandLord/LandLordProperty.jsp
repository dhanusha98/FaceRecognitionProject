<%-- 
    Document   : LandLordProperty
    Created on : 09-Jan-2017, 23:32:39
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
    </head>
    
      <style>
            
            body{
                
                
                 background-image: url(http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background.jpg);
            }
            
            #manageproperty {
                
                 
                 height: 2000px;
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
            
            #manageproperty input[type="text"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                 font-size: 16px;

            
            }
            
            #manageproperty input[type="password"] {
                
                width:350px;
                height:35px;
                border:0;
                border-radius: 5px;
                -webkit-border-radius: 5px;
                -o-border-radius:5px;
                -moz-border-radius:5px;
                font-size: 16px;

            
            }
            
            #manageproperty input[type="submit"] {
                
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
            
            
            #manageproperty input[type="reset"] {
                
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
            
            #manageproperty input[type="submit"]:hover{
                
                  background-color: red;

                
            }
            
            #manageproperty input[type="reset"]:hover{
                
                
                 background-color: red;

            }
            
            #manageproperty imgproperty {
                
                
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
        
    <body>  
        
        
         <script>
              
              function onview() {
              
              if(document.getElementById("txtpropertyid").value==="") {
                  
                  
                       alert("Enter Property ID");
              }
              
    }
              
          </script>
          
          <%
              
              String imgprofile=" ";
              String imgprofile2=" ";
              String imgprofile3=" ";
              String txtid=request.getParameter("txtid");
              String txtname=request.getParameter("txtname");
              String txtproptype=request.getParameter("txtproptype");
              String txtmoredetails=request.getParameter("txtmoredetails");
              String LandLordID=request.getParameter("txtlandlordid");
              
              
              String username=request.getParameter("username");
              String password=request.getParameter("password");
              
              
              BusinessLogicService proxy=new BusinessLogicService_Service().getBusinessLogicServicePort();
              
                String text=proxy.landLordProfile(username);
                
                String [] textdisplay=text.split("==="); 
                 
                      String userid=textdisplay[0];
                      
                String val=proxy.landLordPropertydetails(userid);
               
                   
                   //String [] display=val.split(", ");
                   
            if(request.getParameter("btnreset")!=null) {
                
                
                request.setAttribute("propertyid", " ");
                request.setAttribute("propname", " ");
                request.setAttribute("type", " ");
                request.setAttribute("more", "  ");
                request.setAttribute("landlordid", "  ");
              
            }
            
            if(request.getParameter("btnsearch")==null) {
                
                
                request.setAttribute("propertyid", " ");
                request.setAttribute("propname", " ");
                request.setAttribute("type", " ");
                request.setAttribute("more", "  ");
                request.setAttribute("landlordid", "  ");
              
            }
            
            else if(request.getParameter("btnsearch")!=null) {
                
                if(request.getParameter("txtid")==null) {
                    
                       out.println("Property ID is not entered!");
                }
                
                else {
                    
                
                String propid=request.getParameter("txtid");
                
                String arr=proxy.propertydetails(propid);
                
                String [] tdisplay=arr.split("===");
                
                      request.setAttribute("propertyid", tdisplay[0]);
                      request.setAttribute("propname", tdisplay[1]);
                      request.setAttribute("type", tdisplay[2]);
                      request.setAttribute("more", tdisplay[3]);
                      request.setAttribute("landlordid", tdisplay[4]);

                
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
                       
                       
                       var sent1="***Note that your properties' IDs will display under 'Search Properties Based on these Identities' text box and *display only one time. Make sure to remember. Otherwise problems might occur****.";
                       var sent2="Provide only Property ID to view property details.";
                       var sent3="Please be note that uploading property pictures should be done at last after implementing other relevant transaction as this is a separate function. When inserting images, make sure to provide Property ID. Otherwise problems might occur.";
                       var sent4="In order to 'INSERT' records, you must provide information for all the fields except 'Property ID'.";
                       var sent5="In order to 'UPDATE' records, you must provide information for 'Property ID' and other relevant required fields.";
                       var sent6="In order to 'DELETE' records, you must provide only 'Property ID'. Otherwise problems may occur";;
                       var sent7="Click 'BACK' button to navigate to Main Menu if necessary";

                       
                       alert(sent1 + "\n \n" +sent2 + "\n \n" +sent3 + "\n \n" +sent4 + "\n \n" +sent5 + "\n \n" +sent6 + "\n \n" +sent7);
                   }
    
            </script>
            
              
                <h3>Search Properties Based on these Identities:   &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtids" name="txtids" placeholder="" style="width: 400px; height: 70px" value="<%= val  %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> <br>
        
        
         <div id="manageproperty">
            
    ***Please note that be sure to upload pictures after implementing 'update'/any transaction for records. Otherwise problems will occur***

             <form onsubmit="onview()">
                

                <center><h2><b> <font style="color: white"> Property Details and Maintenance </font></b></h2> </center> <br> 
                
              <img src="<%= request.getAttribute("propimg1")  %>" height="400px" width="400px" id="imgprofile" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              <img src="<%= request.getAttribute("propimg2")  %>" height="400px" width="400px" id="imgprofile2" /> <br> <br> <br> &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
              <img src="<%= request.getAttribute("propimg3")  %>" height="400px" width="400px" id="imgprofile3" />  <br> <br> <br> 
             
                <h3>Upload Property Image 1 :    &nbsp; &nbsp; &nbsp;
                    <input type="file" id="fileup" name="fileup" style="width: 400px; height: 35px" /> &nbsp; &nbsp; &nbsp; 
                    
                    <input type="submit" id="btnfileupload" name="btnfileupload" value="SAVE IMAGE" /> 
                
                </h3> <br> <br> 
                
                  <h3>Upload Property Image 2:    &nbsp; &nbsp; &nbsp;
                    <input type="file" id="fileup2" name="fileup2" style="width: 400px; height: 35px" /> &nbsp; &nbsp; &nbsp; 
                    
                    <input type="submit" id="btnfileupload2" name="btnfileupload2" value="SAVE IMAGE" /> 
                
                </h3> <br> <br> 
                
                  <h3>Upload Property Image 3 :    &nbsp; &nbsp; &nbsp;
                    <input type="file" id="fileup3" name="fileup3" style="width: 400px; height: 35px" /> &nbsp; &nbsp; &nbsp; 
                    
                    <input type="submit" id="btnfileupload3" name="btnfileupload3" value="SAVE IMAGE" /> 
                
                </h3> <br> <br> 
              
                <h3>Property ID:     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtid" name="txtid" placeholder="" style="width: 500px" value="<%= request.getAttribute("propertyid")   %>"  />  
                    
                </h3> <br> 
                
                <h3>Name:     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtname" name="txtname" placeholder="" style="width: 500px" value="<%= request.getAttribute("propname")   %>"  />  
                    
                </h3> <br> 
                
                <h3>Property Type:    &nbsp;  &nbsp; &nbsp;
                    <input type="text" id="txtproptype" name="txtproptype" placeholder="" style="width: 500px" value="<%= request.getAttribute("type")   %>" /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                    
                    
                <h3>More Details: &nbsp; &nbsp; &nbsp; &nbsp;
                    <input type="text" id="txtmoredetails" name="txtmoredetails" placeholder="" style="width: 500px" value="<%= request.getAttribute("more")   %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> 
                    
                <h3>Land Lord ID:   &nbsp; &nbsp; &nbsp;   
                    <input type="text" id="txtlandlordid" name="txtlandlordid" placeholder="" style="width: 500px" value="<%= request.getAttribute("landlordid")   %>"  /> &nbsp; &nbsp; &nbsp; 
                    
                
                </h3> <br> <br> <br>
                    
               
                
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btnsearch" name="btnsearch" value="SEARCH" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btninsert" name="btninsert" value="INSERT" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <input type="submit" id="btnupdate" name="btnupdate" value="UPDATE" /> <br> <br> <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" id="btndelete" name="btndelete" value="DELETE" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

                <input type="reset" id="btnreset" name="btnreset" value="RESET" />
                
                
            </form>
            
             
         
            
        </div>
                    
        <%
                    
               if(request.getParameter("btninsert")!=null) {
                   
                   
                   String insert=proxy.insertProperty(txtname, txtproptype, txtmoredetails, imgprofile, imgprofile2, imgprofile3 , LandLordID);
                   
                   
                   out.println(insert);
                   
               }
      
               else if(request.getParameter("btnupdate")!=null) {
                   
                   
                  String update=proxy.updateProperty(txtid, txtname, txtproptype, txtmoredetails, LandLordID);
                   
                  out.println(update);
                   
               }
               
               else if(request.getParameter("btndelete")!=null) {
                   
                   String delete=proxy.deleteProperty(txtid);
                   
                   out.println(delete);
                   
               }
                    
              if(request.getParameter("btnfileupload")!=null) {
                  
                  
                  String filevalue=request.getParameter("fileup");
                  
                  String fileupload1=proxy.insertfirstpropertyimage(txtid, filevalue);
                  
                  out.println("Image 1:   "+fileupload1);
              }  
              
               if(request.getParameter("btnfileupload2")!=null) {
                  
                  String filevalue2=request.getParameter("fileup2");

                  String fileupload2=proxy.insertsecondpropertyimage(txtid, filevalue2);
                  
                  out.println("Image 2:   "+fileupload2);
              }  
               
               if(request.getParameter("btnfileupload3")!=null) {
                  
                  String filevalue3=request.getParameter("fileup3");

                  String fileupload3=proxy.insertthirdpropertyimage(txtid, filevalue3);
                  
                  out.println("Image 3:   "+fileupload3);
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
