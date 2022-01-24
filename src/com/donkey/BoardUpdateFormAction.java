package com.donkey;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardUpdateFormAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url="/updateBoard.jsp";
        String strId=request.getParameter("id");
        int id=-1;
        if(strId!=null) id=Integer.parseInt(strId);

        BoardDAO boardDAO=BoardDAO.getInstance();
        BoardBean boardBean=boardDAO.viewBoard(id);
        request.setAttribute("board", boardBean);
        request.getRequestDispatcher(url).forward(request, response);
    }
}
