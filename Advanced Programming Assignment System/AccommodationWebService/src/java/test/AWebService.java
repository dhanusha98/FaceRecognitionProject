/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.sql.*;
import systemfiles.*;
import java.util.*;
import java.io.*;
/**
 *
 * @author BANDULA
 */
@WebService(serviceName = "AWebService")
public class AWebService {

    /**
     * This is a sample web service operation
     */
   
     
     systemfiles.landlord landlord=new systemfiles.landlord();
     
     systemfiles.useraccounts stud=new systemfiles.student();
     
     systemfiles.administrator admin=systemfiles.administrator.getinstance();
             
     
     
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    
    //Data Access Layer
    
    public Connection conn;
    public PreparedStatement c;
    Statement sc;
    public ResultSet rk;
    String sql;
           
    public String databaseconnection() {
        
        
       String url="jdbc:mysql://localhost/apdatabase";
       String user="root";
       String pass="";
       
      String test;
       try {
           
           Class.forName("com.mysql.jdbc.Driver");
           conn=DriverManager.getConnection(url,user,pass);
           
            test="Connected to the Database!!!" ;         
            
            sc=conn.createStatement();
       }
       
       catch(Exception e) {
           
             
             test="ERROR:   "+e;
       }
       
       return test;
        
    }
    
