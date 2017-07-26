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
public class StudentFunctionsTest {
    
    public StudentFunctionsTest() {
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
    public void testSearchStudentID() {
        System.out.println("searchStudentID");
        String Username = "";
        String Password = "";
        AWebService instance = new AWebService();
        String expResult = instance.searchStudentID(Username, Password);
        String result = instance.searchStudentID(Username, Password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
      @Test
    public void testStudentProfile() {
        System.out.println("StudentProfile");
        String Username = "sdsdsd";
        String Password = "dsdsds";
        AWebService instance = new AWebService();
        String expResult = instance.StudentProfile(Username, Password);
        String result = instance.StudentProfile(Username, Password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    @Test
    public void testSearchStudentProfile() {
        System.out.println("SearchStudentProfile");
        String id = "";
        AWebService instance = new AWebService();
        String expResult = instance.SearchStudentProfile(id);
        String result = instance.SearchStudentProfile(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    
     @Test
    public void testInsertstudentprofileimage() {
        
        System.out.println("insertstudentprofileimage");
        String id = "";
        String file = "";
        AWebService instance = new AWebService();
        String expResult = instance.insertstudentprofileimage(id, file);
        String result = instance.insertstudentprofileimage(id, file);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
    @Test
    public void testUpdateStudentProfile() {
        
        
                AWebService instance = new AWebService();

             instance.databaseconnection();
        
        System.out.println("updateStudentProfile");
        String id = "";
        String Username = "";
        String Password = "";
        String Name = "";
        String Contact = "";
        String Address = "";
        String expResult = instance.updateStudentProfile(id, Username, Password, Name, Contact, Address);
        String result = instance.updateStudentProfile(id, Username, Password, Name, Contact, Address);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }  

    @Test
    public void testStudentprofileimage() {
        System.out.println("studentprofileimage");
        String Username = "";
        String Password = "";
        AWebService instance = new AWebService();
        byte[] expResult = instance.studentprofileimage(Username, Password);
        byte[] result = instance.studentprofileimage(Username, Password);
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    
}
