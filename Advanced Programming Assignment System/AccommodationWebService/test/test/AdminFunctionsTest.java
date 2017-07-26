/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author ashen
 */
public class AdminFunctionsTest {
    
    public AdminFunctionsTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
    
   @Test
    public void testInsertadminprofileimage() {
        
                AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("insertadminprofileimage");
        String id = "200000";
        String file = "";
        String expResult = "Image is Uploaded!";
        String result = instance.insertadminprofileimage(id, file);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    } 
    
   @Test
    public void testAdminsentenquire() {
        System.out.println("adminsentenquire");
        String AccountType = "";
        AWebService instance = new AWebService();
        String expResult = instance.adminsentenquire(AccountType);
        String result = instance.adminsentenquire(AccountType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

      @Test
    public void testAdminProfile() {
        System.out.println("AdminProfile");
        String Username = "";
        AWebService instance = new AWebService();
        String expResult =instance.AdminProfile(Username);
        String result = instance.AdminProfile(Username);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    @Test
    public void testSearchAdminProfile() {
        System.out.println("SearchAdminProfile");
        String id = "";
        AWebService instance = new AWebService();
        String expResult = instance.SearchAdminProfile(id);
        String result = instance.SearchAdminProfile(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
     @Test
    public void testUpdateAdminProfile() {
        
         AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("updateAdminProfile");
        String id = "200001";
        String AdminUsername = "";
        String AdminPassword = "";
        String Moreinformation = "";
        String Department = "";
        String expResult ="Successfully Updated!" ;
        String result = instance.updateAdminProfile(id, AdminUsername, AdminPassword, Moreinformation, Department);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    @Test
    public void testAdminprofileimage() {
        System.out.println("adminprofileimage");
        String Username = "";
        String Password = "";
        AWebService instance = new AWebService();
        byte[] expResult =instance.adminprofileimage(Username, Password);
        byte[] result = instance.adminprofileimage(Username, Password);
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
     @Test
    public void testAdminreceivedenquire() {
        System.out.println("adminreceivedenquire");
        String id = "";
        String Sendto = "";
        AWebService instance = new AWebService();
        String expResult = instance.adminreceivedenquire(id, Sendto);
        String result = instance.adminreceivedenquire(id, Sendto);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
   
    
    
    //Manage Students
    
          //Other functions will be tested on other relevant testing files
    @Test
    public void testDeleteStudents() {
        
         AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("DeleteStudents");
        String id = "2009";
        String expResult = "Successfully Deleted!";
        String result = instance.DeleteStudents(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    
    
    //Manage Land Lords
    
    
     @Test
    public void testDeleteLandLordProfile() {
        System.out.println("deleteLandLordProfile");
        String id = "";
        AWebService instance = new AWebService();
        String expResult = instance.deleteLandLordProfile(id);
        String result = instance.deleteLandLordProfile(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
    
    
    //Manage Properties
    
    @Test
    public void testInsertProperty() {
        
                AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("InsertProperty");
        String PropertyName = "";
        String PropertyType = "";
        String Moredetails = "";
        String PropImage1 = "";
        String PropImage2 = "";
        String PropImage3 = "";
        String LandLordID = "";
        String expResult =  instance.InsertProperty(PropertyName, PropertyType, Moredetails, PropImage1, PropImage2, PropImage3, LandLordID);
        String result = instance.InsertProperty(PropertyName, PropertyType, Moredetails, PropImage1, PropImage2, PropImage3, LandLordID);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
    @Test
    public void testUpdateProperty() {
        
        
         AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("updateProperty");
        String id = "1";
        String PropertyName = "";
        String PropertyType = "";
        String Moredetails = "";
        String LandLordID = "";
        String expResult = instance.updateProperty(id, PropertyName, PropertyType, Moredetails, LandLordID);
        String result = instance.updateProperty(id, PropertyName, PropertyType, Moredetails, LandLordID);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
     @Test
    public void testDeleteProperty() {
        
         AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("deleteProperty");
        String id = "6";
        String expResult = "Successfully Deleted!";
        String result = instance.deleteProperty(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    
    
    //Manage Entrance Login
    
   @Test
    public void testEntranceLoginDetails() {
        System.out.println("EntranceLoginDetails");
        String id = "";
        AWebService instance = new AWebService();
        String expResult = instance.EntranceLoginDetails(id);
        String result = instance.EntranceLoginDetails(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
    @Test
    public void testInsertEntranceLogin() {
        System.out.println("InsertEntranceLogin");
        String Username = "";
        String Password = "";
        AWebService instance = new AWebService();
        String expResult = instance.InsertEntranceLogin(Username, Password);
        String result = instance.InsertEntranceLogin(Username, Password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
    @Test
    public void testUpdateEntranceLogin() {
        System.out.println("UpdateEntranceLogin");
        String id = "";
        String Username = "";
        String Password = "";
        AWebService instance = new AWebService();
        String expResult = instance.UpdateEntranceLogin(id, Username, Password);
        String result = instance.UpdateEntranceLogin(id, Username, Password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
    @Test
    public void testDeleteEntranceLogin() {
        System.out.println("deleteEntranceLogin");
        String id = "";
        AWebService instance = new AWebService();
        String expResult = instance.deleteEntranceLogin(id);
        String result = instance.deleteEntranceLogin(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
   
    
    
}
