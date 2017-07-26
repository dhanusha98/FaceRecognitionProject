/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package business;

import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import test.AWebService;
import test.AWebService_Service;


/**
 *
 * @author BANDULA
 */
@WebService(serviceName = "BusinessLogicService")
public class BusinessLogicService {

    /**
     * This is a sample web service operation
     */
    
     AWebService proxy=new AWebService_Service().getAWebServicePort();
    
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }
    
    public String databaseconnection() {
         
         
         return proxy.databaseconnection();
         
     }
     
      public String entrancelogin(String username, String password) {
          
          
          return proxy.entrancelogin(username, password);
      }
      
      public String studentlogin(String username, String password) {
          
          
          return proxy.studentlogin(username, password);
      }
      
      public String landlordlogin(String username, String password) {
          
          
          return proxy.landlordlogin(username, password);
      }
      
       public String adminlogin(String username, String password) {
           
           
           return proxy.adminlogin(username, password);
       }
       
      public String StudentSignUp(String Username, String Password, String Name, String contact, String address, String image) {
          
          
          return proxy.studentSignUp(Username, Password, Name, contact, address, image);
      }
      
       public String LandLordSignUp(String Username, String Password, String fullname, String contact, String address, String Otherdetails, String image) {
           
           
           return proxy.landLordSignUp(Username, Password, fullname, contact, address, Otherdetails, image);
       }
       
       public String AdminSignUp(String AdminUsername, String AdminPassword, String Moreinformation, String Department, String image) {
           
           
           return proxy.adminSignUp(AdminUsername, AdminPassword, Moreinformation, Department, image);
       }
       
       public String searchStudentID(String Username, String Password) {
           
           return proxy.searchStudentID(Username, Password);
       }
       
        public String searchLandLordID(String Username, String Password) {
           
           return proxy.searchLandLordID(Username, Password);
       }
       
       public String updateStudentProfile(String id, String Username, String Password, String Name, String Contact, String Address) {
           
           return proxy.updateStudentProfile(id, Username, Password, Name, Contact, Address);
       }

       public String notification() {
           
           return proxy.notification();
       }
       
      public String StudentProfile(String Username, String Password) {
           
           return proxy.studentProfile(Username, Password);
          
       }
      
      public String SearchStudentProfile(String id) {
          
          return proxy.searchStudentProfile(id);
      }
      
      public String updateAdminProfile(String id, String AdminUsername, String AdminPassword, String Moreinformation, String Department) {

              
              return proxy.updateAdminProfile(id, AdminUsername, AdminPassword, Moreinformation, Department);
       }

       public byte[] studentprofileimage(String Username, String Password) {
           
              return proxy.studentprofileimage(Username, Password);
       }
       
       public String userEnquire(String fullname, String Contact, String Email, String Purpose, String AccountType, String Sendto, String Message, String StudentID, String LandLordID, String feedback) {
           
           return proxy.userEnquire(fullname, Contact, Email, Purpose, AccountType, Sendto, Message, StudentID, LandLordID, feedback);
       }
       
        public String DeleteStudents(String id) {
            
            
            return proxy.deleteStudents(id);
           
        }
        
        public String LandLordProfile(String id) {
            
            return proxy.landLordProfile(id);
        }
        
        public byte[] landlordprofileimage(String Username, String Password) {
            
            return proxy.landlordprofileimage(Username, Password);
        }

        
        public String updateLandLordProfile(String id, String Username, String Password, String Fullname, String Contact, String Address, String Otherdetails) {
            
            
            return proxy.updateLandLordProfile(id, Username, Password, Fullname, Contact, Address, Otherdetails);
        }
       
        public String deleteLandLordProfile(String id) {
            
            
            return proxy.deleteLandLordProfile(id);
        }
      
        public String Propertydetails(String id) {
            
            
            return proxy.propertydetails(id);
        }
        
        public byte[] propertyimage(String PropertyID) {
            
            return proxy.propertyimage(PropertyID);
        }
        
        public byte[] secondpropertyimage(String PropertyID) {
            
            
            return proxy.secondpropertyimage(PropertyID);
        }
        
        public byte[] thirdpropertyimage(String PropertyID) {
            
            return proxy.thirdpropertyimage(PropertyID);
        }

        
        public String InsertProperty(String PropertyName, String PropertyType, String Moredetails, String PropImage1, String PropImage2, String PropImage3, String LandLordID) {
            
            return proxy.insertProperty(PropertyName,PropertyType,Moredetails, PropImage1, PropImage2, PropImage3, LandLordID);
        }
        
        public String updateProperty(String id, String PropertyName, String PropertyType, String Moredetails, String LandLordID) {
            
            return proxy.updateProperty(id, PropertyName, PropertyType, Moredetails, LandLordID);
        }

         public String deleteProperty(String id) {
             
             return proxy.deleteProperty(id);
         }
         
          public String displayallPropertyID() {
              
              
              return proxy.displayallPropertyID();
          }
         
         public String EntranceLoginDetails(String id) {
             
             
             return proxy.entranceLoginDetails(id);
         }
         
         public String InsertEntranceLogin(String Username, String Password) {
             
             return proxy.insertEntranceLogin(Username, Password);
         }

         public String UpdateEntranceLogin(String id, String Username, String Password) {
              
              
              return proxy.updateEntranceLogin(id, Username, Password);
          }
         
         public String deleteEntranceLogin(String id) {
             
              return proxy.deleteEntranceLogin(id);
         }
         
    public String Enquirefeedback(String id, String feedback) {
             
             
             return proxy.enquirefeedback(id, feedback);
             
         }
         
          public String AdminProfile(String Username) {
              
              
              return proxy.adminProfile(Username);
          }
          
          public byte[] adminprofileimage(String Username, String Password) {
              
              return proxy.adminprofileimage(Username, Password);
          }
          
          public String SearchAdminProfile(String id) {
                  
                  return proxy.searchAdminProfile(id);
              }
          
          public String SearchLandLordProfile(String id) {
        
        
                return proxy.searchLandLordProfile(id);
           }
          
         public String studentreceivedenquire(String id, String SendTo) {

                 return proxy.studentreceivedenquire(id, SendTo);
                 
           }
         
        public String landlordreceivedenquire(String id, String Sendto) {
            
            return proxy.landlordreceivedenquire(id, Sendto);
            
        }
        
        public String adminreceivedenquire(String id, String Sendto) {
            
            return proxy.adminreceivedenquire(id, Sendto);
        }
         
         public String searchEnquire(String id) {
             
            return proxy.searchEnquire(id);
         }
         
         public String studentsentenquire(String id, String AccountType) {
             
             return proxy.studentsentenquire(id, AccountType);
         }
         
        public String landlordsentenquire(String id, String AccountType) {
                 
               return proxy.landlordsentenquire(id, AccountType);
        }
        
        public String adminsentenquire(String AccountType) {
            
            
            return proxy.adminsentenquire(AccountType);
        }
         
         public String userenquirefeedback(String id) {
             
             return proxy.userenquirefeedback(id);
         }

         public String LandLordPropertydetails(String id) {

             return proxy.landLordPropertydetails(id);
            
         }
         
          public String insertstudentprofileimage(String id, String file) {
              
              return proxy.insertstudentprofileimage(id, file);
          }
          
         public String insertlandlordprofileimage(String id, String file) {
             
             return proxy.insertlandlordprofileimage(id, file);
         }

         public String insertadminprofileimage(String id, String file) {
             
             return proxy.insertadminprofileimage(id, file);
         }
         
         public String insertfirstpropertyimage(String id, String file) {
             
            return proxy.insertfirstpropertyimage(id, file);
         }
         
         public String insertsecondpropertyimage(String id, String file) {
             
             return proxy.insertsecondpropertyimage(id, file);
         }
         
         public String insertthirdpropertyimage(String id, String file) {
             
             return proxy.insertthirdpropertyimage(id, file);
         }

         public String displayallStudentID() {

               return proxy.displayallStudentID();
                 
         }

         public String displayallLandLordID() {

                  
                return proxy.displayallLandLordID();
                
         }

         public String displayallEntranceLoginID() {

                return proxy.displayallEntranceLoginID();
                
          }

}
