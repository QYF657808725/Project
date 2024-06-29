<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/27
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人员信息</title>
    <style>
        table {
            width: 100%; /* Full width of the container */
            border-collapse: collapse; /* Ensure borders collapse properly */
            margin-bottom: 20px; /* Spacing below the table */
        }
        th, td {
            border: 1px solid #888; /* Border color for rows and cells */
            padding: 8px 15px; /* Padding for cells */
            text-align: center; /* Center align text in cells */
        }
        th {
            font-weight: bold;
            background: #ccc;
        }
        /* Stripe odd rows */
        tr:nth-of-type(odd) {
            background-color: #f2f2f2;
        }
        /* Link styling */
        a {
            color: skyblue; /* Default link color */
            text-decoration: none; /* Remove underline */
        }
        /* Button styling */
        button {
            background-color: red; /* Red background color */
            color: white; /* White text color */
            border: none; /* Remove default button border */
            padding: 10px 20px; /* Padding inside the button */
            cursor: pointer; /* Change cursor to pointer on hover */
        }
        /* Outer container styling */
        .outer-container {
            border: 2px solid #888; /* Larger border around the outer container */
            border-radius: 10px; /* Rounded corners for the outer container */
            padding: 20px; /* Padding inside the outer container */
            margin-left:400px;
            margin-top:20px;
            width: 900px; /* Adjusted width for the outer container */
            max-width: 100%; /* Ensure it doesn't exceed viewport width */
            background-color: white; /* Red background color */
        }
    </style>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<div class="outer-container">
<table border="1" cellspacing="0"  class="con-b">
    <thead style="background-color: #888888">
    <tr  style="color: black;font-size: 25px" >
        <td style="width:25%">姓名</td>
        <td style="width:25%">学工号</td>
        <td style="width:25%">专业</td>
        <td style="width:25%">删除</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${arrr}" var="person">
        <tr>
            <td>
               <c:if test="${person.getUserIdentify()==1}">
                   <a style="color:sandybrown" href="zhuanyi?action=${person.getUserAccount()}">${person.getUserName()}</a>
            <td>${person.getUserIdCard()}</td>
            <td>${person.getUserOtherName()}</td>
               </c:if>
                <c:if test="${person.getUserIdentify()==0}">
                    <a style="color:skyblue" >${person.getUserName()}</a>
                    <td>${person.getUserIdCard()}</td>
                    <td>${person.getUserOtherName()}</td>
                </c:if>
            </td>
            <td>
                <button onclick="location.href='delete?action=${person.getUserAccount()}'">删除用户</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
    </div>
</body>
</html>

