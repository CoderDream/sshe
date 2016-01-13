package me.gacl.service.impl;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.gacl.dao.UserDaoI;
import me.gacl.model.User;
import me.gacl.service.UserServiceI;

//使用Spring提供的@Service注解将UserServiceImpl标注为一个Service
@Service("userService")
public class UserServiceImpl implements UserServiceI {

    /**
     * 注入userDao
     */
    @Autowired
    private UserDaoI userDao;

    @Override
    public void test() {
        System.out.println("Hello World!");
    }

    @Override
    public Serializable save(User user) {
        return userDao.save(user);
    }

    @Override
    public User query(String username, String password) {
        return userDao.query(username, password);
    }
}