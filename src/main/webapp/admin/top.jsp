<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/top.css" type="text/css" rel="stylesheet" />

  </head>
  
  <body>
    <div class="main">
		<div class="top_left"><img src="images/header_left.jpg"/></div>
		<div class="center">
		<span style="color:#FFFFFF;">
		当前管理员：${loginuser.username}</span>&nbsp;&nbsp;
		<a href="admin.php?do=menu_system" target="leftFrame">系统设置</a>&nbsp;&nbsp;
		<a href="admin.php?do=menu_content" target="leftFrame">内容管理</a>&nbsp;&nbsp;
		<a href="admin.php?do=menu_category" target="leftFrame">栏目管理</a>&nbsp;&nbsp;
		<a href="admin.php?do=menu_template" target="leftFrame">模板管理</a>&nbsp;&nbsp;
		<a href="admin.php?do=reflash" target="mainFrame">更新管理</a>&nbsp;&nbsp;
		<a href="admin.php?do=ext" target="mainFrame">插件管理</a>&nbsp;&nbsp;
		<a href="admin.php?do=main" target="mainFrame">管理首页</a>&nbsp;&nbsp;
		
		<a href="/" target="_blank">网站预览</a>&nbsp;&nbsp;
		<c:if test="${!empty loginuser}">
		 	 <a href="javascript:if(confirm('确定退出吗？')){location.href='loginout'}" target="_parent">退出系统</a>	 
		 	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 	 </c:if>
		
		</div>
		<div class="top_right"><img src="images/header_right.jpg"/></div>
	</div>
  </body>
</html>
