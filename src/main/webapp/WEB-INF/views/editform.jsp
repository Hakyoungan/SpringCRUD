<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
</head>
<body>

<h1>Edit Post</h1>
<form action="../editok" method="post">
    <input type="hidden" name= "seq" value=${u. seq} />
    <table>
        <tr><td>Title:</td><td><input type="text" name="title" value="${u.title}"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer" value="${u.writer}"/></td></tr>
        <tr><td>Category:</td>
            <td>
                <select name="category">
                    <option value="general" ${u.category eq 'general' ? 'selected' : ''}>일반</option>
                    <option value="academic" ${u.category eq 'academic' ? 'selected' : ''}>학업</option>
                    <option value="scholarship" ${u.category eq 'scholarship' ? 'selected' : ''}>장학금</option>
                    <option value="work" ${u.category eq 'work' ? 'selected' : ''}>근로</option>
                </select>
            </td>
        </tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content">${u.content}</textarea></td></tr>
        <tr>
            <td align="right">
                <input type="submit" value="Update Post"/>
                <button type="button" onclick="history.back()">Cancel</button>
            </td>
        </tr>
</form>

</body>
</html>
