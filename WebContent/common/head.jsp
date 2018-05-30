
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	response.setHeader("Pragma","no-cache");
	response.setHeader("cache-control","no-cache");
	response.setDateHeader("expires",0);
%>
  	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="common/css/common.css" rel="stylesheet" type="text/css" /> 
    <link href="common/css/contents.css" rel="stylesheet" type="text/css" />
