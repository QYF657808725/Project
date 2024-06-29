<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/27
  Time: 0:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    #head {
        width: 100%;
        height: 120px;
        background-image: url("head2.jpg");
        background-size: cover;
        background-position: center;
    }
    #xingcheng {
        margin-left:300px;
        margin-top:20px;
        max-width: 900px;
        border: 2px grey solid;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 8px;
    }
    h1 {
        font-size: 24px;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table, th, td {
        border: 1px solid grey;
    }
    th, td {
        padding: 15px;
        text-align: center;
    }
    th {
        background-color: #ccc;
    }
    tr:nth-of-type(odd) {
        background-color: #f2f2f2;
    }
    .card {
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 8px;
        padding: 20px;
        margin-bottom: 20px;
    }
    #zuihou{
        display: flex;
        flex-direction: column;
    }
    .ddl{
        margin-bottom: 10px;
        font-size: 16px;
    }
    #why{
        width: 100px;
        align-self: flex-start;
        background-color: #4CAF50;
        border: none;
        padding: 10px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        color:white;
    }
    #why :hover {
        background-color: #45a049;
    }

    .highlight {
        color: red;
        font-size: 14px;
    }
    .day {
         width: 14.28%;
         text-align: center;
         padding: 10px;
     }
    .dayy1 {
        width: 14.28%;
        text-align: center;
        padding: 10px;
    }
    .dayy2 {
        width: 14.28%;
        text-align: center;
        padding: 10px;
    }
    .dayy3{
        width: 14.28%;
        text-align: center;
        padding: 10px;
    }
    .dayy4 {
        width: 14.28%;
        text-align: center;
        padding: 10px;
    }
    .dayy5 {
        width: 14.28%;
        text-align: center;
        padding: 10px;
    }
    .dayy6 {
        width: 14.28%;
        text-align: center;
        padding: 10px;
    }
    .dayy7 {
        width: 14.28%;
        text-align: center;
        padding: 10px;
    }
    .user-info {
        float: right;
        color: grey;
        font-size: 20px;
        margin: 10px;
    }
