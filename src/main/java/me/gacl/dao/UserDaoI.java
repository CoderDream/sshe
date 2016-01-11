package me.gacl.dao;

import java.io.Serializable;

import me.gacl.model.User;

public interface UserDaoI {

    /**
     * 保存用户
     * 
     * @param user
     * @return
     */
    Serializable save(User user);
}