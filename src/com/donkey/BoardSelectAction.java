package com.donkey;

import jdk.nashorn.internal.ir.RuntimeNode;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BoardSelectAction implements Action{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url="/boardList.jsp";

        int start=0;
        String strStart=request.getParameter("start");
        if(strStart!=null) start=Integer.parseInt(strStart);

        BoardDAO boarddao=BoardDAO.getInstance();
        List<BoardBean> list=boarddao.getList(start, 10);
        request.setAttribute("list", list);

        RequestDispatcher dispatcher=request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
