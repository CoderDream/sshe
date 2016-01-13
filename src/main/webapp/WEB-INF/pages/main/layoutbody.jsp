<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<base target="_self">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tiles:insertAttribute name="title" />
<link href="../resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/select.css" rel="stylesheet" type="text/css" />
<link href="../resources/css/eorder-style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../resources/images/favico_32.ico"
	type="image/x-icon" />

<script type="text/javascript" src="../resources/js/jquery.js"></script>
</head>
<body>
	<div class="panel onepage">
		<tiles:insertAttribute name="body" />
	</div>
</body>
</html>