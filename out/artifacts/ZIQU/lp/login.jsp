<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<div style="text-align:center">
    <form action="/login" method="post" id="loginForm">
        姓名:<input type="text" name="uname" id="uname"> <br>
        密码:<input type="text" name="upwd" id="upwd"> <br>
        <span id="msg" style="font-size: 12px;color:red"></span><br>
        <button type="button" id="loginBtn">登录</button>
    </form>
</div>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
    $("#loginBtn").click(function(){
       var uname=$("#uname").val();
       var upwd=$("#upwd").val();
       if(isEmpty(uname)){
           $("#msg").html("用户姓名不可为空");
           return;
       }
        if(isEmpty(upwd)){
            $("#msg").html("用户密码不可为空");
            return;
        }
        $("#loginForm").submit();
    });
    function isEmpty(str)//判空
    {
        if(str==null||str.trim()==""){
            return true;
        }
        return false;
    }
</script>
</html>