package com.donkey;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardUpdateAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BoardDAO boardDAO=BoardDAO.getInstance();
        BoardBean boardBean=new BoardBean();

        String strId=request.getParameter("id");
        int id=-1;
        if(strId!=null) id=Integer.parseInt(strId);

        boardBean.setNickname(request.getParameter("nickname"));
        boardBean.setPw(request.getParameter("pw"));
        boardBean.setTitle(request.getParameter("title"));
        boardBean.setDescription(request.getParameter("description"));
        boardBean.setId(id);

        boardDAO.updateBoard(boardBean);
        response.sendRedirect("BoardServlet?command=view_board&id="+id);
    }
}
