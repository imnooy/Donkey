package com.donkey;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardDeleteAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BoardDAO boardDAO=BoardDAO.getInstance();

        String strId=request.getParameter("id");
        int id=-1;
        if(strId!=null) id=Integer.parseInt(strId);

        boardDAO.deleteBoard(id);

        response.sendRedirect("BoardServlet?command=view_list");
    }
}
