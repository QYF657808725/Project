<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/8
  Time: 20:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人员信息</title>
<style>
    table {
        width: 100%; /* Full width of the container */
        border: 1px solid #888; /* Border around the table */
        border-collapse: collapse; /* Ensure borders collapse properly */
        margin-bottom: 20px; /* Spacing below the table */
        text-align: center;
    }
    tr, td {
        border: 1px solid #888; /* Border color for rows and cells */
        padding: 8px 15px; /* Padding for cells */
    }
    th {
        font-weight: bold;
        background: #ccc;
        border: 1px solid #888; /* Border for headers */
        padding: 8px 15px; /* Padding for headers */
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
    /* First row darker color */
    thead tr {
        background-color: #888; /* Adjust as needed for a darker color */
        color: black;
        font-size: 25px;
    }
    /* Outer container styling */
    .outer-container {
        border: 2px solid #888; /* Larger border around the outer container */
        border-radius: 10px; /* Rounded corners for the outer container */
        padding: 20px; /* Padding inside the outer container */
        margin-left:400px;
        margin-top:20px;
        width: 800px; /* Set a fixed width for the outer container */
        max-width: calc(100% - 40px); /* Ensure it doesn't overflow the viewport */
    }
</style>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<div class="outer-container">
<table border="1" cellspacing="0"  class="con-b">
    <thead>
    <tr class="row" style="color: black;font-size: 25px" >
        <th>姓名</th>
        <th>工号</th>
        <th>专业</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${arr}" var="person">
    <tr>
            <td class="lf">
                <a  href="zhuanyi?action=${person.getUserAccount()}">${person.getUserName()}</a>
            </td>
            <td>${person.getUserIdCard()}</td>
            <td>${person.getUserOtherName()}</td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>

