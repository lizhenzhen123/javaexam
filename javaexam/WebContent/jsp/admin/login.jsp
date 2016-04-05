<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录页面</title>
</head>
<body>

    <form name="loginForm" action="${pageContext.request.contextPath}/admin/login.action" method="post">
     <center>
             账号：<input type="text" name="admin.account" /><br/>
             密码：<input type="password" name="admin.password"/><br/>
       <input type="submit" value="登录"/>
     </center>
    </form>
    
</body>
</html>