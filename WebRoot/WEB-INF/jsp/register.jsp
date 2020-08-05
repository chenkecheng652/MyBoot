<%--
  Created by IntelliJ IDEA.
  User: ckc
  Date: 2020/5/15
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>注册页面</title>
<style type="text/css">
    body{
        margin: 0;
        padding: 0;
        background-color: #F7F7F7;
        overflow:hidden;
    }
    input{
        width:150px;
        height:20px;
        margin-top:10px;
    }
    input[type=submit]{
        width: 50px;
        height: 20px;
    }
</style>
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
      background="${pageContext.request.contextPath}/images/rightbg.jpg">
<div id="register">
<form action="${pageContext.request.contextPath }/logout.action" method="post">
    <br><br><br><br><br><br><br><br><br>
    <center>账号:<input type="text" id="username"></center>
    <center>密码:<input type="password" id="password"></center>
    <center>姓名:<input type="text" id="name"></center>
    <center>性别:<input type="text" id="sex"></center>
    <center>年龄:<input type="text" id="age"></center>
    <center><input type="submit" name="submit" value="注册" onclick="a()"></center>
</form>
</div>
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
    function a() {
        alert("注册成功");
    }
</script>
</body>
</html>
