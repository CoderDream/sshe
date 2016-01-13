<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  isErrorPage="true"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    Integer statusCode  = (Integer)request.getAttribute("javax.servlet.error.status_code");
    String  message     = (String) request.getAttribute("javax.servlet.error.message");
    String  requestUri  = (String) request.getAttribute("javax.servlet.error.request_uri");
    String  servletName = (String) request.getAttribute("javax.servlet.error.servlet_name");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error 404 Page</title>
  </head>

  <body>
    404 ERROR
    
    <pre>
    statusCode:[<%=statusCode %>]
    </pre>
    <pre>
    requestUri:[<%=requestUri %>]
    </pre>
    <pre>
    servletName:[<%=servletName %>]
    </pre> 
    <pre>
    <%=message %>
    </pre>    
  </body>
</html>