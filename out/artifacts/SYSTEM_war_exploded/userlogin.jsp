<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/7
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        #bigLoginFrame {
            width: 400px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 40px;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            height: 40px;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            height: 40px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        #tip {
            color: red;
            font-size: 14px;
        }

    </style>
</head>
<body>
<div id="bigLoginFrame">
    <h1>教师管理系统</h1>
        <form action="userLogin" method="post" onclick="return checkLogin()">
            账户<input type="text"  name="userAccount" id="userAccount"><br>
            密码<input type="password"  name="userPassword" id="userPassword"><br>
            <input type="submit" value="登录"><br>
            <span id="tip">${tip}</span>
        </form>
    </div>
</div>
</body>
</html>
<script>
    function checkLogin()//前段验证
    {
        let userAccount=document.getElementById("userAccount").value;
        let userPassword=document.getElementById("userPassword").value;
        if(userAccount==null||userAccount.trim()==""){
            document.getElementById("tip").innerHTML="账户不能为空!";
            return false;
        }
        if(userPassword==null||userPassword.trim()==""){
            document.getElementById("tip").innerHTML="密码不能为空!";
            return false;
        }
        return true;
    }
</script>
