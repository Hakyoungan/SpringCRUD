<%--
  Created by IntelliJ IDEA.
  User: hakyoungan
  Date: 2023/12/02
  Time: 3:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Title</title>
  <style>
    #list {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    #list td, #list th {
      border: 1px solid #ddd;
      padding: 8px;
      text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ddd;}
    #list th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      background-color: #006bb3;
      color: white;
    }
  </style>

</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
  <tr>
    <th>Id</th>
    <th>Category</th>
    <th>Title</th>
    <th>Writer</th>
    <th>Content</th>
    <th>Regdate</th>
    <th>View</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
<tr>
  <c:forEach items="${list}" var="u">
    <tr>
    <td>${u.seq}</td>
    <td>${u.category}</td>
    <td>${u.title}</td>
    <td>${u.writer}</td>
    <td>${u.content}</td>
    <td>${u.regdate}</td>
    <td><a href="<c:url value='/view/${u.seq}'/>">View</a></td>
    <td><a href="editform/${u.seq}">Edit</a></td>
    <td><a href="<c:url value='/deleteok/${u.seq}'/>">Delete</a></td>

</tr>
  </c:forEach>
</tr>

</table>
<br/><a href="add">Add New Post</a>

</body>
</html>
