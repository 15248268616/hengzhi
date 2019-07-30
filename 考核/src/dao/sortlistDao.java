package dao;

import entity.News;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class sortlistDao {
    public List<News> getSortList1() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select * from news join sort on news.sortId = sort.sortId where sort.sortId = 1";
        List<News> list1 = new ArrayList<>();
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            news.setSortId(rset.getInt("sortId"));
            list1.add(news);
        }
        return list1;
    }

    public List<News> getSortList2() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select * from news join sort on news.sortId = sort.sortId where sort.sortId = 2";
        List<News> list2 = new ArrayList<>();
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            news.setSortId(rset.getInt("sortId"));
            list2.add(news);
        }
        return list2;
    }

    public List<News> getSortList3() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select * from news join sort on news.sortId = sort.sortId where sort.sortId = 3";
        List<News> list3 = new ArrayList<>();
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            news.setSortId(rset.getInt("sortId"));
            list3.add(news);
        }
        return list3;
    }

    public List<News> getSortList4() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select * from news join sort on news.sortId = sort.sortId where sort.sortId = 4";
        List<News> list4 = new ArrayList<>();
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            news.setSortId(rset.getInt("sortId"));
            list4.add(news);
        }
        return list4;
    }

    public List<News> getSortList5() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select * from news join sort on news.sortId = sort.sortId where sort.sortId = 5";
        List<News> list5 = new ArrayList<>();
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            news.setSortId(rset.getInt("sortId"));
            list5.add(news);
        }
        return list5;
    }

    public List<News> getSortList6() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select * from news join sort on news.sortId = sort.sortId where sort.sortId = 6";
        List<News> list6 = new ArrayList<>();
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            news.setSortId(rset.getInt("sortId"));
            list6.add(news);
        }
        return list6;
    }
}
