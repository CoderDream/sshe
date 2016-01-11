package me.gacl.test;

import me.gacl.service.UserServiceI;

import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpring {

    @Test
    public void test() {
        // 通过spring.xml配置文件创建Spring的应用程序上下文环境
        AbstractApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
        // 从Spring的IOC容器中获取bean对象
        UserServiceI userService = (UserServiceI) context.getBean("userService");
        // 执行测试方法
        userService.test();

        // 关闭context
        context.close();
    }
}