<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table>
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Category:</td>
            <td>
                <select name="category">
                    <option value="general">일반</option>
                    <option value="academic">학업</option>
                    <option value="scholarship">장학금</option>
                    <option value="work">근로</option>
                </select>
            </td>
        </tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr>
            <td align="right">
                <input type="submit" value="Add Post"/>
                <button type="button" onclick="history.back()">Cancel</button>
            </td>
        </tr>

    </table>
</form>

</body>
</html>