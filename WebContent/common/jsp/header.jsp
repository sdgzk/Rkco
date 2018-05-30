<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="common/jquery-easyui-1.5.2/demo/demo.css" type="text/css"></link>
	<link rel="stylesheet" href="common/jquery-easyui-1.5.2/themes/icon.css" type="text/css"></link>
	<link rel="stylesheet" href="common/jquery-easyui-1.5.2/themes/default/easyui.css" type="text/css"></link>
	<script type="text/javascript" src="common/jquery-easyui-1.5.2/jquery.min.js"></script>
	<script type="text/javascript" src="common/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="common/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
  	<script type="text/javascript">
  	</script>
  </head>
</html>
