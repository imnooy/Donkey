package com.donkey;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardWriteAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BoardBean boardBean=new BoardBean();
        boardBean.setNickname(request.getParameter("nickname"));
        boardBean.setPw(request.getParameter("pw"));
        boardBean.setTitle(request.getParameter("title"));
        boardBean.setDescription(request.getParameter("description"));

        BoardDAO boardDAO=BoardDAO.getInstance();
        boardDAO.insertList(boardBean);
        response.sendRedirect("BoardServlet?command=view_list");
    }
}
