<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String act=request.getParameter("act");

    String strId=request.getParameter("id");
    int id=-1;
    if(strId!=null) id=Integer.parseInt(strId);

%>
<html>
<head>
    <title>Donkey</title>
</head>
<body>
<script type="text/javascript">
    var act = "<%=act%>";
    if(act=="수정") {
        location.href="BoardServlet?command=to_update_board&id=<%=id%>";
    } else if(act=="삭제"){
        alert('삭제되었습니다');
        location.href="BoardServlet?command=delete_board&id=<%=id%>";
    }
</script>
</body>
</html>
