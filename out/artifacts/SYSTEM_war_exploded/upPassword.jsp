<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/25
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 20px;
        padding: 20px;
    }
    #head {
        width: 1430px;
        height: 120px;
        background-image: url("head2.jpg");
        background-size: cover;
        background-position: center;
        margin-bottom: 20px;
    }
    .data_list {
        max-width: 800px;
        margin-left: 400px;
        margin-top:20px;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        margin-top: 20px;
    }
    table {
        width: 100%;
        margin-bottom: 10px;
        border-collapse: collapse;
    }
    th {
        text-align: left;
        padding: 10px;
        background-color: #f0f0f0;
        border: 1px solid #ddd;
    }
    td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ddd;
    }
    input[type="password"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        margin-top: 10px;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }

    #error {
        color: #dd1144;
        font-weight: bold;
    }
    .user-info {
        float: right;
        color: grey;
        font-size: 20px;
        margin: 10px;
    }
</style>
<body>
<div id="head"></div>
<div class="user-info">当前用户: ${session_person.getUserName()}</div>
<jsp:include page="${'zuo.jsp'}"></jsp:include>
<div class="data_list">
    <h1>密码修改</h1>
    <div>
        <form method="post" action="update?action=truepassword" onsubmit="return checkThisFile()">
            <table>
                <tr>
                    <th>输入新密码：</th>
                    <td><input name="userPassword" id="userPassword" type="password"></td>
                </tr>
                <tr>
                    <th>再次输入密码：</th>
                    <td><input id="secondpassword" type="password">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input  type="submit" value="提交">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <span id="error"></span>
                    </td>
                </tr>
            </table>
        </form>
        <script>
            var b = "<c:out value='${session_person.getUserPassword()}'/>";//得到原密码
            function checkThisFile() {
                let userPassword = document.getElementById("userPassword").value;
                let a = document.getElementById("secondpassword").value;
                // (stuCode == null || stuCode == "")
                if ((a==null||a.trim()=="")||(userPassword==null||userPassword.trim()=="")) {
                    document.getElementById("error").innerHTML = "请输入两次完整密码";
                    return false;
                } else if(a!=userPassword) {
                    document.getElementById("error").innerHTML = "两次密码不一致";
                    return false;
                }
                else if(a===b)
                {
                    document.getElementById("error").innerHTML = "与原密码一致";
                    return false;
                }
                    else if(a.length>10) {
                        document.getElementById("error").innerHTML = "密码不能长于10位";
                        return false;
                    }
                else{
                    return true;
                }
            }
        </script>
    </div>
</div>
</body>

