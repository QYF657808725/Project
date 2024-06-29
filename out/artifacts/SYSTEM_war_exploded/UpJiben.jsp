<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/26
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #ece9e6, #ffffff);
        margin: 0;
        padding: 0;
    }
    .data_list {
        max-width: 800px;
       margin-left:400px;
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
    textarea {
        overflow: hidden;
        width: 100%;
        height: 200px;
        border: 1px solid #ccc;
        border-radius: 4px;
        padding: 8px;
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
        background-color: #0056b3;
    }
    #error1 {
        color: #dd1144;
        font-weight: bold;
    }
    #head {
        width: 100%;
        height: 120px;
        background-image: url("head2.jpg");
        background-size: cover;
        background-position: center;
        margin-bottom: 20px;
    }
</style>
<body>
<div id="head"></div>
<br>
<jsp:include page="${'zuo.jsp'}"></jsp:include>
<div class="data_list">
    <h1>基本信息修改</h1>
    <div>
        <a style="float:left">输入基本信息：</a>
        <form method="post" action="update?action=truejiben" onsubmit="return checkThisFile1()" >
                        <textarea name="Jiben" id="Jiben" >${teacher.getBasic()}</textarea>
                        <input type="submit" value="提交">
        </form>
        <span id="error1"></span>

        <script>
            var b = document.getElementById("Jiben").value;//原始数据
            function checkThisFile1(){
                let a = document.getElementById("Jiben").value;
            if(a.length>65535) {
                document.getElementById("error1").innerHTML ="基本信息过长!" ;
                return false;
                }
            else if(a===b)
            {
                document.getElementById("error1").innerHTML ="基本信息未修改!" ;
                return false;
            }
            else {
                    return true;
                    }
                }
        </script>
    </div>
</div>

