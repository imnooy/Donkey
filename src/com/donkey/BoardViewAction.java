package com.donkey;

import jdk.nashorn.internal.ir.RuntimeNode;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardViewAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=-1;
        String strId=request.getParameter("id");
        if(strId!=null) id=Integer.parseInt(strId);
        String url="/viewBoard.jsp";
        BoardDAO boardDAO=BoardDAO.getInstance();
        BoardBean boardBean=boardDAO.viewBoard(id);

        request.setAttribute("board", boardBean);
        RequestDispatcher dispatcher=request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
