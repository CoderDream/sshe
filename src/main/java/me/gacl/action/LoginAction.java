package me.gacl.action;

import java.util.Date;
import java.util.UUID;

import me.gacl.model.User;
import me.gacl.service.UserServiceI;

import org.springframework.beans.factory.annotation.Autowired;


/**
 * @Title: LoginAction
 * @Description: 登录Action
 *
 * @version V1.0
 */
public class LoginAction extends BaseAction {

    public String username;

    public String password;

    public String message;
    
    
    /**
     * 注入userService
     */
    @Autowired
    private UserServiceI userService;

    /**
     * 进入登录页面
     * 
     * @return
     */
    public String login() {
        return SUCCESS;
    }

    /**
     * 进入主页
     * 
     * @return
     */
    public String doLogin() {
        
        User user = userService.query(username, password); 
        
        if (null != user) {
            return SUCCESS;
        } else {
            this.setMessage("Bad username or password!");
            return ERROR;
        }

    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}