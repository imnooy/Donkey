package com.donkey;

import java.sql.*;
import java.util.*;

public class BoardDAO {
    private BoardDAO() {};

    private static BoardDAO boarddao=new BoardDAO();

    public static synchronized BoardDAO getInstance() {
        if(boarddao==null) {
            boarddao=new BoardDAO();
        }
        return boarddao;
    }

    public List<BoardBean> getList(int start, int limit) {
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;

        List<BoardBean> list=new ArrayList<BoardBean>();

        try {
            conn=DBManager.getConnection();
            String sql="select * from tb_writing"
                    +" order by date desc"
                    +" limit "+start+", "+limit;
            pstmt = conn.prepareStatement(sql); //sql 문을 실행하기 위해 conn 연결 정보를 state로 생성
            rs=pstmt.executeQuery();

            while(rs.next()) {
                BoardBean board=new BoardBean();
                board.setId(rs.getInt(1));
                board.setNickname(rs.getString(2));
                board.setPw(rs.getString(3));
                board.setTitle(rs.getString(4));
                board.setDescription(rs.getString(5));
                board.setDate(rs.getString(6));

                list.add(board);
            }
            return list;
        } catch(Exception e){
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt);
        }
        return null;
    }

    public void insertList(BoardBean boardBean) {
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;

        try {
            conn=DBManager.getConnection();
            String sql="insert into tb_writing values(null, ?, ?, ?, ?, now())";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, boardBean.getNickname());
            pstmt.setString(2, boardBean.getPw());
            pstmt.setString(3, boardBean.getTitle());
            pstmt.setString(4, boardBean.getDescription());
            pstmt.executeUpdate();
        }catch(Exception e) {
            e.printStackTrace();
        } finally {
            DBManager.close(conn, pstmt);
        }
    }
}
