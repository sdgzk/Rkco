<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@include file="common/jsp/header.jsp"%> --%>
<% String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="common/jquery-easyui-1.5.2/themes/icon.css" type="text/css"></link>
<link rel="stylesheet" href="common/jquery-easyui-1.5.2/themes/default/easyui.css" type="text/css"></link>
<script type="text/javascript" src="common/jquery-easyui-1.5.2/jquery.min.js"></script>
<script type="text/javascript" src="common/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript" src="common/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
<title>管理员登陆</title>

<script type="text/javascript">

function denglu(){
	var adminname = $("#username").val();
	var adminpwd = $("#password").val();
	if(adminname == ""){
		$.messager.alert('系统提示','用户名不能为空','info');
		event.returnValue = false;
	}else if(adminpwd == ""){
		$.messager.alert('系统提示','密码不能为空','info');
		event.returnValue = false;
	} else {
		 $.ajax({
		        type:"post",
		        url:"/Rkco/user/showUser1",
		        data:$(checkform).serialize(),
		        dataType:"json",
		        async:false,
		        success:function(data){
		          if (data == "0") {
		             //alert("密码或用户名错误！");
		          	// $("#msg").html("密码或用户名错误！");
		          	$.messager.alert('系统提示','密码或用户名错误','info');
		          	 return false;
		          } else {
		      	    document.checkform.action="/Rkco/user/showUser2";
		    	    document.checkform.submit();
		          }
		        }
			});
	}

}

function newUser(){
	 $('#dlg').dialog('open').dialog('setTitle','注册');
}

function closedlg(){
	$('#dlg').dialog('close');
}
function addUser(){
}
function addCompany(){
}
	// window.onload = function () {
        // document.getElementById('username').focus();
     //};
	</script>
</head>
<body>
<% session.invalidate(); %><!-- 销毁session -->
	<h2>Custom TextBox</h2>
	<p>This example shows how to custom a login form.</p>
	<div style="margin:20px 0;"></div>
	<div class="easyui-panel" title="Login to system" style="width:100%;max-width:400px;padding:30px 60px;">
		<div style="margin-bottom:10px">
			<input class="easyui-textbox" style="width:100%;height:40px;padding:12px" data-options="prompt:'Username',iconCls:'icon-man',iconWidth:38">
		</div>
		<div style="margin-bottom:20px">
			<input class="easyui-textbox" type="password" style="width:100%;height:40px;padding:12px" data-options="prompt:'Password',iconCls:'icon-lock',iconWidth:38">
		</div>
		<div style="margin-bottom:20px">
			<input type="checkbox" checked="checked">
			<span>Remember me</span>
		</div>
		<div>
			<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;">
				<span style="font-size:14px;">Login</span>
			</a>
		</div>
	</div>



</body>
</html>