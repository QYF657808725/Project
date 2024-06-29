<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/27
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    .lookk{
        margin-left:400px;
        margin-top:20px;
        padding: 20px;
        border: 2px solid #ccc;
        border-radius: 10px;
        background: rgba(255, 255, 255, 0.9);
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 70%;
        max-width: 800px; /* Adjust width as needed */
    }
</style>
<head>
    <title>日志</title>
</head>
<div class="lookk">
${riZhi.getDay1text()}
</div>
<div class="lookk">
${riZhi.getDay2text()}
</div>
<div class="lookk">
${riZhi.getDay3text()}
</div>
</html>
