<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="/LoginDemo/css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="/LoginDemo/css/themes/color.css">
	<script type="text/javascript" src="/LoginDemo/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="/LoginDemo/js/jquery.easyui.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#loginForm").form({
				url:"/LoginDemo/login",
				onSubmit:function(){
					//alert("先做验证表单参数合法！");
					//$.messager.alert('Warning','警告这里在做表单验证');
					//alert("如果想阻止提交，可以return false");
					 $.messager.confirm('阻止提交确认对话框','想阻止提交?',function(handler){   
					 	if (handler){
					 		alert('提交将会被阻止,因为onSubmit对应function返回false');
					 	}
					 });  
					/*  $.messager.show({
							title:'My Title',
							msg:'你是个人才, 表单提交都被禁止了，5秒后消息关闭!',
							timeout:5000,
							showType:'slide'
					 }); */
					 
					// show message window on top center
					 $.messager.show({
					 	title:'My Title',
					 	msg:'Message will be closed after 4 seconds.',
					 	showType:'show',
					 	style:{
					 		right:'',
					 		top:document.body.scrollTop+document.documentElement.scrollTop,
					 		bottom:''
					 	}
					 });
					 return false;
				},
				success:function(data){
					alert("测试form处理成功！");
				}
			});
		});
	</script>
<title>Insert title here</title>
</head>
<body>
	<form id="loginForm" method="post">
		<div>
			<label for="name">姓名:</label>
			<input type="text" name="name" value=""/>
		</div>
		<div>
			<label for="password">密码:</label>
			<input type="password" name="password"/>
		</div>
		<br/>
		<input type="submit" value="提交">
		<input type="reset" value="重置">
	</form>
</body>
</html>