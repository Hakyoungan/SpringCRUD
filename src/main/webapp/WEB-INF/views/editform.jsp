<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
</head>
<body>

<h1>Edit Post</h1>
<form action="editpost.jsp" method="post">
    <table>
        <tr><td>Title:</td><td><input type="text" name="title" value="${post.title}"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer" value="${post.writer}"/></td></tr>
        <tr><td>Category:</td>
            <td>
                <select name="category">
                    <option value="general" ${post.category eq 'general' ? 'selected' : ''}>일반</option>
                    <option value="academic" ${post.category eq 'academic' ? 'selected' : ''}>학업</option>
                    <option value="scholarship" ${post.category eq 'scholarship' ? 'selected' : ''}>장학금</option>
                    <option value="work" ${post.category eq 'work' ? 'selected' : ''}>근로</option>
                </select>
            </td>
        </tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content">${post.content}</textarea></td></tr>
        <tr><td><a href="posts.jsp">View All Records</a></td><td align="right"><input type="submit" value="Update Post"/></td></tr>
    </table>
    <input type="hidden" name="id" value="${post.id}"/>
</form>

</body>
</html>
