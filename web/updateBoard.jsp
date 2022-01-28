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
    <script>
        function checkForm() {
            var f=document.updateForm;
            if (document.getElementById("u_title").value == null || document.getElementById("u_title").value == '') {
                alert('제목을 입력해주세요.');
                document.getElementById("u_title").focus();
                return false;
            }
            if (document.getElementById("u_title").value.length>30) {
                alert('제목은 최대 30자까지 가능합니다.');
                document.getElementById("u_title").focus();
                return false;
            }
            if (document.getElementById("u_nickname").value == null || document.getElementById("u_nickname").value == '') {
                alert('글쓴이의 이름을 입력해주세요.');
                document.getElementById("u_nickname").focus();
                return false;
            }
            if (document.getElementById("u_nickname").value.length>30) {
                alert('글쓴이의 이름은 최대 30자까지 가능합니다.');
                document.getElementById("u_nickname").focus();
                return false;
            }
            if (document.getElementById("u_pw").value == null || document.getElementById("u_pw").value == '') {
                alert('암호를 입력해주세요.');
                document.getElementById("u_pw").focus();
                return false;
            }
            if (document.getElementById("u_pw").value.length>30) {
                alert('암호는 최대 30자까지 가능합니다.');
                document.getElementById("u_pw").focus();
                return false;
            }
            if (document.getElementById("u_des").value == null || document.getElementById("u_des").value == '') {
                alert('내용을 입력해주세요.');
                document.getElementById("u_des").focus();
                return false;
            }
            else f.submit();
        }
    </script>
</head>
<body>
<center>
    <div><a href="BoardServlet?command=view_list"><img src="/img/ear.png" style="width: 200px; height: 150px;"></a></div>
</center>
<div class="update_form">
    <h2>구덩이 파기</h2>
    <form method="post" action="BoardServlet" name="updateForm">
        <input type="hidden" value="<%=board.getId()%>" name="id"/>
        <input type="hidden" value="update_board" name="command">
        <table>
            <tr>
                <th>구덩이 이름</th>
                <td><input type="text" name="title" id="u_title" value="<%=board.getTitle()%>"></td>
            </tr>
            <tr>
                <th>글쓴 갓장이</th>
                <td><input type="text" name="nickname" id="u_nickname" value="<%=board.getNickname()%>"></td>
            </tr>
            <tr>
                <th>암호</th>
                <td><input type="password" name="pw" id="u_pw" value="<%=board.getPw()%>"></td>
            </tr>
            <tr>
                <th>소리</th>
                <td><textarea cols="50" rows="10" id="u_des" name="description"><%=board.getDescription()%></textarea></td>
            </tr>
        </table>
        <input class="create_btn" type="button" value="등록" onclick="javascript:checkForm();">
        <input class="cancel_btn" type="button" value="취소" onclick="javascript:history.back()">
    </form>
</div>
</body>
</html>
