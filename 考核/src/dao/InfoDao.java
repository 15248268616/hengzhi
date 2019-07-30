package dao;

import entity.News;
import entity.Notice;
import entity.Sort;
import entity.User;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InfoDao {
    //返回所有新闻列表
    public List<News> getNews() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        List<News> newslist = new ArrayList<>();
        String sql = "select * from news";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setContent(rset.getString("content"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            news.setSortId(rset.getInt("sortId"));
            newslist.add(news);
        }

        return newslist;
    }

    //返回所有分类列表
    public List<Sort> getSort() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        List<Sort> sortlist = new ArrayList<>();
        String sql = "select * from sort";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
           Sort sort = new Sort();
           sort.setSortName(rset.getString("sortName"));
           sort.setAddTime(rset.getTime("addTime"));
           sort.setSortId(rset.getInt("sortId"));
           sortlist.add(sort);
        }

        return sortlist;
    }

    //返回所有公告列表
    public List<Notice> getNotice() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        List<Notice> noticelist = new ArrayList<>();
        String sql = "select * from notice";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            Notice notice = new Notice();
            notice.setTitle(rset.getString("title"));
            notice.setAuthor(rset.getString("author"));
            notice.setContent(rset.getString("content"));
            notice.setWriteTime(rset.getTime("writeTime"));
            notice.setAlterTime(rset.getTime("alterTime"));
            noticelist.add(notice);
        }
        System.out.println("noticelist:"+noticelist);

        return noticelist;
    }

    //返回所有管理员列表
    public List<User> userShow() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;
        List<User> userlist = new ArrayList<>();//创建用户列表用于得到所有的用户信息
        String sql3 = "select * from userInfo"; //选择用户名和密码

        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql3);
        rset = pstate.executeQuery();
        //得到用户信息列表
        while(rset.next()){
            User user = new User();
            user.setUsername(rset.getString("username"));
            user.setSex(rset.getString("sex"));
            user.setAge(rset.getInt("age"));
            userlist.add(user);
        }

        System.out.println("userlist:"+userlist);
        return userlist;
    }
}
