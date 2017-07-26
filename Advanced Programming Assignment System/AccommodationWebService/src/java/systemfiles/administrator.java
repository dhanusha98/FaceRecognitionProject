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
public class administrator {
    
       private Integer AdminID;
       private String AdminUsername;
       private String AdminPassword;
       private String Department;
       private String Moreinformation;
    
       private static administrator instance=new administrator();
       
       private administrator(){}
       
       
       public static administrator getinstance() {
           
             return instance;
       }
       
       public void setAdminID(int AdminID) {
           
           this.AdminID=AdminID;
       }
       
       public Integer getAdminID() {
           
           return this.AdminID;
       }
       
       public void setAdminUsername(String AdminUsername) {
           
             this.AdminUsername=AdminUsername;
       }
       
       public String getAdminUsername() {
           
           return this.AdminUsername;
       }
       
       public void setAdminPassword(String AdminPassword) {
           
           this.AdminPassword=AdminPassword;
       }
       
       public String getAdminPassword() {
           
           return this.AdminPassword;
       }
    
       public void setDepartment(String Department) {
           
           this.Department=Department;
       }
       
       public String getDepartment() {
           
             return this.Department;
       }
       
       public void setMore(String Moreinformation) {
           
            this.Moreinformation=Moreinformation;
       }
       
       public String getMore() {
           
           return this.Moreinformation;
       }
}
