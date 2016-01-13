<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  isErrorPage="true"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    Integer statusCode  = (Integer)request.getAttribute("javax.servlet.error.status_code");
    String  message     = (String) request.getAttribute("javax.servlet.error.message");
    String  requestUri  = (String) request.getAttribute("javax.servlet.error.request_uri");
    String  servletName = (String) request.getAttribute("javax.servlet.error.servlet_name");

    exception = (Throwable)request.getAttribute("javax.servlet.error.exception"); 
    String exceptionMessage = exception.getMessage();
    StringBuilder stackInfo = new StringBuilder();
    final String LINE_SEPARATOR = System.getProperty("line.separator");

    Throwable t = exception;
    while (t != null) {
        stackInfo.append(LINE_SEPARATOR + t.getClass().getName() + ": " + (t.getMessage() != null ? t.getMessage() : "") );
        StackTraceElement[] stackTraceElement = t.getStackTrace();
        for (int i = 0; i < stackTraceElement.length; ++i) {
            stackInfo.append(LINE_SEPARATOR + "        at " + stackTraceElement[i].toString() );
        }
        t = t.getCause();
    }    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error Page</title>
  </head>

  <body>
    <pre>
    statusCode:[<%=statusCode %>]
    </pre>
    <pre>
    requestUri:[<%=requestUri %>]
    </pre>
    <pre>
    servletName:[<%=servletName %>]
    </pre>     
    <%=exceptionMessage %> 
    <pre>
    <%=message %>
    </pre>
    <pre>
    <%=stackInfo.toString()%>
    </pre>
  </body>
</html>