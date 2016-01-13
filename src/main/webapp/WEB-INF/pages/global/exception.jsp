<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    exception = (Exception)request.getAttribute("exception");
    String message = exception.getMessage();
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
    <title>Exception Page</title>
  </head>

  <body>
    <%=message %>
    <pre>
      <%=stackInfo.toString()%>
    </pre>
  </body>
</html>