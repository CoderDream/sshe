package me.gacl.action;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @Title: BaseAction
 * @Description: Action基类
 *
 * @version V1.0
 */
public class BaseAction extends ActionSupport {

    /** 对象序列化ID */
    private static final long serialVersionUID = 6286143366540227001L;

    protected Logger logger = Logger.getLogger(this.getClass());

}