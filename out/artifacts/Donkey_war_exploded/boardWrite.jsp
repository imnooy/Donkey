<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Donkey</title>
</head>
<body>
<div class="write_form">
    <h2>구덩이 파기</h2>
    <form method="post" action="BoardServlet">
        <input type="hidden" value="write_list" name="command">
        <table>
            <tr>
                <th>구덩이</th>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <th>갓장이 이름</th>
                <td><input type="text" name="nickname"></td>
            </tr>
            <tr>
                <th>암호</th>
                <td><input type="password" name="pw"></td>
            </tr>
            <tr>
                <th>소리</th>
                <td><textarea cols="50" rows="10" name="description" placeholder="임금님 귀는 당나귀 귀"></textarea></td>
            </tr>
        </table>
        <input class="create_btn" type="submit" value="등록">
        <input class="cancel_btn" type="button" value="취소" onclick="javascript:history.back()">
    </form>
</div>
</body>
</html>
