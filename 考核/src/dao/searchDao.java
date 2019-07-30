package dao;

import entity.News;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class searchDao {
    //返回是何种搜索
    public int getSearch(String key) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql1 = "select title from news";
        String sql2 = "select content from news";

        System.out.println("searchDao:key:"+key);
        int kind = 0;//用于判断是标题搜索还是内容搜索
        List<String> titlelist = new ArrayList<>();
        List<String> contentlist = new ArrayList<>();

        //得到标题列表
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql1);
        rset = pstate.executeQuery();
        while(rset.next()){
            titlelist.add(rset.getString("title"));
        }
        System.out.println("searchDao:getSearch:"+titlelist);
        //得到内容列表
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql2);
        rset = pstate.executeQuery();
        while(rset.next()){
            contentlist.add(rset.getString("content"));
        }
        System.out.println("searchDao:getSearch:"+contentlist);

        //判断是何种搜索
        if((String.valueOf(titlelist)).contains(key)){
            kind = 1;
        }
        if((String.valueOf(contentlist)).contains(key)){
            kind = 2;
        }
        return kind;
    }

    //返回搜索得到的列表
    public List<News> getSearchlist(String key, int kind) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        List<News> searchlist = new ArrayList<>();

        String sql1 = "select * from news where title like '%" + key + "%'";
        String sql2 = "select * from news where content like '%" + key + "%'";

        if(kind == 1) {
            conn = dbconn.getConnect();
            pstate = conn.prepareStatement(sql1);
            rset = pstate.executeQuery();
        }
        if(kind == 2){
            conn = dbconn.getConnect();
            pstate = conn.prepareStatement(sql2);
            rset = pstate.executeQuery();
        }
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setContent(rset.getString("content"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            searchlist.add(news);
        }
            System.out.println("searchDao:searchlist:"+searchlist);
        return searchlist;
        }
    }
