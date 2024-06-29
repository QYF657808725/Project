<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/8
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>学生主页</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            margin: 0;
            padding: 0;
        }
        #BigBodyFrame{
            width: 1430px;
            height: 120px;
            background-image: url("head2.jpg");
            background-size: cover;
            background-position: center;
            margin-bottom: 20px;
        }
        a {
            color: white;
            font-size: 20px;
            text-decoration: none;
        }
        .user-info {
            float: right;
            color: grey;
            font-size: 20px;
            margin: 10px;
        }
    </style>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" media="screen">
</head>
<body>
<div id="BigBodyFrame"></div>
<div class="user-info">当前用户: ${session_person.getUserName()}</div>
<jsp:include page="${'zuo.jsp'}"></jsp:include>
<jsp:include page="${mainRight=null?'blank.jsp':mainRight}"></jsp:include>
</body>
</html>
