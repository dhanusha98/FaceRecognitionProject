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
public class LandLordFunctionsTest {
    
    public LandLordFunctionsTest() {
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
    public void testSearchLandLordID() {
        System.out.println("searchLandLordID");
        String Username = "";
        String Password = "";
        AWebService instance = new AWebService();
        String expResult = instance.searchLandLordID(Username, Password);;
        String result = instance.searchLandLordID(Username, Password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    } 
    
   @Test
    public void testInsertlandlordprofileimage() {
        System.out.println("insertlandlordprofileimage");
        String id = "";
        String file = "";
        AWebService instance = new AWebService();
        String expResult = instance.insertlandlordprofileimage(id, file);
        String result = instance.insertlandlordprofileimage(id, file);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    @Test
    public void testLandlordsentenquire() {
        System.out.println("landlordsentenquire");
        String id = "";
        String AccountType = "";
        AWebService instance = new AWebService();
        String expResult = instance.landlordsentenquire(id, AccountType);
        String result = instance.landlordsentenquire(id, AccountType);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    } 

     @Test
    public void testLandLordProfile() {
        System.out.println("LandLordProfile");
        String username = "";
        AWebService instance = new AWebService();
        String expResult = instance.LandLordProfile(username);
        String result = instance.LandLordProfile(username);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    } 
    
     @Test
    public void testSearchLandLordProfile() {
        System.out.println("SearchLandLordProfile");
        String id = "";
        AWebService instance = new AWebService();
        String expResult = instance.SearchLandLordProfile(id);
        String result = instance.SearchLandLordProfile(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    @Test
    public void testLandlordprofileimage() {
        
                AWebService instance = new AWebService();

                instance.databaseconnection();
        
        System.out.println("landlordprofileimage");
        String Username = "DhanushaPS";
        String Password = "19981212";
        byte[] expResult = instance.landlordprofileimage(Username, Password);
        byte[] result = instance.landlordprofileimage(Username, Password);
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    
    @Test
    public void testUpdateLandLordProfile() {
        System.out.println("updateLandLordProfile");
        String id = "";
        String Username = "";
        String Password = "";
        String Fullname = "";
        String Contact = "";
        String Address = "";
        String Otherdetails = "";
        AWebService instance = new AWebService();
        String expResult = instance.updateLandLordProfile(id, Username, Password, Fullname, Contact, Address, Otherdetails);
        String result = instance.updateLandLordProfile(id, Username, Password, Fullname, Contact, Address, Otherdetails);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
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

     @Test
    public void testLandLordPropertydetails() {
        System.out.println("LandLordPropertydetails");
        String id = "";
        AWebService instance = new AWebService();
        String expResult = instance.LandLordPropertydetails(id);
        String result = instance.LandLordPropertydetails(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

      @Test
    public void testLandlordreceivedenquire() {
        System.out.println("landlordreceivedenquire");
        String id = "";
        String Sendto = "";
        AWebService instance = new AWebService();
        String expResult = instance.landlordreceivedenquire(id, Sendto);
        String result = instance.landlordreceivedenquire(id, Sendto);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    
}
