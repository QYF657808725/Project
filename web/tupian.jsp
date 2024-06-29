<%--
  Created by IntelliJ IDEA.
  User: 65780
  Date: 2024/6/27
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新增教师</title>
</head>
<style>
    .data_list {
        max-width: 600px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
    }
    th {
        text-align: left;
        padding: 10px;
        background-color: #f0f0f0;
        border: 1px solid #ddd;
    }
    td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ddd;
    }
    input[type="text"], input[type="file"] {
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
        padding: 8px 16px;
        border: none;
        border-radius: 4px;
    }
    #tipp1 {
        color: #dd1144;
        font-weight: bold;
    }

</style>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="data_list">
    <h1>新增教师</h1>
    <div>
        <form method="post" action="guanli?action=truetea" enctype="multipart/form-data" onsubmit="return check()">
            <table>
                <tr>
                    <th>输入账户：</th>
                    <td><input name="teaAccount" id="teaAccount" type="text"></td>
                </tr>
                <tr>
                    <th>输入IdCard：</th>
                    <td><input  name="teaIdCard"id="teaIdCard" type="text">
                    </td>
                </tr>
                <tr>
                    <th>输入姓名：</th>
                    <td><input name="teaName" id="teaName" type="text">
                    </td>
                </tr>
                <tr>
                    <th>输入专业：</th>
                    <td><input name="teaSpecialty" id="teaSpecilaty" type="text">
                    </td>
                </tr>
                <tr>
                    <th>上传图片：</th>
                    <td> <input type="file" id="Img" name="Img"/>
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
                        <span style="color: #dd1144" id="tipp1">${tipp1}</span>
                    </td>
                </tr>
            </table>
        </form>
        <script>
            function check() {
                let a = document.getElementById("teaAccount").value;
                let b = document.getElementById("teaIdCard").value;
                let c = document.getElementById("teaName").value;
                let d = document.getElementById("Img").value;
                let e =document.getElementById("teaSpecilaty").value;
                if ((a==null||a.trim()=="")||(b==null||b.trim()=="")||(c==null||c.trim()=="")||(d==null||d.trim()=="")||(e==null||e.trim()=="")) {
                    document.getElementById("tipp1").innerHTML = "请输入完整信息";
                    return false;
                }
                else if(a.length>10)
                {
                    document.getElementById("tipp1").innerHTML = "账号不能长于10位";
                    return false;
                }
                else if(b.length>10)
                {
                    document.getElementById("tipp1").innerHTML = "id不能长于10位";
                    return false;
                }
                else if(c.length>255)
                {
                    document.getElementById("tipp1").innerHTML = "姓名不能长于255位";
                    return false;
                }
                else if(e.length>10)
                {
                    document.getElementById("tipp1").innerHTML = "专业不能长于255位";
                    return false;
                }
                else{
                    return true;
                }
            }
        </script>
    </div>
</div>
</html>