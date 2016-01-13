<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>

<script type="text/javascript" src="../resources/js/menu.js"></script>

<!--左侧菜单 begin-->
<div style="background: #f0f9fd;">
	<s:iterator value="menuList" id="banner">
		<dl class="leftmenu" >
			<s:hidden id="currentFunctionDesc" name="currentFunctionDesc" />
			<dd>
				<!--菜单头-->
				<div class="title" >
					<span><img src="<%=basePath%>/resources/images/leftico01.png" /></span>
					<s:property value="#banner.functionName" />
					<input type="hidden"
						id='menuTitle<s:property value="#banner.functionDesc" />'>
				</div>
				<ul class="menuson">
					<s:iterator value="#banner.list" id="subBanner">
						<!--菜单内容-->
						<li><input type="hidden"
							id='myText<s:property value="#subBanner.functionDesc" />'><cite></cite><a
							href='<%=basePath%><s:property value="#subBanner.link" />'><s:property
									value="#subBanner.functionName" /></a><i></i></li>
					</s:iterator>
				</ul>
			</dd>
		</dl>
	</s:iterator>
</div>
<!--左侧菜单 end-->