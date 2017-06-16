<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="/MessagerDemo1/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="/MessagerDemo1/css/themes/color.css">
<script type="text/javascript"
	src="/MessagerDemo1/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript"
	src="/MessagerDemo1/js/jquery.easyui.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$.messager.confirm('确认对话框例子', '确认做这件事?', function(handler) {
					if (handler) {
						//①警告alert消息框
						//$.messager.alert('Warning', '警告你已经确认做这件事了');
						//② 展示在顶部的消息框
						/*$.messager.show({
							title : '窗口个顶部4秒后关闭消息框',
							msg : '消息框4秒后关闭.',
							showType : 'show',
							style : {
								right : '',
								top : document.body.scrollTop
										+ document.documentElement.scrollTop,
								bottom : ''
							}
						});*/
						//③你是个人才消息框，消息在右下角
						$.messager.show({
						title:'少年你好厉害',
						msg:'你是个人才，你赢了，消息在右下角哦!',
						timeout:5000,
						showType:'slide'
						});
					}
				});

			});
</script>
<title>Insert title here</title>
</head>
<body>
</body>
</html>