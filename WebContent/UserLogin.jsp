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
<style type="text/css">
  body{
  background:url("images/ryoukaFengmian.jpg");
  /*background-size:1280px 1024px;*/
  /*background-size:100% 100%;*/
  background-size:100%;
  }
  </style>
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
<body >
<% session.invalidate(); %><!-- 销毁session -->
<!-- 登陆窗口 -->  
<div id="win" class="easyui-window" title="用户登陆窗口" style="width:400px;height:330px;"
	data-options="iconCls:'icon-save',footer:'#footer',closable:false,collapsible:false,minimizable:false,maximizable:false,modal:true,resizable:false,draggable:false">   
	<form id="checkform"  name="checkform"  method="post"   onsubmit="return false">
		<center>
			<div style="padding-top:10px;">
				<!-- <img alt="logo" src="images/denglu.png">	 -->
				<!-- <img alt="logo" src="images/ryoukaLogo.jpg">	 -->
				<h3><label>生物识别智能安全云办公平台</label></h3>
			</div>
			<div style="height:70px;padding-top:20px;">
				<label><font size="3">用户名：</font></label>
				<!-- <input type="text" id="username" name="username" style="width:150px;height:20px;line-height:20px;" /><br><br> -->
				<input class="easyui-textbox" prompt="请输入用户名"  id="username" iconWidth="28" style="width:150px;height:30px;padding:10px;"><br><br>
				
				<label><font size="3">密&nbsp;&nbsp;&nbsp;&nbsp;码：</font></label>
				<!-- <input type="password" id="password" name="password" style="width:150px;height:20px;line-height:20px;" /> -->
				<input class="easyui-passwordbox" prompt="请输入密码" id="password" iconWidth="28" style="width:150px;height:30px;padding:10px;">
			</div>
			<!-- <div id="viewer"></div> -->
 		<div>
 		
				<p><h4 style="color:red;">&nbsp;${requestScope.erroe }</h4></p>
				<FONT id="msg" color="red"></FONT>
			</div> 
			<div style="padding-top:5px;margin-top:0px">
			 	<input type="submit" id="button" name="button" value="登陆" onclick="denglu()" style="height:30px;width:100px;background-color:#95B8E7;" />
			 	&nbsp;&nbsp;
				<input type="reset" id="button" name="button" value="重置"  style="height:30px;width:100px;background-color:#95B8E7;" />
			</div>
			<div style="padding-top:5px;margin-left:190px">
			 <a  href="javascript:void(0);"  onclick="newUser()">注册</a>
			</div>
			
		</center>
	</form>   
</div>
<div id="footer" style="padding:3px;"><font size="2"><center>All copyrights reserved ©2017 Ryouka Science & Technology Co.,Ltd.</center></font></div>

	<script type="text/javascript">
		$('#password').passwordbox({
			inputEvents: $.extend({}, $.fn.passwordbox.defaults.inputEvents, {
				keypress: function(e){
					var char = String.fromCharCode(e.which);
					$('#viewer').html(char).fadeIn(200, function(){
						$(this).fadeOut();
					});
				}
			})
		})
	</script>
	<style>
		#viewer{
			position: relative;
			padding: 0 60px;
			top: -70px;
			font-size: 54px;
			line-height: 60px;
		}
	</style>
	    <div id="dlg" class="easyui-dialog" style="width:300px;height:150px;padding:10px 20px"  
            closed="true" buttons="#dlg-buttons">  
       <!--  <div class="ftitle">注册</div>   -->
       <!--  <form id="fm" method="post" novalidate>  
       		
        </form>   -->
        <center> <a  href="UserAdd.jsp"  onclick="addUser()" >用户注册</a> </center>
        <br></br>
         <center> <a  href="CompanyAdd.jsp"  onclick="addCompany()">公司注册</a></center>
        
    </div>  
    <div id="dlg-buttons">  
        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-no" onclick="closedlg()">关闭</a>  
    </div> 
    
<!--     <div id="dlgadd" class="easyui-dialog" style="width:300px;height:150px;padding:10px 20px"  
            closed="true" buttons="#dlg-buttonsadd">  
        
    </div>  
    <div id="#dlg-buttonsadd"> 
        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-no" onclick="closedlg()">关闭</a>  
    </div>  -->
</body>
</html>