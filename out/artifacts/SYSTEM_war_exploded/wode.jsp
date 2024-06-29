<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/28
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预约信息</title>
    <style>
        .table-container {
            margin-left:400px;
            margin-top: 20px;
            padding: 20px;
            width: 950px; /* 外容器略大于表格 */
            border: 2px solid grey; /* 外容器边框颜色和宽度 */
            border-radius: 15px; /* 外容器圆角 */
            background-color: #ffffff; /* 外容器背景色 */
        }
        table {
            width: 100%;
            border-collapse: collapse; /* 确保边框正确合并 */
        }
        th, td {
            border: 1px solid grey; /* 单元格边框 */
            padding: 15px;
            text-align: center;
        }
        th {
            background-color: #ccc; /* 表头背景色 */
            font-weight: bold;
            font-size: 25px;
            color: black;
        }
        tr:first-child {
            background-color: #bbb; /* 第一行背景色稍深 */
        }
        tr:nth-of-type(odd) {
            background-color: #f2f2f2; /* 奇数行背景色 */
        }
        .dayy1, .dayy2, .dayy3, .dayy4, .dayy5, .dayy6, .dayy7 {
            width: 15%;
            text-align: center;
            padding: 10px;
        }
        td {
            height: 40px;
        }
        tr:first-child .dayy1, tr:first-child .dayy2, tr:first-child .dayy3, tr:first-child .dayy4,
        tr:first-child .dayy5, tr:first-child .dayy6, tr:first-child .dayy7 {
            background-color: #ccc; /* 深灰色背景 */
            color: black; /* 文字颜色为黑色 */
        }

    </style>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

<div class="table-container">
<table border="1" cellspacing="0"  class="con-b">
    <thead>
    <tr class="row" style="color: black;font-size: 25px" >
        <td></td>
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
<c:forEach items="${arr5}" var="teacher">
    <tr>
        <td class="lf">
            ${teacher.getName()}
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay1()==1&&teacher.getDay1stu()==session_person.getUserName()}">已申请预约</c:if>
            <c:if test="${(teacher.getDay1()==0||teacher.getDay1()==2)&&teacher.getDay1stu()==session_person.getUserName()}">预约被拒绝</c:if>
            <c:if test="${teacher.getDay1()==3&&teacher.getDay1stu()==session_person.getUserName()}">预约已同意</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay2()==1&&teacher.getDay2stu()==session_person.getUserName()}">已申请预约</c:if>
            <c:if test="${(teacher.getDay2()==0||teacher.getDay2()==2)&&teacher.getDay2stu()==session_person.getUserName()}">预约被拒绝</c:if>
            <c:if test="${teacher.getDay2()==3&&teacher.getDay2stu()==session_person.getUserName()}">预约已同意</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay3()==1&&teacher.getDay3stu()==session_person.getUserName()}">已申请预约</c:if>
            <c:if test="${(teacher.getDay3()==0||teacher.getDay3()==2)&&teacher.getDay3stu()==session_person.getUserName()}">预约被拒绝</c:if>
            <c:if test="${teacher.getDay3()==3&&teacher.getDay3stu()==session_person.getUserName()}">预约已同意</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay4()==1&&teacher.getDay4stu()==session_person.getUserName()}">已申请预约</c:if>
            <c:if test="${(teacher.getDay4()==0||teacher.getDay4()==2)&&teacher.getDay4stu()==session_person.getUserName()}">预约被拒绝</c:if>
            <c:if test="${teacher.getDay4()==3&&teacher.getDay4stu()==session_person.getUserName()}">预约已同意</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay5()==1&&teacher.getDay5stu()==session_person.getUserName()}">已申请预约</c:if>
            <c:if test="${(teacher.getDay5()==0||teacher.getDay5()==2)&&teacher.getDay5stu()==session_person.getUserName()}">预约被拒绝</c:if>
            <c:if test="${teacher.getDay5()==3&&teacher.getDay5stu()==session_person.getUserName()}">预约已同意</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay6()==1&&teacher.getDay6stu()==session_person.getUserName()}">已申请预约</c:if>
            <c:if test="${(teacher.getDay6()==0||teacher.getDay6()==2)&&teacher.getDay6stu()==session_person.getUserName()}">预约被拒绝</c:if>
            <c:if test="${teacher.getDay6()==3&&teacher.getDay6stu()==session_person.getUserName()}">预约已同意</c:if>
        </td>
        <td class="lf">
            <c:if test="${teacher.getDay7()==1&&teacher.getDay7stu()==session_person.getUserName()}">已申请预约</c:if>
            <c:if test="${(teacher.getDay7()==0||teacher.getDay7()==2)&&teacher.getDay7stu()==session_person.getUserName()}">预约被拒绝</c:if>
            <c:if test="${teacher.getDay7()==3&&teacher.getDay7stu()==session_person.getUserName()}">预约已同意</c:if>
        </td>
    </tr>
</c:forEach>
    </tbody>
</table>
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

</script></div>
</body>
</html>
