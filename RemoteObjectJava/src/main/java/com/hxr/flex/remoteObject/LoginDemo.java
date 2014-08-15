package com.hxr.flex.remoteObject;

public class LoginDemo {   
    
    public String validate(String username,String password){   
        String message ="login failed!";   
        if(username.equals("lin")&&password.equals("lin")){   
            message = "login successed!";   
        }   
        return message;   
    }   
}