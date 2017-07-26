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
public abstract class useraccounts {
    
    protected Integer ID;
    protected String Username;
    protected String Password;
    protected String fullname;
    protected Integer Contact;
    protected String  address;
     protected byte[] image;
    
    public void setStudentID(int StudentID){
        
        this.ID=StudentID;
    }
    
    public Integer getStudentID() {
        
        return this.ID;
    }
    
    public void setUsername(String Username) {
        
        this.Username=Username;
    }
    
    public String getUsername(){
        
        return this.Username;
    }
    
    public void setPassword(String Password) {
        
        this.Password=Password;
    }
    
    public String getPassword() {
        
          return this.Password;
    }
    
    public void setName(String StudentName) {
        
        this.fullname=StudentName;
    }
    
    public String getName() {
        
        return this.fullname;
    }
    
    public void setContact(Integer Contact) {
        
         this.Contact=Contact;
    }
    
    public Integer getContact() {
        
        return this.Contact;
    }
    
    public void setAddress(String Address) {
        
        this.address=Address;
    }
    
    public String getAddress() {
        
        return this.address;
    }
    
    public void setImage(byte[] image) {
        
        this.image=image;
    }
    
    public byte[] getImage() {
        
        return this.image;
    }
    
    
}
