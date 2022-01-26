<%@ page import="com.donkey.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BoardBean board=(BoardBean) request.getAttribute("board");
%>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
    <title>Donkey</title>
</head>
<body>
<center>
    <div><a href="BoardServlet?command=view_list"><img src="/img/ear.png" style="width: 200px; height: 150px;"></a></div>
</center>
<div class="update_form">
    <h2>구덩이 파기</h2>
    <form method="post" action="BoardServlet">
        <input type="hidden" value="<%=board.getId()%>" name="id"/>
        <input type="hidden" value="update_board" name="command">
        <table>
            <tr>
                <th>구덩이 이름</th>
                <td><input type="text" name="title" value="<%=board.getTitle()%>"></td>
            </tr>
            <tr>
                <th>글쓴 갓장이</th>
                <td><input type="text" name="nickname" value="<%=board.getNickname()%>"></td>
            </tr>
            <tr>
                <th>암호</th>
                <td><input type="password" name="pw" value="<%=board.getPw()%>"></td>
            </tr>
            <tr>
                <th>소리</th>
                <td><textarea cols="50" rows="10" name="description"><%=board.getDescription()%></textarea></td>
            </tr>
        </table>
        <input class="create_btn" type="submit" value="등록">
        <input class="cancel_btn" type="button" value="취소" onclick="javascript:history.back()">
    </form>
</div>
</body>
</html>
