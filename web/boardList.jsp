<%@ page import="com.donkey.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<BoardBean> list=(List<BoardBean>)request.getAttribute("list");
%>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
    <title>Donkey</title>
</head>
<body>
<center>
    <div><a href="BoardServlet?command=view_list"><img src="/img/ear.png" style="width: 200px; height: 150px;"></a></div>
<div class="board_list">
    <h2>구덩이들</h2>
    <div>
    <div style="text-align: right; margin-right: 100px; margin-bottom: 30px;">
        <a href="BoardServlet?command=to_write_list"><img src="/img/hole.png" style="width: 100px; height: 80px;"></a></td>
    </div>
     <table>
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
                <td><a href="BoardServlet?command=view_board&id=<%=list.get(i).getId()%>"><%=list.get(i).getTitle()%></a></td>
                <td><%=list.get(i).getNickname()%></td>
                <td><%=list.get(i).getDate().substring(2, 16)%></td>
            </tr>
<%
        }
%>
        </table>
    </div>
</div>
</center>
</body>
</html>