</style>
<div id="head"></div>
<br>
<jsp:include page="${'zuo.jsp'}"></jsp:include>
<body>
<div class="user-info">当前用户: ${session_person.getUserName()}</div>
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
        <td class="day">
            <c:if test="${teacher.getDay1()==0}">空闲</c:if>
            <c:if test="${(teacher.getDay1()==3&&!teacher.getDay1stu().equals(session_person.getUserName()))||(teacher.getDay1()==1&&!teacher.getDay1stu().equals(session_person.getUserName()))||teacher.getDay1()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay1()==1&&teacher.getDay1stu().equals(session_person.getUserName())}">预约已发送</c:if>
            <c:if test="${teacher.getDay1()==3&&teacher.getDay1stu().equals(session_person.getUserName())}">预约已同意</c:if>
        </td>
        <td class="day">
            <c:if test="${teacher.getDay2()==0}">空闲</c:if>
            <c:if test="${(teacher.getDay2()==3&&!teacher.getDay2stu().equals(session_person.getUserName()))||(teacher.getDay2()==1&&!teacher.getDay2stu().equals(session_person.getUserName()))||teacher.getDay2()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay2()==1&&teacher.getDay2stu().equals(session_person.getUserName())}">预约已发送</c:if>
            <c:if test="${teacher.getDay2()==3&&teacher.getDay2stu().equals(session_person.getUserName())}">预约已同意</c:if>
        </td>
        <td class="day">
            <c:if test="${teacher.getDay3()==0}">空闲</c:if>
            <c:if test="${(teacher.getDay3()==3&&!teacher.getDay3stu().equals(session_person.getUserName()))||(teacher.getDay3()==1&&!teacher.getDay3stu().equals(session_person.getUserName()))||teacher.getDay3()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay3()==1&&teacher.getDay3stu().equals(session_person.getUserName())}">预约已发送</c:if>
            <c:if test="${teacher.getDay3()==3&&teacher.getDay3stu().equals(session_person.getUserName())}">预约已同意</c:if>
        </td>
        <td class="day">
            <c:if test="${teacher.getDay4()==0}">空闲</c:if>
            <c:if test="${(teacher.getDay4()==3&&!teacher.getDay4stu().equals(session_person.getUserName()))||(teacher.getDay4()==1&&!teacher.getDay4stu().equals(session_person.getUserName()))||teacher.getDay4()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay4()==1&&teacher.getDay4stu().equals(session_person.getUserName())}">预约已发送</c:if>
            <c:if test="${teacher.getDay4()==3&&teacher.getDay4stu().equals(session_person.getUserName())}">预约已同意</c:if>
        </td>
        <td class="day">
            <c:if test="${teacher.getDay5()==0}">空闲</c:if>
            <c:if test="${(teacher.getDay5()==3&&!teacher.getDay5stu().equals(session_person.getUserName()))||(teacher.getDay5()==1&&!teacher.getDay5stu().equals(session_person.getUserName()))||teacher.getDay5()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay5()==1&&teacher.getDay5stu().equals(session_person.getUserName())}">预约已发送</c:if>
            <c:if test="${teacher.getDay5()==3&&teacher.getDay5stu().equals(session_person.getUserName())}">预约已同意</c:if>
        </td>
        <td class="day">
            <c:if test="${teacher.getDay6()==0}">空闲</c:if>
            <c:if test="${(teacher.getDay6()==3&&!teacher.getDay6stu().equals(session_person.getUserName()))||(teacher.getDay6()==1&&!teacher.getDay6stu().equals(session_person.getUserName()))||teacher.getDay6()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay6()==1&&teacher.getDay6stu().equals(session_person.getUserName())}">预约已发送</c:if>
            <c:if test="${teacher.getDay6()==3&&teacher.getDay6stu().equals(session_person.getUserName())}">预约已同意</c:if>
        </td>
        <td class="day">
            <c:if test="${teacher.getDay7()==0}">空闲</c:if>
            <c:if test="${(teacher.getDay7()==3&&!teacher.getDay7stu().equals(session_person.getUserName()))||(teacher.getDay7()==1&&!teacher.getDay7stu().equals(session_person.getUserName()))||teacher.getDay7()==2}">忙碌</c:if>
            <c:if test="${teacher.getDay7()==1&&teacher.getDay7stu().equals(session_person.getUserName())}">预约已发送</c:if>
            <c:if test="${teacher.getDay7()==3&&teacher.getDay7stu().equals(session_person.getUserName())}">预约已同意</c:if>
        </td>
    </tr>
    </tbody>
</table>
<div class="card">
    <h1>预约老师</h1>
    <form id="zuihou" method="post" action="YuYue?action=second" onsubmit="return checkThisFile4()" >
        <label class="ddl" for="riqi">预约日期:</label>
        <select class="ddl" id="riqi" name="riqi">
        </select>
        <br>
        <input id="why" class="ddl" type="submit" value="预约"><br>
        <span class="highlight" id="tip4">${tip4}</span>
    </form>
    <script>
        function generateDateOptions() {
            var dateSelect = document.getElementById("riqi");
            var today = new Date();
            var options = "";

            for (var i = 0; i < 7; i++) {
                var futureDate = new Date();
                futureDate.setDate(today.getDate() + i+ 1);

                var day = futureDate.getDate();
                var month = futureDate.getMonth() + 1; // JavaScript 中的月份是从 0 开始的

                // 格式化日期为 MM-DD
                var formattedDate = (month < 10 ? '0' + month : month) + '-' + (day < 10 ? '0' + day : day);
                var optionValue = "day" + (i + 1); // 实际传递的值，例如 day1, day2, ...

                // 构建选项的 HTML
                options += '<option value="' + optionValue + '">' + formattedDate + '</option>';
            }
            // 将所有选项添加到 select 元素中
            dateSelect.innerHTML = options;
        }
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
        // 页面加载时生成日期选项
         generateDateOptions();
    </script>
</div>
</div>
</body>
</html>
