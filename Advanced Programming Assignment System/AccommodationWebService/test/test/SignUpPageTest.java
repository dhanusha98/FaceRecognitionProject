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
public class SignUpPageTest {
    
    public SignUpPageTest() {
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
    public void testStudentSignUp() {
        
                AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("StudentSignUp");
        String Username = "";
        String Password = "";
        String Name = "";
        String contact ="";
        String address = "";
        String image = "";
        String expResult = "Successfully Registered!";
        String result = instance.StudentSignUp(Username, Password, Name, contact, address, image);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    } 
    
    @Test
    public void testLandLordSignUp() {
        
         AWebService instance = new AWebService();

                instance.databaseconnection();
                
        System.out.println("LandLordSignUp");
        String Username = "";
        String Password = "";
        String fullname = "";
        String contact = "";
        String address = "";
        String Otherdetails = "";
        String image = "";
        String expResult = "Successfully Registered!";
        String result = instance.LandLordSignUp(Username, Password, fullname, contact, address, Otherdetails, image);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    @Test
    public void testAdminSignUp() {
        
        
         AWebService instance = new AWebService();

                instance.databaseconnection();
                
        System.out.println("AdminSignUp");
        String AdminUsername = "";
        String AdminPassword = "";
        String Moreinformation = "";
        String Department = "";
        String image = "";
        String expResult = "Successfully Registered!";
        String result = instance.AdminSignUp(AdminUsername, AdminPassword, Moreinformation, Department, image);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    } 
}
