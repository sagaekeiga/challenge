package jums;

import java.sql.Timestamp;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author keiga
 */
public class UserDataBeans {
    private int clientID;
    private String name;
    private String birthday;
    private String tell;
    private String type;
    private String comment;
    private Timestamp newDate;
    
    
    
    
   public int getUserID() {
        return clientID;
    }
    public void setUserID(int clientID) {
        this.clientID = clientID;
    }
    
    public void setClientName(String clientName){
        this.name = clientName;
    }
    
    public String getClientName(){
        return this.name;
   }
    
    
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    
    public String getBirthday(){
        return birthday;
    }
    public void setBirthday(String birthday){
        this.birthday = birthday;
    }
    
    public String getTell(){
        return tell;
    }
    public void setTell(String tell){
        this.tell = tell;
    }
    
    public String getType(){
        return type;
    }
    public void setType(String type){
        this.type = type;
    }
    
    public String getComment(){
        return comment;
    }
    public void setComment(String comment){
        this.comment = comment;
    }
    
    public Timestamp getNewDate() {
        return newDate;
    }
    public void setNewDate(Timestamp newDate) {
        this.newDate = newDate;
    }
}
