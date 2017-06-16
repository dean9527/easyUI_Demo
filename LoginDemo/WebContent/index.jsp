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
					alert("先做验证表单参数合法！");
					alert("如果想阻止提交，可以return false");
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