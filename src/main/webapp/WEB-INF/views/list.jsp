<%--
  Created by IntelliJ IDEA.
  User: hakyoungan
  Date: 2023/12/02
  Time: 3:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
    <th>Edit</th>
    <th>Delete</th>
  </tr>

  <c:forEach items="${list}" var="u">
    <td>${u.seq}</td>
    <td>${u.category}</td>
    <td>${u.title}</td>
    <td>${u.writer}</td>
    <td>${u.content}</td>
    <td>${u.regdate}</td>
    <td><a href="editform/${u.seq}">Edit</a></td>
    <td><a href="javascript:delete_ok${u.seq}">Delete</a></td>
  </c:forEach>

</table>
<br/><a href="add">Add New Post</a>

</body>
</html>
