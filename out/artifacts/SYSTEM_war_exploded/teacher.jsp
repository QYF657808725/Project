<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/24
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师主页</title>
    <style>
        #head {
            width: 100%;
            height: 120px;
            background-image: url("head2.jpg");
            background-size: cover;
            background-position: center;
            border-bottom: 4px solid #ccc;
        }
        #jiben, #fangxiang, #keyan {
            margin-left:300px;
            margin-top:20px;
            padding: 20px;
            border: 2px solid #ccc;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 70%;
            max-width: 1190px;
        }
        #jiben img {
            border-radius: 10px;
            margin-right: 20px;
        }
        #jiben p {
            font-size: 16px;
            line-height: 1.6;
        }
        h1 {
            font-size: 24px;
            color: #333;
            border-bottom: 2px solid #ccc;
            padding-bottom: 10px;
        }
        a {
            font-size: 16px;
            color: #555;
            line-height: 1.8;
            display: block;
            padding: 10px 0;
        }
        .user-info {
            float: right;
            color: grey;
            font-size: 20px;
            margin: 10px;
        }
    </style>
</head>
<div id="head"></div>
<div class="user-info">当前用户: ${session_person.getUserName()}</div>
<jsp:include page="${'zuo.jsp'}"></jsp:include>
<div id="jiben" >
    <img src="img/${teacher.getImgurl()}" style="width:120px;height:150px;float:left">
    <p>
        &nbsp姓名&nbsp:&nbsp${teacher.getName()}&nbsp<br><br>
        &nbsp工号&nbsp:&nbsp${teacher.getId()}&nbsp<br><br>
        &nbsp专业&nbsp:&nbsp${teacher.getSpecialty()}&nbsp
    </p>
</div>
<div id="fangxiang">
    <h1>基本信息</h1>
    <a>${teacher.getBasic()}</a>
</div>
<div id="keyan">
    <h1>科研成果</h1>
    <a>${teacher.getResearch()}</a>
</div>
<jsp:include page="${mainBottom=null?'blank2.jsp':mainBottom}"></jsp:include>
</html>
