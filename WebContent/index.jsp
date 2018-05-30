<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<!-- 把刚刚的那个header.jsp文件包含进去,里面就有了JqueryEasyUI所需要的文件了 -->
  	<jsp:include page="common/jsp/header.jsp"/>
    <title>电话簿</title>
    <style type="text/css">  
        #fm{  
            margin:0;  
            padding:10px 30px;  
        }  
        .ftitle{  
            font-size:14px;  
            font-weight:bold;  
            color:#666;  
            padding:5px 0;  
            margin-bottom:10px;  
            border-bottom:1px solid #ccc;  
        }  
        .fitem{  
            margin-bottom:5px;  
        }  
        .fitem label{  
            display:inline-block;  
            width:80px;  
        }   
    </style>  

   <script type="text/javascript">  
       var url;  
       function newUser(){  
           $('#dlg').dialog('open').dialog('setTitle','新建用户');  
           $('#fm').form('clear');  
           url = 'user/addUser';  
       }  
       function editUser(){  
           var row = $('#dg').datagrid('getSelected');  
           // alert(row.userId);  
         
           if (row){  
               $('#dlg').dialog('open').dialog('setTitle','编辑用户');  
               $('#fm').form('load',row);  
               //url = 'user/updateUser?id='+row.userId;  
               url ='user/updateUser';  
           }  
       }  
       function saveUser(){  
           $('#fm').form('submit',{  
               //url:'user/addUser',  
               url: url,  
               onSubmit: function(){  
                   return $(this).form('validate');  
               },  
               success: function(result){  
                   var result = eval('('+result+')');  
                   if (result.success){  
                       $.messager.show({  
                       title:'Info',  
                       msg:result.msg,  
                       showType:'fade',  
                       style:{  
                           right:'',  
                           bottom:''  
                           }  
                       });  
                       $('#dlg').dialog('close');      // close the dialog  
                       $('#dg').datagrid('reload');    // reload the user data  
                   } else {  
                       $.messager.show({  
                           title: 'Error',  
                           msg: result.msg  
                       });  
                   }  
               }  
           });  
       }  
       function removeUser(){  
           var row = $('#dg').datagrid('getSelected');  
            //alert(row.id);  
           if (row){  
               $.messager.confirm('Confirm','你确定要删除用户吗?',function(r){  
                   if (r){  
//                       $.post('user/removeUser',{id:row.userId},function(result){  
                       $.post('user/removeUser',{id:row.id},function(result){  
                           if (result.success){  
                               $.messager.show({  
                       title:'Info',  
                       msg:result.msg,  
                       showType:'fade',  
                        style:{  
                            right:'',  
                            bottom:''  
                            }  
                        });  
                                $('#dg').datagrid('reload');    // reload the user data  
                            } else {  
                                $.messager.show({   // show error message  
                                    title: 'Error',  
                                    msg: result.msg  
                                });  
                            }  
                        },'json');  
                    }  
                });  
            }  
        }  
//   function doSearch(){  
      //      $('#dg').datagrid('load',{  
      //      queryUserId: $('#userId').val()  
      //  });  
//}
	function doSearch() {
	//	alert(11);
         url:'user/selectID',  
        $('#fm').form('submit',{  
            url: url,  
            onSubmit: function(){  
                return $(this).form('validate');  
            },  
            success: function(result){  
                var result = eval('('+result+')');  
                if (result.success){  
                    $.messager.show({  
                    title:'Info',  
                    msg:result.msg,  
                    showType:'fade',  
                    style:{  
                        right:'',  
                        bottom:''  
                        }  
                    });  
                    $('#dlg').dialog('close');      // close the dialog  
                    $('#dg').datagrid('reload');    // reload the user data  
                } else {  
                    $.messager.show({  
                        title: 'Error',  
                        msg: result.msg  
                    });  
                }  
            }  
        }); 
	}
    </script>  

  </head>
  
  <body>
    <h2>Basic CRUD Application</h2>  
    <div class="demo-info" style="margin-bottom:10px">  
        <div class="demo-tip icon-tip"> </div>  
        <div>Click the buttons on datagrid toolbar to do crud actions.</div>  
    </div>  
   <div style="margin-top:20px;margin-left:0px">   
    <table id="dg" title="My Users" class="easyui-datagrid" style="width:700px;height:388px;"  
            url="user/showUserList"  
            toolbar="#toolbar" pagination="true"  
            rownumbers="true" fitColumns="true" singleSelect="true">  
        <thead>  
            <tr>  
                <th field="id" width="50">id</th>  
                <th field="name" width="50">name</th>  
                <th field="telephone" width="50">telephone</th>  
                <th field="bk" width="50">bk</th>  
                <th field="address" width="50">address</th>
                <th field="sex" width="50">sex</th>
            </tr>  
        </thead>       
    </table>  
 </div>
	<script>	
		$(function(){
			$('#dg').datagrid({
				lista: 'datagrid_data.json',
				//url: 'datagrid_data.json',
					 columns:[[
					           {field:'id',title:'ID号',width:50},
					           {field:'name',title:'姓名',width:50},
					           {field:'telephone',title:'手机号',width:50},
					           {field:'bk',title:'備考',width:50},
					           {field:'address',title:'ADDRESS',width:50},
					           {field:'sex',title:'性别',width:50}
					       ]]
			});
		});
	</script>
<%--     <table>
            <c:forEach items="${lista}" var="lista" varStatus="vs"> 
            <tr>
                <td field="userName" width="50">lista.name</th>  
                <td field="telephone" width="50">lista.telephone</th>  
                <td field="bk" width="50">lista.bk</th>  
                <td field="address" width="50">lista.address</th>
                <td field="sex" width="50">lista.sex</th>
            </tr> 
               </c:forEach>
            
    </table> --%>
    
    <div id="toolbar">  
        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New User</a>  
        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a>  
        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()">Remove User</a>  
        <div>  
            <span>User ID:</span>  
            <input id="userId" style="line-height:26px;border:1px solid #ccc">  
            <a href="javascript:void(0);" class="easyui-linkbutton" plain="true" onclick="doSearch()">Search</a>  
        </div>  
    </div>  
      
    <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"  
            closed="true" buttons="#dlg-buttons">  
        <div class="ftitle">User Information</div>  
        <form id="fm" method="post" novalidate>  
          <!--  <div class="fitem" style="display:none">   -->
           <div class="fitem"  style="display:none">  
                <label>UserId:</label>  
                <input name="id" >  
            </div>   
            <div class="fitem">  
                <label>UserName:</label>  
                <input name="name" class="easyui-validatebox" required="true">  
            </div>  
            <div class="fitem">  
                <label>telephone:</label>  
                <input name="telephone">  
            </div>  
            <div class="fitem">  
                <label>bk:</label>  
                <input name="bk"  >  
            </div>  
        </form>  
    </div>  
    <div id="dlg-buttons">  
        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>  
        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>  
    </div>  
</body>
</html>
