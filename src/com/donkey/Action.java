package com.donkey;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

//어디로 어떻게 갈지
//각 Action 객체마다 다른 곳으로 보내기 가능
public interface Action {
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
