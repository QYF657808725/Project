<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/27
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }

    .data_list {
        max-width: 600px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .data_list h1 {
        text-align: center;
        color: #333;
    }

    table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
    }

    table th {
        text-align: center;
        padding: 10px;
        background-color: #f0f0f0;
        border: 1px solid #ddd;
    }

    table td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ddd;
    }

    input[type="text"], input[type="submit"] {
        width: calc(100% - 20px);
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        margin-top: 10px;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
    }

    #tipp {
        color: #dd1144;
        font-size: 0.9em;
    }

</style>
<div class="data_list">
    <h1>新增学生</h1>
        <form method="post" action="guanli?action=truestu" onsubmit="return check()">
            <table>
                <tr>
                    <th>输入账户：</th>
                    <td><input name="stuAccount" id="stuAccount" type="text"></td>
                </tr>
                <tr>
                    <th>输入IdCard：</th>
                    <td><input  name="stuIdCard"id="stuIdCard" type="text">
                </td>
                </tr>
                <tr>
                    <th>输入姓名：</th>
                    <td><input name="stuName" id="stuName" type="text">
                    </td>
                    </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="提交">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <span id="tipp">${tipp}</span>
                    </td>
                </tr>
            </table>
        </form>
        <script>
            function check() {
                let a = document.getElementById("stuAccount").value;
                let b = document.getElementById("stuIdCard").value;
                let c = document.getElementById("stuName").value;
                if ((a==null||a.trim()=="")||(b==null||b.trim()=="")||(c==null||c.trim()=="")) {
                    document.getElementById("tipp").innerHTML = "请输入完整信息";
                    return false;
                }
                else if(a.length>10)
                {
                    document.getElementById("tipp").innerHTML = "账号不能长于10位";
                    return false;
                }
                else if(b.length>10)
                {
                    document.getElementById("tipp").innerHTML = "id不能长于10位";
                    return false;
                }
                else if(c.length>10)
                {
                    document.getElementById("tipp").innerHTML = "姓名不能长于255位";
                    return false;
                }
                else{
                    return true;
                }
            }
        </script>
    </div>