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
public class EnquireFunctionsTest {
    
    public EnquireFunctionsTest() {
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
    public void testUserEnquire() {
        
                AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("userEnquire");
        String fullname = "Dhanusha Piumal Siriwardane";
        String Contact = "0789098990";
        String Email = "dhanusharoks@hotmail.com";
        String Purpose = "test";
        String AccountType = "Student";
        String Sendto = "Administrator";
        String Message = "Hello World!";
        String StudentID = "2002";
        String LandLordID = "null";
        String feedback = "I will contact you as soon as possible";
        String expResult = "Successfully Sent";
        String result = instance.userEnquire(fullname, Contact, Email, Purpose, AccountType, Sendto, Message, StudentID, LandLordID, feedback);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    } 
    
   @Test
    public void testEnquirefeedback() {
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
                
        System.out.println("Enquirefeedback");
        String id = "";
        String feedback = "";
        String expResult = instance.Enquirefeedback(id, feedback);
        String result = instance.Enquirefeedback(id, feedback);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

   @Test
    public void testSearchEnquire() {
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
        
        
        System.out.println("searchEnquire");
        String id = "";
        String expResult = instance.searchEnquire(id);
        String result = instance.searchEnquire(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

     
    @Test
    public void testStudentsentenquire() {
        
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("studentsentenquire");
        String id = "";
        String AccountType = "";
        String expResult = instance.studentsentenquire(id, AccountType);
        String result = instance.studentsentenquire(id, AccountType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
    @Test
    public void testLandlordsentenquire() {
        
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("landlordsentenquire");
        String id = "";
        String AccountType = "";
        String expResult = instance.landlordsentenquire(id, AccountType);
        String result = instance.landlordsentenquire(id, AccountType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
    @Test
    public void testAdminsentenquire() {
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("adminsentenquire");
        String AccountType = "";
        String expResult = instance.adminsentenquire(AccountType);
        String result = instance.adminsentenquire(AccountType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

   
    @Test
    public void testUserenquirefeedback() {
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("userenquirefeedback");
        String id = "";
        String expResult = instance.userenquirefeedback(id);
        String result = instance.userenquirefeedback(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

     @Test
    public void testStudentreceivedenquire() {
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("studentreceivedenquire");
        String id = "";
        String SendTo = "";
        String expResult = instance.studentreceivedenquire(id, SendTo);
        String result = instance.studentreceivedenquire(id, SendTo);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    @Test
    public void testLandlordreceivedenquire() {
        
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("landlordreceivedenquire");
        String id = "";
        String Sendto = "";
        String expResult = instance.landlordreceivedenquire(id, Sendto);
        String result = instance.landlordreceivedenquire(id, Sendto);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    @Test
    public void testAdminreceivedenquire() {
        
        AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("adminreceivedenquire");
        String id = "";
        String Sendto = "";
        String expResult = instance.adminreceivedenquire(id, Sendto);
        String result = instance.adminreceivedenquire(id, Sendto);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    } 
    
}
