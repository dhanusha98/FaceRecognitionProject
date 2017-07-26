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
public class entrancelogin {
    
     private Integer EntranceID;
     private String EntranceUsername;
     private String EntrancePassword;
     
     public void setEntranceID(int EntranceID) {
         
         this.EntranceID=EntranceID;
     }
     
     public int getEntranceID() {
         
         return this.EntranceID;
     }
     
     public void setEntranceUsername(String EntranceUsername) {
         
         this.EntranceUsername=EntranceUsername;
     }
     
     public String getEntranceUsername() {
         
            return this.EntranceUsername;
      }
     
      public void setEntrancePassword(String EntrancePassword) {
         
         this.EntrancePassword=EntrancePassword;
     }
     
     public String getEntrancePassword() {
         
            return this.EntrancePassword;
      }
}
