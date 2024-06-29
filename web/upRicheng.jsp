<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/26
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>日程</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        #head {
            width: 100%;
            height: 120px;
            background-image: url("head2.jpg");
            background-size: cover;
        }
        #xingcheng {
            width: 75%;
            margin-left:300px;
            margin-top:50px;
            padding: 20px;
            background-color: #fff;
            border: 2px solid #dee2e6;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #343a40;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dee2e6;
            padding: 15px;
            text-align: center;
        }
        th {
            background-color: #6c757d;
            color: #fff;
        }
        tr:nth-of-type(odd) {
            background-color: #f8f9fa;
        }
        select {
            width: 80%;
            padding: 10px;
            font-size: 16px;
        }
        input[type="submit"] {

            width: 10%;
            padding: 10px;
            font-size: 16px;
            background-color: #28a745;
            color: #fff;
            border: none;
            cursor: pointer;
            display:block;
            margin:0 auto;
        }
        input[type="submit"]:hover {
            background-color: #0056b3; /* 悬停颜色 */
        }
    </style>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<div id="head"></div>
<br>
<jsp:include page="${'zuo.jsp'}"></jsp:include>
<body>
<div id="xingcheng">
    <h1>日程安排</h1>
<form method="post" action="update?action=truericheng" onsubmit="return checkThisFile3()">
<table>
    <thead>
    <tr>
        <td class="dayyy1"></td>
        <td class="dayyy2"></td>
        <td class="dayyy3"></td>
        <td class="dayyy4"></td>
        <td class="dayyy5"></td>
        <td class="dayyy6"></td>
        <td class="dayyy7"></td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="lff">
            <select id="dayy1" name="dayy1">
<c:if test="${teacher.getDay1()==0}">
    <option value="free">空闲</option>
    <option value="busy">忙碌</option>
</c:if>
                <c:if test="${teacher.getDay1()==1}">
                    <option value="${teacher.getDay1stu()}">同意${teacher.getDay1stu()}预约</option>
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay1()==2}">
                    <option value="busy">忙碌</option>
                    <option value="free">空闲</option>
                </c:if>
                <c:if test="${teacher.getDay1()==3}">
                    <option value="${teacher.getDay1stu()}">${teacher.getDay1stu()}已预约</option>
                </c:if>
            </select>
        </td>
        <td class="lff">
            <select id="dayy2" name="dayy2">
                <c:if test="${teacher.getDay2()==0}">
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay2()==1}">
                    <option value="${teacher.getDay2stu()}">同意${teacher.getDay2stu()}预约</option>
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay2()==2}">
                    <option value="busy">忙碌</option>
                    <option value="free">空闲</option>
                </c:if>
                <c:if test="${teacher.getDay2()==3}">
                    <option value="${teacher.getDay2stu()}">${teacher.getDay2stu()}已预约</option>
                </c:if>
            </select>
        </td>
        <td class="lff">
            <select id="dayy3" name="dayy3">
                <c:if test="${teacher.getDay3()==0}">
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay3()==1}">
                    <option value="${teacher.getDay3stu()}">同意${teacher.getDay3stu()}预约</option>
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay3()==2}">
                    <option value="busy">忙碌</option>
                    <option value="free">空闲</option>
                </c:if>
                <c:if test="${teacher.getDay3()==3}">
                    <option value="${teacher.getDay3stu()}">${teacher.getDay3stu()}已预约</option>
                </c:if>
            </select>
        </td>
        <td class="lff">
            <select id="dayy4" name="dayy4">
                <c:if test="${teacher.getDay4()==0}">
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay4()==1}">
                    <option value="${teacher.getDay4stu()}">同意${teacher.getDay4stu()}预约</option>
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay4()==2}">
                    <option value="busy">忙碌</option>
                    <option value="free">空闲</option>
                </c:if>
                <c:if test="${teacher.getDay4()==3}">
                    <option value="${teacher.getDay4stu()}">${teacher.getDay4stu()}已预约</option>
                </c:if>
            </select>
        </td>
        <td class="lff">
            <select id="dayy5" name="dayy5">
                <c:if test="${teacher.getDay5()==0}">
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay5()==1}">
                    <option value="${teacher.getDay5stu()}">同意${teacher.getDay5stu()}预约</option>
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay5()==2}">
                    <option value="busy">忙碌</option>
                    <option value="free">空闲</option>
                </c:if>
                <c:if test="${teacher.getDay5()==3}">
                    <option value="${teacher.getDay5stu()}">${teacher.getDay5stu()}已预约</option>
                </c:if>
            </select>
        </td>
        <td class="lff">
            <select id="dayy6" name="dayy6">
                <c:if test="${teacher.getDay6()==0}">
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay6()==1}">
                    <option value="${teacher.getDay6stu()}">同意${teacher.getDay6stu()}预约</option>
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay6()==2}">
                    <option value="busy">忙碌</option>
                    <option value="free">空闲</option>
                </c:if>
                <c:if test="${teacher.getDay6()==3}">
                    <option value="${teacher.getDay6stu()}">${teacher.getDay6stu()}已预约</option>
                </c:if>
            </select>
        </td>
        <td class="lff">
            <select id="dayy7" name="dayy7">
                <c:if test="${teacher.getDay7()==0}">
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay7()==1}">
                    <option value="${teacher.getDay7stu()}">同意${teacher.getDay7stu()}预约</option>
                    <option value="free">空闲</option>
                    <option value="busy">忙碌</option>
                </c:if>
                <c:if test="${teacher.getDay7()==2}">
                    <option value="busy">忙碌</option>
                    <option value="free">空闲</option>
                </c:if>
                <c:if test="${teacher.getDay7()==3}">
                    <option value="${teacher.getDay7stu()}">${teacher.getDay7stu()}已预约</option>
                </c:if>
            </select>
        </td>
    </tr>
    </tbody>
</table>
    <input type="submit" value="提交" >
</form>
</div>
<script>
    function updateDateDisplay() {
        var today = new Date();
        // 更新每个类别（dayy1, dayy2, ...）的日期显示
        for (var i = 1; i <= 7; i++) {
            var className = "dayyy" + i;
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
