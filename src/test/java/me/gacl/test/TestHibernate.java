package me.gacl.test;

import java.util.Date;
import java.util.UUID;

import me.gacl.model.User;
import me.gacl.service.UserServiceI;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.opensymphony.xwork2.interceptor.annotations.After;

public class TestHibernate {

    private UserServiceI userService;

    // 通过spring.xml配置文件创建Spring的应用程序上下文环境
    AbstractApplicationContext context;

    /**
     * 这个before方法在所有的测试方法之前执行，并且只执行一次 所有做Junit单元测试时一些初始化工作可以在这个方法里面进行 比如在before方法里面初始化ApplicationContext和userService
     */
    @Before
    public void before() {
        context = new ClassPathXmlApplicationContext(new String[] { "spring.xml", "spring-hibernate.xml" });
        userService = (UserServiceI) context.getBean("userService");
    }

    @Test
    public void testSaveMethod() {
        // ApplicationContext ac = new ClassPathXmlApplicationContext(new
        // String[]{"spring.xml","spring-hibernate.xml"});
        // UserServiceI userService = (UserServiceI) ac.getBean("userService");
        User user = new User();
        user.setId(UUID.randomUUID().toString().replaceAll("-", ""));
        user.setName("孤傲苍狼");
        user.setPwd("123");
        user.setCreatedatetime(new Date());
        userService.save(user);
    }

    @After
    public void after() {
        context.close();
    }

}
