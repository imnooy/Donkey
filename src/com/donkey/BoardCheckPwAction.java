package com.donkey;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BoardCheckPwAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String strId=request.getParameter("id");
        int id=-1;
        if(strId!=null) id=Integer.parseInt(strId);

        String pw=request.getParameter("input_pw");
        String url="";

        BoardDAO boardDAO=BoardDAO.getInstance();
        boolean isRight=boardDAO.checkPw(id, pw);

        if(isRight) {
            url="/pwchecked.jsp";
        }
        else {
            url="/backtoBoard.jsp";
        }
        request.getRequestDispatcher(url).forward(request, response);
    }
}
