<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/jsp/header.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 
<html>
<script language="javascript">
</script>
   <head>  
    <title>登录</title>
	 <script type="text/javascript" src="common/js/jquery-1.4.2.min.js"></script>
     <script type="text/javascript" src="common/js/jquery.validate.min.js"></script>
	<script type="text/javascript">
	
	
	// href
	function checkLogin1(){
		//window.location.href="teacherAction-idkanriList.action?Searchparameter.hikstino="+hikstino+"&Searchparameter.hgshkjnno="+hgshkjnno;
		// alert("sucess");
		var username = document.getElementById('username').value;
		var pass = document.getElementById('password').value;
		if (username =="admin" && pass =="admin") {
			window.location.href="http://localhost:8080/HNUST/user/showUser?id=1";
		} else {
			document.getElementById('msg').innerHTML="密码或用户名错误";
		}
	}
	// FORM
	function checkLogin2(){
	    document.checkform.action="/HNUST/user/showUser1";
	    document.checkform.submit();
	}
	// ajax + jsakon 
	function checkLogin3(){
		 $.ajax({
		        type:"post",
		        url:"/HNUST/user/showUser2",
		        data:$(checkform).serialize(),
		        dataType:"json",
		        async:false,
		        success:function(data){
		          if (data == "0") {
		             //alert("密码或用户名错误！");
		          	 $("#msg").html("密码或用户名错误！");
		          	 return false;
		          } else {
		      	    document.checkform.action="/HNUST/user/showUser1";
		    	    document.checkform.submit();
		          }
		        }
			});
	  
	}
	// FORM
	function checkLogin4(){
	    document.checkform.action="/HNUST/form/forms";
	    document.checkform.submit();
	}
	function checkLogin5(){
	   // document.checkform.action="/HNUST/form/forms";
	   // document.checkform.submit();
		window.location.href="jqury.jsp";
		// window.location.href="index.jsp";  --OK
	}
	</script>  
   </head>
  <body style="background:green">
  <input type="submit" value=“注册”  />
 <form id="checkform" name="checkform"  method="post" onsubmit="return false"> 
 <!--  <form id="checkform"  method="post"  action="/HNUST/user/showUser" > -->
        <table  align="center" cellpadding="10" style="widht:900px;margin-top:60px">
    
            <tr>
                <th style="widht:100px;font-size:12px"  > 用户名：</th>
                <td  style="widht:120px">
                    <input type="text" id="username" name="user.username" value="" style="width:100px" />
                </td>
            </tr>
            
            <tr>
                <th style="font-size:12px">密码：</th>
                <td>
                    <input type="password" id="password" name="user.password" value="" style="width:100px"/>
                </td>
            </tr>
           
            <tr style="">
            
                <td >
               <!--  <input type="submit" value="登录" id="login" /> -->
                     <input type="submit" value="登录1" onclick="checkLogin1()" />
                     
                    
                </td>
                <td>
                    <input type="reset" value="重置" />
                </td>
            </tr>
            <tr>
            <td ><input type="submit" value="登录2" onclick="checkLogin2()" /></td>
            <td ><a href="http://localhost:8080/HNUST/user/showUser?id=1">登录</a> </td>
            </tr>
			<tr>
			 <td ><input type="submit" value="登录3" onclick="checkLogin3()" /></td>
			 <td ><input type="submit" value="登录4" onclick="checkLogin4()" /></td>
			</tr>
			<tr>
			 <td ><input type="submit" value="登录5" onclick="checkLogin5()" /></td>
			</tr>
			<tr>
		    <td colspan="2">
				<FONT id="msg" color="red"></FONT>
			</td>
			</tr>
        </table>
    </form>
  </body>
</html>