    public String entrancelogin(String username, String password) {
        
        
        String test="";
        try {
            
            sql="SELECT * FROM entrancelogin WHERE EntranceUsername=? and EntrancePassword=?";
            
            c=conn.prepareStatement(sql);
            
          c.setString(1, username);
           c.setString(2, password);
            
           rk=c.executeQuery();
           
           if(rk.next()) {
               
               test="LOGIN SUCCESSFUL!";
           }
           
           else {
               
               test="INCORRECT USER AUTHENTICATIONS";
           }
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
       
        return test;
    }
    
     public String studentlogin(String username, String password) {
        
        
        String test="";
        try {
            
            sql="SELECT * FROM student WHERE StudentUsername=? and StudentPassword=?";
            
            c=conn.prepareStatement(sql);
            
          c.setString(1, username);
           c.setString(2, password);
            
           rk=c.executeQuery();
           
           if(rk.next()) {
               
               test="LOGIN SUCCESSFUL!";
           }
           
           else {
               
               test="INCORRECT USER AUTHENTICATIONS";
           }
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
       
        return test;
    }
    
    public String landlordlogin(String username, String password) {
        
        
        String test="";
        try {
            
            sql="SELECT * FROM landlord WHERE LUsername=? and LPassword=?";
            
            c=conn.prepareStatement(sql);
            
          c.setString(1, username);
           c.setString(2, password);
            
           rk=c.executeQuery();
           
           if(rk.next()) {
               
               test="LOGIN SUCCESSFUL!";
           }
           
           else {
               
               test="INCORRECT USER AUTHENTICATIONS";
           }
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
       
        return test;
    }
    
    public String adminlogin(String username, String password) {
        
        
        admin.setAdminUsername(username);
        admin.setAdminPassword(password);
        
        String test="";
        
        try {
            
            sql="SELECT * FROM administrator WHERE AdminUsername=? and AdminPassword=?";
            
            c=conn.prepareStatement(sql);
            
          c.setString(1, admin.getAdminUsername());
           c.setString(2, admin.getAdminPassword());
            
           rk=c.executeQuery();
           
           if(rk.next()) {
               
               test="LOGIN SUCCESSFUL!";
           }
           
           else {
               
               test="INCORRECT USER AUTHENTICATIONS";
           }
        }
        
        catch(SQLException ex) {
            
            test="ERROR:  "+ex;
        }
        
       
        return test;
    }
    
    public String StudentSignUp(String Username, String Password, String Name, String contact, String address, String image) {
        
            stud.setUsername(Username);
            stud.setPassword(Password);
            stud.setName(Name);
            stud.setContact(Integer.parseInt(contact));
            stud.setAddress(address);
            
            
            String test="";
            
            String sql="";
            int x;
            
            int id=0;
            
            String searchsql;

            searchsql="SELECT * FROM student WHERE StudentUsername=?";
            
            
            sql="INSERT INTO student VALUES ("+id+",'"+stud.getUsername()+"', '"+stud.getPassword()+"', '"+stud.getName()+"', "+stud.getContact()+", '"+stud.getAddress()+"', '"+image+"')";

            
            try {
                
                c=conn.prepareStatement(searchsql);
                
                c.setString(1, Username);
                
                rk=c.executeQuery();
                 
                 if(rk.next()) {
                     
                         
                          test="Entered Username Already Exists. Register with Different Username!!!!";
                     }
                     
                 else {
                         
                         x=sc.executeUpdate(sql);
                
                         if(x==1) {
                    
                              test="Successfully Registered!";
                          }
                
                          else {
                    
                              test="Unable to Register";
                          }
                         
                     }
                 
                
            }
            
            catch(SQLException ex) {
                
                test="ERROR:   "+ex;
                
            }
            
            return test;
    }
    
    public String LandLordSignUp(String Username, String Password, String fullname, String contact, String address, String Otherdetails, String image) {
        
        landlord.setUsername(Username);
        landlord.setPassword(Password);
        landlord.setName(fullname);
        landlord.setContact(Integer.parseInt(contact));
        landlord.setAddress(address);
        landlord.setOther(Otherdetails);
        
        String test="";
        int x;
        int id=0;
        
        String sql="";
        String searchsql;
        
        searchsql="SELECT * FROM landlord WHERE LUsername=?";
        
            sql="INSERT INTO landlord VALUES ("+id+",'"+landlord.getUsername()+"', '"+landlord.getPassword()+"', '"+landlord.getName()+"', "+landlord.getContact()+", '"+landlord.getAddress()+"', '"+landlord.getOther()+"', '"+image+"')"; 

        try {
                
                c=conn.prepareStatement(searchsql);
                
                c.setString(1, Username);
                
                rk=c.executeQuery();
                 
                 if(rk.next()) {
                     
                         
                          test="Entered Username Already Exists. Register with Different Username!!!!";
                     }
                     
                 else {
                         
                         x=sc.executeUpdate(sql);
                
                         if(x==1) {
                    
                              test="Successfully Registered!";
                          }
                
                          else {
                    
                              test="Unable to Register";
                          }
                         
                     }
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String AdminSignUp(String AdminUsername, String AdminPassword, String Moreinformation, String Department, String image) {
        
        
        admin.setAdminUsername(AdminUsername);
        admin.setAdminPassword(AdminPassword);
        admin.setMore(Moreinformation);
        admin.setDepartment(Department);
        admin.setMore(Moreinformation);
        
        
        
       
        String test="";
        int x;
        int id=0;
        String sql="";
        String searchsql;
        
        searchsql="SELECT * FROM administrator WHERE AdminUsername=?";
        
           sql="INSERT INTO administrator VALUES ("+id+",'"+admin.getAdminUsername()+"', '"+admin.getAdminPassword()+"', '"+admin.getMore()+"', '"+admin.getDepartment()+"', '"+image+"')";
        
        try {
            
            c=conn.prepareStatement(searchsql);
            
            c.setString(1, AdminUsername);
            
            rk=c.executeQuery();
            
            if(rk.next()) {
                
                test="Entered Username Already Exists. Register with Different Username!!!!";
            }
            
            else {
                
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                  test="Successfully Registered!";
            }
            
            else {
                
                test="Registration Failed";
            }
            
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
        String test;
    public String searchStudentID(String Username, String Password) {
        
        //This transaction is to get profile information based on Student ID
        
        String sql;
        //String test="";
        
        sql="SELECT * FROM student WHERE StudentUsername='"+Username+"' and StudentPassword='"+Password+"'";
        
        try {
            
            ResultSet rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                
               test=rk.getString("StudentID");
                
               
            }
            
            else {
                
                test="Not Found";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
        
        return test;
    }
    
     public String searchLandLordID(String Username, String Password) {
        
        //This transaction is to get profile information based on Student ID
        
        String sql;
        //String test="";
        
        sql="SELECT * FROM landlord WHERE LUsername='"+Username+"' and LPassword='"+Password+"'";
        
        try {
            
            ResultSet rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                
               test=rk.getString(1);
                
               
            }
            
            else {
                
                test="Not Found";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
        
        return test;
    }
    
    public String updateStudentProfile(String id, String Username, String Password, String Name, String Contact, String Address) {
        
        
                        //This transaction is to update user details of student profiles to view them

        String sql="";
        int x;
        
        sql="UPDATE student SET StudentUsername='"+Username+"', StudentPassword='"+Password+"', StudentName='"+Name+"', Contact="+Contact+", Address='"+Address+"' WHERE StudentID="+id+"";
        
        
        try {
            
           x=sc.executeUpdate(sql);
           
           if(x==1) {
               
                  test="Successfully Updated";
           }
           
           else {
               
               test="Updation Failed";
           }
        }
        
        catch(SQLException ex) {
            
            test="ERROR:   "+ex;
        }
        
       return test;
    }
   
    
    public String notification() {
        
        //This method created to display messages in the web service to outside classes (Presentation Layer)
        
        return test;
    }
    
    
    public String StudentProfile(String Username, String Password) {
        
                //This transaction is to get user details of student profiles to view them
                
        String sql;
        
        
        String test="";
        
        try {
            
           sql="SELECT * FROM student WHERE StudentUsername='"+Username+"'";

           ResultSet rk=sc.executeQuery(sql);

            if(rk.next()) {
                
                
               test=rk.getString(1) + "==="+rk.getString(2) +"==="+ rk.getString(3) + "==="+rk.getString(4) + "==="+rk.getString(5) + "===" +rk.getString(6);
               
            }
            
            else {
                
                test="NOT FOUND!!!";
            }
            
           
        }

        catch(Exception ex) {
            
            test="ERROR:   "+ex;
            
            

        }
        
        return test;
    }
    
     public String SearchStudentProfile(String id) {
        
                //This transaction is to get user details of student profiles to view them
                
        String sql;
        
        
        String test="";
        
        try {
            
           sql="SELECT * FROM student WHERE StudentID="+id+"";

           ResultSet rk=sc.executeQuery(sql);

            if(rk.next()) {
                
                
               test=rk.getString(1) + "==="+rk.getString(2) +"==="+ rk.getString(3) + "==="+rk.getString(4) + "==="+rk.getString(5) + "===" +rk.getString(6);
               
            }
            
            else {
                
                test="NOT FOUND!!!";
            }
            
           
        }

        catch(Exception ex) {
            
            test="ERROR:   "+ex;
            
            

        }
        
        return test;
    }
    
    public byte[] studentprofileimage(String Username, String Password) {
        
       
         String sql;
         String test;
         
         ResultSet rs;
         
         byte image[]={};
         
         sql="SELECT * FROM student WHERE StudentUsername=? and StudentPassword=?";
         try {
             
             c=conn.prepareStatement(sql);
             
             c.setString(1, Username);
             c.setString(2, Password);
             
             rk=c.executeQuery();
             
             if(rk.next()) {
                 
                   byte imagearray[]=rk.getBytes(7);
                   
                   image=imagearray;
             }
             
         }
         
         catch(Exception ex) {
             
             test="ERROR:   "+ex;
         }
         
         return image;
    }
    
   /* public String insertstudentprofileimage(Part filepart, String id) {
        
        
        
        InputStream inputstream=null;
        
       Part part=filepart;
       
      int x;
      
       try {
           
            inputstream=part.getInputStream();   
            
             ByteArrayOutputStream bous=new ByteArrayOutputStream();
       
              byte buf[] =new byte[8192];
       
             int qt=0;
             
             while((qt=inputstream.read(buf))!=-1) {
                 
                    bous.write(buf,0,qt);
             }
             
             String fileval=bous.toString();
             
             sql="UPDATE student SET StudentImage='"+fileval+"' WHERE StudentID="+id+"";
             
             try {
                 
                 x=sc.executeUpdate(sql);
                 
                 if(x==1) {
                                    
                       test="Image Uploaded!";
                 }
                 
                 else {
                     
                       test="Image is not Uploaded!";
                 }
                 
             }
             
             catch(Exception ex) {
                 
                 test="ERROR:   "+ex;
             }
       
       }
       catch(Exception ex) {
           
             test="ERROR:   "+ex;
       }
        
       return test;
    } */
    
    public String insertstudentprofileimage(String id, String file) {
        
        FileInputStream fis=null;
        PreparedStatement ps=null;
        
        byte [] displayimage=null;
        //sql="UPDATE student SET StudentImage=? WHERE StudentID=?";
        try {
            
            conn.setAutoCommit(false);
            
            File f=new File(file);
            
            fis=new FileInputStream(f);
            
            ByteArrayOutputStream bos=new ByteArrayOutputStream();
            
            byte  buff[]=new byte[1024];
            
            for (int readNum; (readNum = fis.read(buff)) != -1;) {
            
                  bos.write(buff, 0, readNum);
            
             }

              displayimage=bos.toByteArray();
              
              try {
                  
                   sql="UPDATE student SET StudentImage=? WHERE StudentID=?";
                   
                   c=conn.prepareStatement(sql);
                   
                   c.setBytes(1, displayimage);
                   c.setString(2, id);
                   int x=c.executeUpdate();
                   
                   if(x==1) {
                       
                       test="Image is Uploaded!";
                   }
                   
                   else {
                       
                       test="Image is Not Uploaded!";
                   }
                  
              }
              
              catch(Exception ex) {
                  
                  test="ERROR:   "+ex;
              }
        }
        
        catch(Exception ex) {
            
              test="ERROR:  "+ex;
        }
        
        return test;
    }
    
     public String insertlandlordprofileimage(String id, String file) {
        
        FileInputStream fis=null;
        PreparedStatement ps=null;
        
        byte [] displayimage=null;
        //sql="UPDATE student SET StudentImage=? WHERE StudentID=?";
        try {
            
            conn.setAutoCommit(false);
            
            File f=new File(file);
            
            fis=new FileInputStream(f);
            
            ByteArrayOutputStream bos=new ByteArrayOutputStream();
            
            byte  buff[]=new byte[1024];
            
            for (int readNum; (readNum = fis.read(buff)) != -1;) {
            
                  bos.write(buff, 0, readNum);
            
             }

              displayimage=bos.toByteArray();
              
              try {
                  
                   sql="UPDATE landlord SET LandLordImage=? WHERE LandLordID=?";
                   
                   c=conn.prepareStatement(sql);
                   
                   c.setBytes(1, displayimage);
                   c.setString(2, id);
                   int x=c.executeUpdate();
                   
                   if(x==1) {
                       
                       test="Image is Uploaded!";
                   }
                   
                   else {
                       
                       test="Image is Not Uploaded!";
                   }
                  
              }
              
              catch(Exception ex) {
                  
                  test="ERROR:   "+ex;
              }
        }
        
        catch(Exception ex) {
            
              test="ERROR:  "+ex;
        }
        
        return test;
    }
     
      public String insertadminprofileimage(String id, String file) {
        
        FileInputStream fis=null;
        PreparedStatement ps=null;
        
        byte [] displayimage=null;
        //sql="UPDATE student SET StudentImage=? WHERE StudentID=?";
        try {
            
            conn.setAutoCommit(false);
            
            File f=new File(file);
            
            fis=new FileInputStream(f);
            
            ByteArrayOutputStream bos=new ByteArrayOutputStream();
            
            byte  buff[]=new byte[1024];
            
            for (int readNum; (readNum = fis.read(buff)) != -1;) {
            
                  bos.write(buff, 0, readNum);
            
             }

              displayimage=bos.toByteArray();
              
              try {
                  
                   sql="UPDATE administrator SET AdminImage=? WHERE AdminID=?";
                   
                   c=conn.prepareStatement(sql);
                   
                   c.setBytes(1, displayimage);
                   c.setString(2, id);
                   int x=c.executeUpdate();
                   
                   if(x==1) {
                       
                       test="Image is Uploaded!";
                   }
                   
                   else {
                       
                       test="Image is Not Uploaded!";
                   }
                  
              }
              
              catch(Exception ex) {
                  
                  test="ERROR:   "+ex;
              }
        }
        
        catch(Exception ex) {
            
              test="ERROR:  "+ex;
        }
        
        return test;
    }
      
     public String insertfirstpropertyimage(String id, String file) {
        
        FileInputStream fis=null;
        PreparedStatement ps=null;
        
        byte [] displayimage=null;
        //sql="UPDATE student SET StudentImage=? WHERE StudentID=?";
        try {
            
            conn.setAutoCommit(false);
            
            File f=new File(file);
            
            fis=new FileInputStream(f);
            
            ByteArrayOutputStream bos=new ByteArrayOutputStream();
            
            byte  buff[]=new byte[1024];
            
            for (int readNum; (readNum = fis.read(buff)) != -1;) {
            
                  bos.write(buff, 0, readNum);
            
             }

              displayimage=bos.toByteArray();
              
              try {
                  
                   sql="UPDATE property SET PropImage=? WHERE PropertyID=?";
                   
                   c=conn.prepareStatement(sql);
                   
                   c.setBytes(1, displayimage);
                   c.setString(2, id);
                   int x=c.executeUpdate();
                   
                   if(x==1) {
                       
                       test="Image is Uploaded!";
                   }
                   
                   else {
                       
                       test="Image is Not Uploaded!";
                   }
                  
              }
              
              catch(Exception ex) {
                  
                  test="ERROR:   "+ex;
              }
        }
        
        catch(Exception ex) {
            
              test="ERROR:  "+ex;
        }
        
        return test;
    }
     
      public String insertsecondpropertyimage(String id, String file) {
        
        FileInputStream fis=null;
        PreparedStatement ps=null;
        
        byte [] displayimage=null;
        //sql="UPDATE student SET StudentImage=? WHERE StudentID=?";
        try {
            
            conn.setAutoCommit(false);
            
            File f=new File(file);
            
            fis=new FileInputStream(f);
            
            ByteArrayOutputStream bos=new ByteArrayOutputStream();
            
            byte  buff[]=new byte[1024];
            
            for (int readNum; (readNum = fis.read(buff)) != -1;) {
            
                  bos.write(buff, 0, readNum);
            
             }

              displayimage=bos.toByteArray();
              
              try {
                  
                   sql="UPDATE property SET PropImage2=? WHERE PropertyID=?";
                   
                   c=conn.prepareStatement(sql);
                   
                   c.setBytes(1, displayimage);
                   c.setString(2, id);
                   int x=c.executeUpdate();
                   
                   if(x==1) {
                       
                       test="Image is Uploaded!";
                   }
                   
                   else {
                       
                       test="Image is Not Uploaded!";
                   }
                  
              }
              
              catch(Exception ex) {
                  
                  test="ERROR:   "+ex;
              }
        }
        
        catch(Exception ex) {
            
              test="ERROR:  "+ex;
        }
        
        return test;
    }
      
     public String insertthirdpropertyimage(String id, String file) {
        
        FileInputStream fis=null;
        PreparedStatement ps=null;
        
        byte [] displayimage=null;
        //sql="UPDATE student SET StudentImage=? WHERE StudentID=?";
        try {
            
            conn.setAutoCommit(false);
            
            File f=new File(file);
            
            fis=new FileInputStream(f);
            
            ByteArrayOutputStream bos=new ByteArrayOutputStream();
            
            byte  buff[]=new byte[1024];
            
            for (int readNum; (readNum = fis.read(buff)) != -1;) {
            
                  bos.write(buff, 0, readNum);
            
             }

              displayimage=bos.toByteArray();
              
              try {
                  
                   sql="UPDATE property SET PropImage3=? WHERE PropertyID=?";
                   
                   c=conn.prepareStatement(sql);
                   
                   c.setBytes(1, displayimage);
                   c.setString(2, id);
                   int x=c.executeUpdate();
                   
                   if(x==1) {
                       
                       test="Image is Uploaded!";
                   }
                   
                   else {
                       
                       test="Image is Not Uploaded!";
                   }
                  
              }
              
              catch(Exception ex) {
                  
                  test="ERROR:   "+ex;
              }
        }
        
        catch(Exception ex) {
            
              test="ERROR:  "+ex;
        }
        
        return test;
    }
    
    public String userEnquire(String fullname, String Contact, String Email, String Purpose, String AccountType, String Sendto, String Message, String StudentID, String LandLordID, String feedback) {
        
        
        String sql;
        String test="";
        
        int id=0;
        
        int x;
        
        sql="INSERT INTO request VALUES ("+id+", '"+fullname+"', "+Contact+", '"+Email+"', '"+Purpose+"', '"+AccountType+"', '"+Sendto+"', '"+Message+"', "+StudentID+", "+LandLordID+", '"+feedback+"')";
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                   test="Successfully Sent";
            }
            
            else {
                
                test="Sending Failed";
            }
        }
        
        catch(Exception ex) {
            
              test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    
    
    //Update Enquire
    
    
    public String Enquirefeedback(String id, String feedback) {
        
        int x;
        
        String test="";
        
        sql="UPDATE request SET Feedback='"+feedback+"' WHERE RequestID="+id+"";
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                test="Feedback Sent!";
            }
            
            else {
                
                test="Not Sent!";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String searchEnquire(String id) {
        
        sql="SELECT * FROM request WHERE RequestID="+id+"";
        
        String test="";
        
        try {
            
            rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                 test=rk.getString(1) + "===" +rk.getString(2) + "==="+ rk.getString(3)+ "==="+rk.getString(4) + "===" + rk.getString(5) + "==="+ rk.getString(6)+ "==="+ rk.getString(7)+ "==="+rk.getString(8)+ "==="+ rk.getString(9)+ "==="+ rk.getString(10) + "===" +rk.getString(11);
                 
                 
            }
            
            else {
                
                  test="No Enquire Found!!!";
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    
    public String studentsentenquire(String id, String AccountType) {
        
       
        sql="SELECT * FROM request WHERE StudentID="+id+" and SenderAccountType='Student'";
        
      
        try {
            
            ResultSet rs=sc.executeQuery(sql);
            
            while(rs.next()) {
                
                   test+=rs.getString(1) + ", ";
            }
            
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String landlordsentenquire(String id, String AccountType) {
        
       
        sql="SELECT RequestID FROM request WHERE LandLordID="+id+" and SenderAccountType='LandLord'";
        
      
        try {
            
            ResultSet rs=sc.executeQuery(sql);
            
            while(rs.next()) {
                
                   test+=rs.getString(1) + ", ";
            }
            
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String adminsentenquire(String AccountType) {
        
       
        sql="SELECT * FROM request WHERE SenderAccountType='ADMINISTRATOR'";
        
      
        try {
            
            ResultSet rs=sc.executeQuery(sql);
            
            while(rs.next()) {
                
                   test+=rs.getString(1) + ", ";
            }
            
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    
    public String userenquirefeedback(String id) {
        
        sql="SELECT * FROM request WHERE RequestID="+id+"";
        
        try {
            
            rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                
                test=rk.getString(1) + "===" +rk.getString(2) + "==="+ rk.getString(3)+ "==="+rk.getString(4) + "===" + rk.getString(5) + "==="+ rk.getString(6)+ "==="+ rk.getString(7)+ "==="+rk.getString(8)+ "==="+ rk.getString(9)+ "==="+ rk.getString(10) + "===" +rk.getString(11);
                
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
        return test;
    }
    
    //Admin Functions (Some above functions like SignUp are used instead of insert and update functions)
    
    
    //Manage Student Profiles
    
    public String DeleteStudents(String id) {
        
        int x;
        
        sql="DELETE FROM student WHERE StudentID="+id+"";
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                test="Successfully Deleted!";
            }
            
            else {
                
                test="Not Deleted!";
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:    "+ex;
        }
        
        return test;
    }
    
    //Manage Land Lord Profiles
    
    public String LandLordProfile(String username) {
        
        
        String sql;
        
        sql="SELECT * FROM landlord WHERE LUsername='"+username+"'";
        
        
        
        try {
            
            rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                
                test=rk.getString(1) + "===" + rk.getString(2) + "===" + rk.getString(3) + "===" + rk.getString(4) + "===" + rk.getString(5) + "===" + rk.getString(6) + "===" + rk.getString(7);
            }
            
            else {
                
                test="NOT FOUND!";
            }
        }
        
        catch(Exception ex) {
           
            test="ERROR:  "+ex;
        }
        
        return test;
    }
    
    public String SearchLandLordProfile(String id) {
        
        
        String sql;
        
        sql="SELECT * FROM landlord WHERE LandLordID="+id+"";
        
        
        
        try {
            
            rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                
                test=rk.getString(1) + "===" + rk.getString(2) + "===" + rk.getString(3) + "===" + rk.getString(4) + "===" + rk.getString(5) + "===" + rk.getString(6) + "===" + rk.getString(7);
            }
            
            else {
                
                test="NOT FOUND";
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
        return test;
    }
    
     public byte[] landlordprofileimage(String Username, String Password) {
        
       
         String sql;
         String test;
         
         byte image[]={};
         
         sql="SELECT * FROM landlord WHERE LUsername=? and LPassword=?";
         try {
             
             c=conn.prepareStatement(sql);
             
             c.setString(1, Username);
             c.setString(2, Password);
             
             rk=c.executeQuery();
             
             if(rk.next()) {
                 
                   byte imagearray[]=rk.getBytes(8);
                   
                   image=imagearray;
             }
             
         }
         
         catch(Exception ex) {
             
             test="ERROR:   "+ex;
         }
         
         return image;
    }
    
    
    public String updateLandLordProfile(String id, String Username, String Password, String Fullname, String Contact, String Address, String Otherdetails) {
        
        
        int x;
        
        String sql="";
        
        sql="UPDATE landlord SET LUsername='"+Username+"', LPassword='"+Password+"', Fullname='"+Fullname+"', LContact="+Contact+", LAddress='"+Address+"', Otherdetails='"+Otherdetails+"' WHERE LandLordID="+id+"";
         
         try {
             
             x=sc.executeUpdate(sql);
             
             if(x==1) {
                 
                   test="Successfully Updated";
             }
             
             else {
                 
                 test="Not Updated";
             }
         }
        
         catch(Exception ex) {
             
             test="ERROR:   "+ex;
         }
         
         return test;
    }
    
    public String deleteLandLordProfile(String id) {
        
        int x;
        
       
        
        sql="DELETE FROM landlord WHERE LandLordID="+id+"";
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                  test="Successfully Deleted";
            }
            
            else {
                
                  test="Not Deleted";
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
        return test;
    }
    
    public String LandLordPropertydetails(String id) {
        
        
        sql="SELECT * FROM property WHERE LandLordID="+id+"";
        
        String test="";
        try {
            
            rk=sc.executeQuery(sql);
            
            while(rk.next()) {
                
                  test+=rk.getString(1) + ", ";
            }
            
            
        }
        
        catch(Exception ex) {
            
              test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    //Manage Properties
    
    public String Propertydetails(String id) {
        
        if(id==null) {
                  
                  test="Enter PropertyID to View results!";
       }
        
        else {
        
        sql="SELECT * FROM property WHERE PropertyID="+id+"";
        
       
         try {
             
              rk=sc.executeQuery(sql);
              
              
              
                  
              
                 if(rk.next()) {
                  
                  
                  
                  test=rk.getString(1)+ "==="+rk.getString(2)+ "==="+ rk.getString(3)+ "==="+ rk.getString(4) + "==="+ rk.getString(8);
                  
                  }
              
                 else {
                  
                  test="NOT FOUND!";
                   }
             
              
         }
         
         catch(Exception ex) {
             
             test="ERROR:   "+ex;
         }
         
        }
         return test;
    }
    
     public byte[] propertyimage(String PropertyID) {
        
       
         String sql;
         String test;
         
         byte image[]={};
         
         sql="SELECT * FROM property WHERE PropertyID=?";
         try {
             
             c=conn.prepareStatement(sql);
             
             c.setString(1, PropertyID);
             
             rk=c.executeQuery();
             
             if(rk.next()) {
                 
                   byte imagearray[]=rk.getBytes(5);
                   
                   image=imagearray;
             }
             
         }
         
         catch(Exception ex) {
             
             test="ERROR:   "+ex;
         }
         
         return image;
    }
     
       public byte[] secondpropertyimage(String PropertyID) {
        
       
         String sql;
         String test;
         
         byte image[]={};
         
         sql="SELECT * FROM property WHERE PropertyID=?";
         try {
             
             c=conn.prepareStatement(sql);
             
             c.setString(1, PropertyID);
             
             rk=c.executeQuery();
             
             if(rk.next()) {
                 
                   byte imagearray[]=rk.getBytes(6);
                   
                   image=imagearray;
             }
             
         }
         
         catch(Exception ex) {
             
             test="ERROR:   "+ex;
         }
         
         return image;
    }
       public byte[] thirdpropertyimage(String PropertyID) {
        
       
         String sql;
         String test;
         
         byte image[]={};
         
         sql="SELECT * FROM property WHERE PropertyID=?";
         try {
             
             c=conn.prepareStatement(sql);
             
             c.setString(1, PropertyID);
             
             rk=c.executeQuery();
             
             if(rk.next()) {
                 
                   byte imagearray[]=rk.getBytes(7);
                   
                   image=imagearray;
             }
             
         }
         
         catch(Exception ex) {
             
             test="ERROR:   "+ex;
         }
         
         return image;
    }
    
    public String InsertProperty(String PropertyName, String PropertyType, String Moredetails, String PropImage1, String PropImage2, String PropImage3, String LandLordID) {
        
        
        int x;
        int id=0;
        sql="INSERT INTO property VALUES ("+id+", '"+PropertyName+"', '"+PropertyType+"', '"+Moredetails+"', '"+PropImage1+"', '"+PropImage2+"', '"+PropImage3+"', "+LandLordID+")";
       
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                 test="Successfully Inserted!";
            }
            
            else {
                
                 test="Not Inserted!";
            }
            
        }
        
        catch(SQLException ex) {
            
             test="ERROR:  "+ex;
        }
        
        return test;
    }
    
    public String updateProperty(String id, String PropertyName, String PropertyType, String Moredetails, String LandLordID) {
        
        int x;
        
        sql="UPDATE property SET PropertyName='"+PropertyName+"', PropertyType='"+PropertyType+"', Moredetails='"+Moredetails+"', LandLordID="+LandLordID+" WHERE PropertyID="+id+"";
        
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                test="Successfully Updated!";
            }
            
            else {
                
                test="Not Updated!";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String deleteProperty(String id) {
        
        int x;
        
        sql="DELETE FROM property WHERE PropertyID="+id+"";
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                test="Successfully Deleted!";
            }
            
            else {
                
                 test="Not Deleted!";
            }
        }
        
        catch(Exception ex) {
            
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String displayallPropertyID() {
        
        int count=0;
        
        String display="";
        try {
            
                

            rk=sc.executeQuery("SELECT * FROM property");
            
            while(rk.next()) {
                
                
                display+=rk.getString(1) + ", ";
                
                
            }
            

        }
        
        catch(Exception ex) {
            
            display="ERROR:  "+ex;
        }
        
        return display;
    }
    
    public String displayallStudentID() {
        
        String display="";
        
        try {
            
            rk=sc.executeQuery("SELECT * FROM student");
            
            while(rk.next()) {
                
                
                display+=rk.getString(1) + ", ";
            }
            
        }
        
        catch(Exception ex) {
            
            
            display="ERROR:   "+ex;
        }
        
        return display;
    }
    
     public String displayallLandLordID() {
        
        String display="";
        
        try {
            
            rk=sc.executeQuery("SELECT * FROM landlord");
            
            while(rk.next()) {
                
                
                display+=rk.getString(1) + ", ";
            }
            
        }
        
        catch(Exception ex) {
            
            
            display="ERROR:   "+ex;
        }
        
        return display;
    }
     
      public String displayallEntranceLoginID() {
        
        String display="";
        
        try {
            
            rk=sc.executeQuery("SELECT * FROM entrancelogin");
            
            while(rk.next()) {
                
                
                display+=rk.getString(1) + ", ";
            }
            
        }
        
        catch(Exception ex) {
            
            
            display="ERROR:   "+ex;
        }
        
        return display;
    }
    
    //Manage Entrance Login
    
    public String EntranceLoginDetails(String id) {
        
        sql="SELECT * FROM entrancelogin WHERE EntranceID="+id+"";
        
        
        //String [] arr={};
        
        try {
            
            rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                test=rk.getString(1) + "===" + rk.getString(2) + "===" + rk.getString(3);
                   
            }
            
            else {
                
                test="NOT FOUND!";
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String InsertEntranceLogin(String Username, String Password) {
        
        int x;
        int id=0;
        
        sql="INSERT INTO entrancelogin VALUES ("+id+", '"+Username+"', '"+Password+"')";
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                 test="Successfully Inserted!";
            }
            
            else {
                
                test="Not Inserted!";
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String UpdateEntranceLogin(String id, String Username, String Password) {
        
        int x;
        
        sql="UPDATE entrancelogin SET EntranceUsername='"+Username+"', EntrancePassword='"+Password+"' WHERE EntranceID="+id+"";
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                test="Successfully Updated!";
            }
            
            else {
                
                test="Not Updated!";
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String deleteEntranceLogin(String id) {
        
        int x;
        
        sql="DELETE FROM entrancelogin WHERE EntranceID="+id+"";
        
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                test="Successfully Deleted!";
            }
            
            else {
                
                test="Not Deleted!";
            }
        }
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
        return test;
    }
    
    //Own Admin Profile
    
    public String AdminProfile(String Username) {
        
        sql="SELECT * FROM administrator WHERE AdminUsername='"+Username+"'";
        
        try {
            
            rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                test=rk.getString(1) + "===" + rk.getString(2) + "===" + rk.getString(3) + "===" +rk.getString(4) + "===" + rk.getString(5);
            }
            
            else {
                
                test="NOT FOUND!";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:    "+ex;
        }
        
        return test;
    }
    
    public String SearchAdminProfile(String id) {
        
        sql="SELECT * FROM administrator WHERE AdminID='"+id+"'";
        
        try {
            
            rk=sc.executeQuery(sql);
            
            if(rk.next()) {
                
                test=rk.getString(1) + "===" + rk.getString(2) + "===" + rk.getString(3) + "===" +rk.getString(4) + "===" + rk.getString(5);
            }
            
            else {
                
                test="NOT FOUND!";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:    "+ex;
        }
        
        return test;
    }
    
    public String updateAdminProfile(String id, String AdminUsername, String AdminPassword, String Moreinformation, String Department) {
        
        sql="UPDATE administrator SET AdminUsername='"+AdminUsername+"', AdminPassword='"+AdminPassword+"', Moreinformation='"+Moreinformation+"', Department='"+Department+"' WHERE AdminID="+id+"";
        
        int x;
        try {
            
            x=sc.executeUpdate(sql);
            
            if(x==1) {
                
                   test="Successfully Updated!";
            }
            
            else {
                
                   test="Not Updated!";
            }
            
        }        
        
        catch(Exception ex) {
            
            test="ERROR:  "+ex;
        }
        
        return test;
    }
    
    public byte[] adminprofileimage(String Username, String Password) {
        
       
         String sql;
         String test;
         
         byte image[]={};
         
         sql="SELECT * FROM administrator WHERE AdminUsername=? and AdminPassword=?";
         try {
             
             c=conn.prepareStatement(sql);
             
             c.setString(1, Username);
             c.setString(2, Password);
             
             rk=c.executeQuery();
             
             if(rk.next()) {
                 
                   byte imagearray[]=rk.getBytes(6);
                   
                   image=imagearray;
             }
             
         }
         
         catch(Exception ex) {
             
             test="ERROR:   "+ex;
         }
         
         return image;
    }
    
    //Received Enquires checking function for Students
    
    public String studentreceivedenquire(String id, String SendTo) {
        
        sql="SELECT * FROM request WHERE StudentID="+id+" and SendTo='"+SendTo+"'";
        
        String test="";
        
        try {
            
            rk=sc.executeQuery(sql);
            
            while(rk.next()) {
                
                  test+=rk.getString(1) + ", ";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
    public String landlordreceivedenquire(String id, String Sendto) {
        
        sql="SELECT * FROM request WHERE LandLordID="+id+" and SendTo='"+Sendto+"'";
        
        String test="";
        
        try {
            
            rk=sc.executeQuery(sql);
            
            while(rk.next()) {
                
                  test+=rk.getString(1) + ", ";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
    
     public String adminreceivedenquire(String id, String Sendto) {
        
        sql="SELECT * FROM request WHERE SendTo='"+Sendto+"'";
        
        String test="";
        
        try {
            
            rk=sc.executeQuery(sql);
            
            while(rk.next()) {
                
                  test+=rk.getString(1) + ", ";
            }
            
        }
        
        catch(Exception ex) {
            
            test="ERROR:   "+ex;
        }
        
        return test;
    }
     
      /*
       
                    //Recommendations for Future Maintenances
       
       
       
       
                 Ensure Accuracy syntaxes of tags, statements etc.
              
                 Manage Code Length
                
                 Import all required drivers/class libraries to implement transactions to make system error free
     
                 Upgrade Database and Source Editor to acquire more features
     
                 Enable high security features to ensure system quality and prevent problems (courruptions etc.)
     
       
       */
}
