<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
    <title>Donkey</title>
    <script>
        function checkForm() {
            var f=document.writeForm;
            if (document.getElementById("w_title").value == null || document.getElementById("w_title").value == '') {
                alert('제목을 입력해주세요.');
                document.getElementById("w_title").focus();
                return false;
            }
            if (document.getElementById("w_nickname").value == null || document.getElementById("w_nickname").value == '') {
                alert('글쓴이의 이름을 입력해주세요.');
                document.getElementById("w_nickname").focus();
                return false;
            }
            if (document.getElementById("w_pw").value == null || document.getElementById("w_pw").value == '') {
                alert('암호를 입력해주세요.');
                document.getElementById("w_pw").focus();
                return false;
            }
            if (document.getElementById("w_des").value == null || document.getElementById("w_des").value == '') {
                alert('내용을 입력해주세요.');
                document.getElementById("w_des").focus();
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
<div class="write_form">
    <h2>구덩이 파기</h2>
    <form method="post" action="BoardServlet" name="writeForm">
        <input type="hidden" value="write_list" name="command">
        <table>
            <tr>
                <th>구덩이</th>
                <td><input type="text" name="title" id="w_title"></td>
            </tr>
            <tr>
                <th>갓장이 이름</th>
                <td><input type="text" name="nickname" id="w_nickname"></td>
            </tr>
            <tr>
                <th>암호</th>
                <td><input type="password" name="pw" id="w_pw"></td>
            </tr>
            <tr>
                <th>소리</th>
                <td><textarea cols="50" rows="10" name="description" placeholder="임금님 귀는 당나귀 귀" id="w_des"></textarea></td>
            </tr>
        </table>
        <input class="create_btn" type="button" value="등록" onclick="javascript:checkForm();">
        <input class="cancel_btn" type="button" value="취소" onclick="javascript:history.back()">
    </form>
</div>
</body>
</html>
