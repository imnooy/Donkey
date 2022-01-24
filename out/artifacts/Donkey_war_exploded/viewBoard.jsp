<%@ page import="com.donkey.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BoardBean board=(BoardBean) request.getAttribute("board");
%>
<html>
<head>
    <title>Donkey</title>
</head>
<body>
    <div class="view_Board">
        <h2>구덩이 파보기</h2>
        <form action="BoardServlet" method="post">
            <input type="hidden" name="command" value="board_checkPw"/>
            <input type="hidden" name="id" value="<%=board.getId()%>"/>
            <input type="password" name="input_pw" placeholder="암호"/>
            <input type="submit" name="act" value="수정"/>
            <input type="submit" name="act" value="삭제"/>
        </form>
        <table>
            <tr>
                <th>구덩이</th>
                <td><%=board.getTitle()%></td>
            </tr>
            <tr>
                <th>갓장이</th>
                <td><%=board.getNickname()%></td>
            </tr>
            <tr>
                <th>일시</th>
                <td><%=board.getDate().substring(2, 16)%></td>
            </tr>
            <tr>
                <th>소리</th>
                <td><%=board.getDescription()%></td>
            </tr>
        </table>
    </div>
</body>
</html>
