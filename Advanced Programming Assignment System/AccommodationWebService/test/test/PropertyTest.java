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
public class PropertyTest {
    
    public PropertyTest() {
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
    public void testInsertfirstpropertyimage() {
        System.out.println("insertfirstpropertyimage");
        String id = "";
        String file = "";
        AWebService instance = new AWebService();
        String expResult = instance.insertfirstpropertyimage(id, file);
        String result = instance.insertfirstpropertyimage(id, file);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

     @Test
    public void testInsertsecondpropertyimage() {
        System.out.println("insertsecondpropertyimage");
        String id = "";
        String file = "";
        AWebService instance = new AWebService();
        String expResult = instance.insertsecondpropertyimage(id, file);
        String result = instance.insertsecondpropertyimage(id, file);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    @Test
    public void testInsertthirdpropertyimage() {
        System.out.println("insertthirdpropertyimage");
        String id = "";
        String file = "";
        AWebService instance = new AWebService();
        String expResult = instance.insertthirdpropertyimage(id, file);
        String result = instance.insertthirdpropertyimage(id, file);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

     @Test
    public void testPropertydetails() {
        System.out.println("Propertydetails");
        String id = "";
        AWebService instance = new AWebService();
        String expResult = instance.Propertydetails(id);
        String result = instance.Propertydetails(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
    @Test
    public void testPropertyimage() {
        System.out.println("propertyimage");
        String PropertyID = "";
        AWebService instance = new AWebService();
        byte[] expResult = instance.propertyimage(PropertyID);
        byte[] result = instance.propertyimage(PropertyID);
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
      @Test
    public void testSecondpropertyimage() {
        System.out.println("secondpropertyimage");
        String PropertyID = "";
        AWebService instance = new AWebService();
        byte[] expResult = instance.secondpropertyimage(PropertyID);
        byte[] result = instance.secondpropertyimage(PropertyID);
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    @Test
    public void testThirdpropertyimage() {
        System.out.println("thirdpropertyimage");
        String PropertyID = "";
        AWebService instance = new AWebService();
        byte[] expResult = instance.thirdpropertyimage(PropertyID);
        byte[] result = instance.thirdpropertyimage(PropertyID);
        assertArrayEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
      @Test
    public void testDisplayallPropertyID() {
        System.out.println("displayallPropertyID");
        AWebService instance = new AWebService();
        String expResult = instance.displayallPropertyID();
        String result = instance.displayallPropertyID();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
}
