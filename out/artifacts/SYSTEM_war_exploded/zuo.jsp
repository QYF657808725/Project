<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/24
  Time: 18:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>左侧导航</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        #daohang {
            width: 240px;
            float: left;
            border: 1px solid grey;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin: 20px;
            padding: 10px;
            border-radius: 8px;
        }

        #file {
            margin: 10px 0;
            padding: 15px;
            width: 210px;
            height: 50px;
            border: 1px solid grey;
            background-color: #87CEFA;
            border-radius: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: background-color 0.3s;
        }
        #file:hover {
            background-color: #00BFFF;
        }

        .nav-link {
            color: white;
            font-size: 18px;
            text-decoration: none;
            display: block;
        }
        .nav-button {
            color: white;
            font-size: 18px;
            background: none;
            border: none;
            cursor: pointer;
        }
        .ooop{
            margin-top: 10px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
        }
        .ooop :hover {
            background-color: #45a049;
        }

        .nav-input {
            width: 120px;
            height: 30px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
            padding-left: 10px;
        }
        .highlight {
            color: red;
            font-size: 14px;
            display: block;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<br>
<div id="daohang">
    <c:if test="${session_person.getUserIdentify()==0}"><!--学生导航栏-->
        <li id="file">
            <form action="ChaXun" method="post" onclick="return checkLogin()">
                <input type="text" class="nav-input" name="teachername" id="teachername"
                placeholder="教师检索">
                <input class="ooop" style="width:60px" type="submit" value="查询"><br>
                <span class="highlight" id="tip2">${tip2}</span>
            </form>
        </li>
        <li id="file">
            <form action="teacherTuiJian" method="post" onclick="return checkLogin()">
                <input type="text" class="nav-input" name="ZhuanYe" id="ZhuanYe" placeholder="教师推荐">
                <input class="ooop" style="width:60px" type="submit" value="查询"><br>
                <span class="highlight" id="tip3">${tip3}</span>
            </form>
        </li>
    <li id="file">
        <button class="nav-button" onclick="uppassword()">密码修改</button>
    </li>
    <li id="file">
        <button  class="nav-button" onclick="wodeyuyue()">我的预约</button>
    </li>
    <c:if test="${keyuyue.equals('true')}">
    <li id="file">
        <button  class="nav-button" onclick="yuyue()">预约教师</button>
    </li>
    </c:if>
    <li id="file">
        <button  class="nav-button" onclick="stuzhuye()">返回主页</button>
    </li>
        <li id="file">
            <a href="quit"  class="nav-link">退出系统</a>
        </li>
    </c:if>
    <c:if test="${session_person.getUserIdentify()==1}"><!--教师导航栏-->
    <li id="file">
        <button  class="nav-button" onclick="upjiben()">基本信息修改</button>
    </li>
    <li id="file">
        <button  class="nav-button" onclick="upkeyan()">科研成果修改</button>
    </li>
    <li id="file">
        <button class="nav-button" onclick="upricheng()">日程信息修改</button>
    </li>
    <li id="file">
        <button  class="nav-button" onclick="uppassword()">密码修改</button>
    </li>
    <li id="file">
        <button  class="nav-button" onclick="teazhuye()">返回主页</button>
    </li>
    <li id="file">
        <a href="quit"  class="nav-link">退出系统</a>
    </li>
    </c:if>
<c:if test="${session_person.getUserIdentify()==2}"><!--管理员导航栏-->
    <li id="file">
        <button  class="nav-button" onclick="newstu()">新增学生用户</button>
    </li>
    <li id="file">
        <button  class="nav-button" onclick="newtea()">新增教师用户</button>
    </li>
    <li id="file">
        <button  class="nav-button" onclick="look()">查看操作记录</button>
    </li>
    <li id="file">
        <button  class="nav-button" onclick="uppassword()">密码修改</button>
    </li>
    <li id="file">
        <button  class="nav-button" onclick="guanlizhuye()">返回主页</button>
    </li>
    <li id="file">
        <a href="quit"  class="nav-link">退出系统</a>
    </li>
    </c:if>
</div>
</body>
</html>
<script>
    function wodeyuyue()
    {
        window.location.href="wodeyuyue?action=chakan";
    }
    function newstu(){
        window.location.href="guanli?action=newstu";
    }
    function newtea(){
        window.location.href="guanli?action=newtea";
    }
    function uppassword(){
        window.location.href = "update?action=password";
        //window.open("update?action=password",null,"width=700,height=400,left=400,top=150",true);
    }
    function upjiben(){
        window.location.href = "update?action=jiben";
        //window.open("update?action=jiben",null,"width=700,height=400,left=400,top=150",true);
    }
    function upkeyan(){
        window.location.href = "update?action=keyan";
        //window.open("update?action=keyan",null,"width=700,height=400,left=400,top=150",true);
    }
    function yuyue(){
        window.location.href = "YuYue?action=first";
        //window.open("YuYue?action=first",null,"width=700,height=400,left=400,top=150",true);
    }
    function upricheng(){
        window.location.href = "update?action=richeng";
        //window.open("update?action=richeng",null,"width=1193,height=400,left=200,top=150",true);
    }
    function stuzhuye(){
        window.location.href = "zhuye?action=stu";
    }
    function guanlizhuye(){
        window.location.href = "zhuye?action=guanli";
    }
    function teazhuye(){
        window.location.href = "zhuye?action=tea";
    }
    function look(){
        window.location.href = "guanli?action=look";
    }

</script>