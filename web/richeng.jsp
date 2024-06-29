<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/9
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>日程</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .container {
            margin-left:300px;
            margin-top:20px;
            padding: 20px; /* 内边距，确保内容不会紧贴外框 */
            width: 1000px; /* 外框稍大一些 */
            border: 2px solid grey; /* 外框颜色和宽度 */
            border-radius: 15px; /* 圆角 */
            overflow: hidden; /* 防止边框外溢 */
            background-color:white;
        }
        table {
            width: 100%;
            border-collapse: collapse; /* 确保边框正确合并 */
        }
        tr, td {
            border: 1px solid grey; /* 单元格边框 */
            text-align: center;
        }
        td {
            height: 60px;
            vertical-align: middle;
        }
        th {
            font-weight: bold;
            background-color: #ccc; /* 表头背景色 */
        }
        .con-b .row .lf, .dayy1, .dayy2, .dayy3, .dayy4, .dayy5, .dayy6, .dayy7 {
            width: 15%;
            text-align: center;
            padding: 10px;
        }
        .con-b tr:nth-of-type(odd) {
            background-color: #f0f0f0; /* 奇数行背景色 */
        }
        .con-b tr:first-of-type {
            background-color: #cecccc; /* 第一行背景色稍深 */
        }
        #xingcheng {
            margin-bottom: 20px; /* 顶部外边距，调整以增加外框和内容之间的间距 */
            width: 1000px;
            border-radius: 10px;
            padding: 10px;
        }

    </style>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<div class="container">
<c:if test="${session_person.getUserIdentify()==0}"><!--学生日程栏包括预约和日程信息-->
<div id="xingcheng">
    <h1>日程安排</h1>
<table border="1" cellspacing="0"  class="con-b">
    <thead>
    <tr class="row" style="color: black;font-size: 25px" >
        <td class="dayy1"></td>
        <td class="dayy2"></td>
        <td class="dayy3"></td>
        <td class="dayy4"></td>
        <td class="dayy5"></td>
        <td class="dayy6"></td>
        <td class="dayy7"></td>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td class="lf">
                <c:if test="${teacher.getDay1()==0}">空闲</c:if>
                <c:if test="${(teacher.getDay1()==3&&!teacher.getDay1stu().equals(session_person.getUserName()))||(teacher.getDay1()==1&&!teacher.getDay1stu().equals(session_person.getUserName()))||teacher.getDay1()==2}">忙碌</c:if>
                <c:if test="${teacher.getDay1()==1&&teacher.getDay1stu().equals(session_person.getUserName())}">预约已发送</c:if>
                <c:if test="${teacher.getDay1()==3&&teacher.getDay1stu().equals(session_person.getUserName())}">预约已同意</c:if>
            </td>
            <td class="lf">
                <c:if test="${teacher.getDay2()==0}">空闲</c:if>
                <c:if test="${(teacher.getDay2()==3&&!teacher.getDay2stu().equals(session_person.getUserName()))||(teacher.getDay2()==1&&!teacher.getDay2stu().equals(session_person.getUserName()))||teacher.getDay2()==2}">忙碌</c:if>
                <c:if test="${teacher.getDay2()==1&&teacher.getDay2stu().equals(session_person.getUserName())}">预约已发送</c:if>
                <c:if test="${teacher.getDay2()==3&&teacher.getDay2stu().equals(session_person.getUserName())}">预约已同意</c:if>
            </td>
            <td class="lf">
                <c:if test="${teacher.getDay3()==0}">空闲</c:if>
                <c:if test="${(teacher.getDay3()==3&&!teacher.getDay3stu().equals(session_person.getUserName()))||(teacher.getDay3()==1&&!teacher.getDay3stu().equals(session_person.getUserName()))||teacher.getDay3()==2}">忙碌</c:if>
                <c:if test="${teacher.getDay3()==1&&teacher.getDay3stu().equals(session_person.getUserName())}">预约已发送</c:if>
                <c:if test="${teacher.getDay3()==3&&teacher.getDay3stu().equals(session_person.getUserName())}">预约已同意</c:if>
            </td>
            <td class="lf">
                <c:if test="${teacher.getDay4()==0}">空闲</c:if>
                <c:if test="${(teacher.getDay4()==3&&!teacher.getDay4stu().equals(session_person.getUserName()))||(teacher.getDay4()==1&&!teacher.getDay4stu().equals(session_person.getUserName()))||teacher.getDay4()==2}">忙碌</c:if>
                <c:if test="${teacher.getDay4()==1&&teacher.getDay4stu().equals(session_person.getUserName())}">预约已发送</c:if>
                <c:if test="${teacher.getDay4()==3&&teacher.getDay4stu().equals(session_person.getUserName())}">预约已同意</c:if>
            </td>
            <td class="lf">
                <c:if test="${teacher.getDay5()==0}">空闲</c:if>
                <c:if test="${(teacher.getDay5()==3&&!teacher.getDay5stu().equals(session_person.getUserName()))||(teacher.getDay5()==1&&!teacher.getDay5stu().equals(session_person.getUserName()))||teacher.getDay5()==2}">忙碌</c:if>
                <c:if test="${teacher.getDay5()==1&&teacher.getDay5stu().equals(session_person.getUserName())}">预约已发送</c:if>
                <c:if test="${teacher.getDay5()==3&&teacher.getDay5stu().equals(session_person.getUserName())}">预约已同意</c:if>
            </td>
            <td class="lf">
                <c:if test="${teacher.getDay6()==0}">空闲</c:if>
                <c:if test="${(teacher.getDay6()==3&&!teacher.getDay6stu().equals(session_person.getUserName()))||(teacher.getDay6()==1&&!teacher.getDay6stu().equals(session_person.getUserName()))||teacher.getDay6()==2}">忙碌</c:if>
                <c:if test="${teacher.getDay6()==1&&teacher.getDay6stu().equals(session_person.getUserName())}">预约已发送</c:if>
                <c:if test="${teacher.getDay6()==3&&teacher.getDay6stu().equals(session_person.getUserName())}">预约已同意</c:if>
            </td>
            <td class="lf">
                <c:if test="${teacher.getDay7()==0}">空闲</c:if>
                <c:if test="${(teacher.getDay7()==3&&!teacher.getDay7stu().equals(session_person.getUserName()))||(teacher.getDay7()==1&&!teacher.getDay7stu().equals(session_person.getUserName()))||teacher.getDay7()==2}">忙碌</c:if>
                <c:if test="${teacher.getDay7()==1&&teacher.getDay7stu().equals(session_person.getUserName())}">预约已发送</c:if>
                <c:if test="${teacher.getDay7()==3&&teacher.getDay7stu().equals(session_person.getUserName())}">预约已同意</c:if>
            </td>
        </tr>
    </tbody>
