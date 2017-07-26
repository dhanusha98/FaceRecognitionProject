/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package systemfiles;

/**
 *
 * @author BANDULA
 */
public class property {
    
         private Integer PropertyId;
         private String PropertyName;
         private String PropertyType;
         private String Moredetails;
         
         public void setPropertyID(Integer PropertyId) {
             
             this.PropertyId=PropertyId;
         }
         
         public int getPropertyID() {
             
             return this.PropertyId;
         }
         
         public void setPropertyName(String PropertyName) {
             
             this.PropertyName=PropertyName;
         }
         
         public String getPropertyName() {
             
               return this.PropertyName;
         }
         
         public void setType(String PropertyType) {
             
             this.PropertyType=PropertyType;
         }
         
         public String getType() {
             
             return this.PropertyType;
         }
         
         public void setMore(String Moredetails) {
             
             this.Moredetails=Moredetails;
         }
         
         public String getMore() {
             
              return this.Moredetails;
         }
}
