<%@ page import="com.donkey.*" %>
<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: YoonmiKim
  Date: 2022-01-21
  Time: 오후 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<BoardBean> list=(List<BoardBean>)request.getAttribute("list");
%>
<html>
<head>
    <title>Donkey</title>
</head>
<body>
<div class="board_list">
    <h2>구덩이들</h2>
    <table>
        <tr>
            <td><a href="BoardServlet?command=to_write_list">구덩이 파기</a></td>
        </tr>
        <tr>
            <th>NO</th>
            <th>구덩이</th>
            <th>갓장이</th>
            <th>일시</th>
        </tr>
<%
        for(int i=0; i<list.size(); i++) {
%>
            <tr>
                <td><%=i+1%></td>
                <td><%=list.get(i).getTitle()%></td>
                <td><%=list.get(i).getNickname()%></td>
                <td><%=list.get(i).getDate().substring(2, 16)%></td>
            </tr>
<%
        }
%>
    </table>
</div>
</body>
</html>
