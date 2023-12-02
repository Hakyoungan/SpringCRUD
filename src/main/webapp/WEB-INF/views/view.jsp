<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Post</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        th:first-child,
        td:first-child {
            background-color: #006bb3; /* Blue color */
            color: white; /* White text color */
        }
    </style>
</head>
<body>

<h1>View Post</h1>
<table>
    <tr>
        <td>ID:</td>
        <td>${u.seq}</td>
    </tr>
    <tr>
        <td>Title:</td>
        <td>${u.title}</td>
    </tr>
    <tr>
        <td>Writer:</td>
        <td>${u.writer}</td>
    </tr>
    <tr>
        <td>Category:</td>
        <td>${u.category}</td>
    </tr>
    <tr>
        <td>Content:</td>
        <td>${u.content}</td>
    </tr>
    <tr>
        <td>Regdate:</td>
        <td>${u.regdate}</td>
    </tr>

</table>
<br/><input type="button" value="Cancel" onclick="history.back()"/></td></tr>

</body>
</html>
