<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="common/jquery-easyui-1.5.2/themes/icon.css" type="text/css"></link>
<link rel="stylesheet" href="common/jquery-easyui-1.5.2/themes/default/easyui.css" type="text/css"></link>
<script type="text/javascript" src="common/jquery-easyui-1.5.2/jquery.min.js"></script>
<script type="text/javascript" src="common/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript" src="common/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
<title>公司注册画面</title>
</head>
<body>
	<center><h2>公司注册</h2></center>
<!-- 	<p>Active validation on first blur event.</p> -->
	<div style="margin:20px 0;"></div>
	<form id="checkform"  name="checkform"  method="post"   onsubmit="return false">
	<center>
	<div class="easyui-panel" title="Register" style="width:100%;max-width:400px;padding:30px 60px;">
		<div style="margin-bottom:20px">
			<label for="username" class="label-top">公司名称</label>
			<input id="username" class="easyui-validatebox tb"   data-options="required:true,validateOnCreate:false,validateOnBlur:true">
		</div>
		<div style="margin-bottom:20px">
			<label for="username" class="label-top">公司地址</label>
			<input id="username" class="easyui-validatebox tb" data-options="required:true,validateOnCreate:false,validateOnBlur:true">
		</div>
		<div style="margin-bottom:20px">
			<label for="email" class="label-top">公司邮箱:</label>
			<input id="email" class="easyui-validatebox tb" data-options="required:true,validType:'email',validateOnCreate:false,validateOnBlur:true">
		</div>
		<div style="margin-bottom:20px">
			<label for="url" class="label-top">公司网址:</label>
			<input id="url" class="easyui-validatebox tb" data-options="required:true,validType:'url',validateOnCreate:false,validateOnBlur:true">
		</div>
		<div style="margin-bottom:20px">
			<label for="phone" class="label-top">公司电话:</label>
			<input id="phone" class="easyui-validatebox tb" data-options="required:true,validateOnCreate:false,validateOnBlur:true">
		</div>
		<div style="margin-bottom:20px">
		<input type="submit" id="button" name="button" value=注册  style="height:30px;width:100px;background-color:#95B8E7;" />
		
		</div>
		<div style="margin-top:-50px;margin-left:160px" >
		<input type="reset" id="button" name="button" value=重置  style="height:30px;width:100px;background-color:#95B8E7;" />
		</div>
	</div>
	</center>
	</form>
	<style scoped="scoped">
		.tb{
			width:100%;
			margin:0;
			padding:5px 4px;
			border:1px solid #ccc;
			box-sizing:border-box;
		}
	</style>

</body>
</html>