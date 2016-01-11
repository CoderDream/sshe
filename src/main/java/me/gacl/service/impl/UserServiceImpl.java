package me.gacl.service.impl;

import org.springframework.stereotype.Service;

import me.gacl.service.UserServiceI;
//使用Spring提供的@Service注解将UserServiceImpl标注为一个Service
@Service("userService")
public class UserServiceImpl implements UserServiceI {

    @Override
    public void test() {
        System.out.println("Hello World!");
    }

}