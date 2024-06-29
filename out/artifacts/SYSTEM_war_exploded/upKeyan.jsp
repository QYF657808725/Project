<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/26
  Time: 10:51
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
        width: 100%;
        height: 120px;
        background-image: url("head2.jpg");
        background-size: cover;
        background-position: center;
        margin-bottom: 20px;
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
        width: 100%;
        height: 200px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        resize: vertical;
    }
    input[type="submit"] {
        margin-top: 10px;
        background-color: #28a745; /* 修改为蓝色 */
        color: #fff;
        cursor: pointer;
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3; /* 悬停颜色 */
    }
    #error2 {
        color: #dd1144;
        font-weight: bold;
    }
</style>
<body>
<div id="head"></div>
<br>
<jsp:include page="${'zuo.jsp'}"></jsp:include>
<div class="data_list">
    <h1>科研成果修改</h1>
    <div>
        <a style="float:left">输入科研成果：</a>
        <form method="post" action="update?action=truekeyan" onsubmit="return checkThisFile2()" >
            <textarea name="Keyan" id="Keyan" >${teacher.getResearch()}</textarea>
            <input type="submit" value="提交">
        </form>
        <span id="error2"></span>
        <script>
            var b = document.getElementById("Keyan").value;//原始数据
            function checkThisFile2() {
                let a = document.getElementById("Keyan").value;
                if(a.length>65535) {
                    document.getElementById("error2").innerHTML ="科研成果信息过长!" ;
                    return false;
                }
                if(a===b)
                {
                    document.getElementById("error2").innerHTML ="科研成果信息未修改!" ;
                    return false;
                }
                else{
                    return true;
                }
            }
        </script>
    </div>
</div>
