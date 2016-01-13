package me.gacl.dao.impl;

import java.io.Serializable;

import me.gacl.dao.UserDaoI;
import me.gacl.model.User;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImpl implements UserDaoI {

    /**
     * 使用@Autowired注解将sessionFactory注入到UserDaoImpl中
     */
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Serializable save(User user) {
        return sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public User query(String username, String password) {
        User user = null;
        String hql = "SELECT * FROM t_user where `NAME`='" + username + "' and pwd = '" + password + "'";
        SQLQuery query = sessionFactory.getCurrentSession().createSQLQuery(hql).addEntity(User.class);
        System.out.println(query.list());
        if (null != query.list() && 0 < query.list().size()) {
            user = (User) query.list().get(0);
        }

        return user;
    }
}