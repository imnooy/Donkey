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
    <div class="view_Board">
        <h2 style="text-align: left;"><%=board.getTitle()%></h2>
        <div style="text-align: right; margin-bottom: 10px;">
            <span>글쓴 갓장이: <%=board.getNickname()%>  |  <%=board.getDate().substring(2, 16)%></span>
        </div>
        <form action="BoardServlet" method="post" style="text-align: right">
            <input type="hidden" name="command" value="board_checkPw"/>
            <input type="hidden" name="id" value="<%=board.getId()%>"/>
            <input type="password" name="input_pw" id="pw_txt" placeholder="암호"/>
            <input type="submit" name="act" value="수정"/>
            <input type="submit" name="act" value="삭제"/>
        </form>
        <div style="text-align: left;">
            <%=board.getDescription()%>
        </div>
    </div>
</body>
</html>
