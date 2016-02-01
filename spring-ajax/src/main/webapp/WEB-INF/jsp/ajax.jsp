<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Ajax实现</title>
<script type="text/javascript" src="/resource/js/jquery-1.12.0.min.js"></script>
</head>
<body>
	<h1>Spring Ajax</h1>
	<span id="content" style="color:blue"></span>
	<button onclick="ajaxRequest()" style="color:red">Button</button>
	<script type="text/javascript">
		function ajaxRequest(){
			$.ajax({
				url:'/ajax',
				type:'POST',
				dataType:'json',
				data:{
					"name":"Allen",
					"age":25
				},
				success:function(data){
					$("#content").html(data.age);
				},
				error:function(){
					alert("error")
				}
				
			});
		}
	</script>
</body>
</html>