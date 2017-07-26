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
public class UserLoginTest {
    
    public UserLoginTest() {
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
    public void testStudentlogin() {
        
        
                AWebService instance = new AWebService();

           instance.databaseconnection();
        System.out.println("studentlogin");
        String username = "DashPiumal";
        String password = "19981212";
        String expResult = "LOGIN SUCCESSFUL!";
        String result = instance.studentlogin(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    } 
    
    @Test
    public void testEntrancelogin() {
        
                        AWebService instance = new AWebService();

                        instance.databaseconnection();
        
        System.out.println("entrancelogin");
        String username = "ABCEntrance90";
        String password = "199089XyZJk";
        String expResult = "LOGIN SUCCESSFUL!";
        String result = instance.entrancelogin(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

     @Test
    public void testLandlordlogin() {
        
        
        AWebService instance = new AWebService();

        instance.databaseconnection();
        
        System.out.println("landlordlogin");
        String username = "DhanushaPS";
        String password = "19981212";
        String expResult = "LOGIN SUCCESSFUL!";
        String result = instance.landlordlogin(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    } 

    @Test
    public void testAdminlogin() {
        
         
        AWebService instance = new AWebService();

        instance.databaseconnection();
        
        System.out.println("adminlogin");
        String username = "Dhanusha";
        String password = "1998";
        String expResult = "LOGIN SUCCESSFUL!";
        String result = instance.adminlogin(username, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
}
