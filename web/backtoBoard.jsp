<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String strId=request.getParameter("id");
    int id=-1;
    if(strId!=null) id=Integer.parseInt(strId);
%>
<script>
    alert('암호가 틀렸습니다.');
    location.href="BoardServlet?command=view_board&id=<%=id%>";
</script>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