</table>
</div>
</c:if>
<c:if test="${session_person.getUserIdentify()==1}"><!--教师日程栏包括日程信息-->
<div id="xingcheng">
    <h1>日程安排</h1>
<table border="1" cellspacing="0"  class="con-b">
    <thead>
    <tr class="row" style="color: black;font-size: 25px" >
        <td class="dayy1"></td>
        <td class="dayy2"></td>
        <td class="dayy3"></td>
        <td class="dayy4"></td>
        <td class="dayy5"></td>
        <td class="dayy6"></td>
        <td class="dayy7"></td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="lf">
            <c:if test="${teacher.getDay1()==0}">空闲</c:if>
            <c:if test="${teacher.getDay1()==1}">${teacher.getDay1stu()}申请预约</c:if>
            <c:if test="${teacher.getDay1()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay1()==3}">${teacher.getDay1stu()}已预约</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay2()==0}">空闲</c:if>
            <c:if test="${teacher.getDay2()==1}">${teacher.getDay2stu()}申请预约</c:if>
            <c:if test="${teacher.getDay2()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay2()==3}">${teacher.getDay2stu()}已预约</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay3()==0}">空闲</c:if>
            <c:if test="${teacher.getDay3()==1}">${teacher.getDay3stu()}申请预约</c:if>
            <c:if test="${teacher.getDay3()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay3()==3}">${teacher.getDay3stu()}已预约</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay4()==0}">空闲</c:if>
            <c:if test="${teacher.getDay4()==1}">${teacher.getDay4stu()}申请预约</c:if>
            <c:if test="${teacher.getDay4()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay4()==3}">${teacher.getDay4stu()}已预约</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay5()==0}">空闲</c:if>
            <c:if test="${teacher.getDay5()==1}">${teacher.getDay5stu()}申请预约</c:if>
            <c:if test="${teacher.getDay5()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay5()==3}">${teacher.getDay5stu()}已预约</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay6()==0}">空闲</c:if>
            <c:if test="${teacher.getDay6()==1}">${teacher.getDay6stu()}申请预约</c:if>
            <c:if test="${teacher.getDay6()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay6()==3}">${teacher.getDay6stu()}已预约</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay7()==0}">空闲</c:if>
            <c:if test="${teacher.getDay7()==1}">${teacher.getDay7stu()}申请预约</c:if>
            <c:if test="${teacher.getDay7()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay7()==3}">${teacher.getDay7stu()}已预约</c:if>
        </td>
    </tr>
    </tbody>
</table>
</div>
</c:if>
</div>
<script>
    function updateDateDisplay() {
        var today = new Date();
        // 更新每个类别（dayy1, dayy2, ...）的日期显示
        for (var i = 1; i <= 7; i++) {
            var className = "dayy" + i;
            var futureDate = new Date(today);
            futureDate.setDate(today.getDate() + i );
            var dateFormatted = formatDate(futureDate);

            // 更新每个类别的日期显示
            var elements = document.getElementsByClassName(className); // 获取所有带有特定类名的元素集合
            for (var j = 0; j < elements.length; j++) {
                elements[j].textContent = dateFormatted;
            }
        }
    }

    // 格式化日期为 MM-DD
    function formatDate(date) {
        var month = date.getMonth() + 1; // JavaScript 中的月份是从 0 开始的
        var day = date.getDate();
        return (month < 10 ? '0' + month : month) + '-' + (day < 10 ? '0' + day : day);
    }

    // 页面加载时更新日期显示
    updateDateDisplay();

</script>
</body>
</html>

