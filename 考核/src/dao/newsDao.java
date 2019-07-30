package dao;

import entity.News;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class newsDao {
    //返回所有信息列表
    public List<News> getNewslist() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select * from news";
        List<News> newslist = new ArrayList<>();
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            newslist.add(news);
        }

        System.out.println("newsDao:newslist:"+newslist);
        return newslist;
    }

    //返回新闻的数量
    public int getNewsCount() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select count(*) from news";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        int count = 0;
        while(rset.next()){
            count = rset.getInt(1);
        }

        System.out.println("newsDao:getNewsCount:count:"+count);
        return count;
    }

    //返回是否成功编辑新闻
    public int changeNews(String title, String newTitle, String newAuthor, String newContent) throws SQLException {
        //得到修改时间
        DateFormat d2 = DateFormat.getDateTimeInstance();
        String changetime = d2.format(new Date());

        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;

        int i = 0;
        String sql = "update news set title = '" + newTitle + "',author = '" + newAuthor + "',content = '" + newContent + "', alterTime = '" + changetime + "' where title = '" + title + "'";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();

        System.out.println("newsDao:changeNews:i:"+i);
        return i;
    }

    //返回是否成功增加一个新闻
    public int addNews(String title, String author, String content) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        //得到添加时间
        DateFormat d1 = DateFormat.getDateTimeInstance();
        String addtime = d1.format(new Date());

        String sql = "insert into news(title,author,content,writeTime,alterTime) values ('" + title + "','"+ author + "','" + content + "','" + addtime + "','" + addtime + "')";

        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();

        System.out.println("newsDao:addNews:i:"+i);
        return i;
    }

    //返回是否成功删除一条新闻
    public int deleteNews(String title) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        String sql = "delete from news where title = '" + title + "'";

        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();

        System.out.println("newsDao:deleteNews:i:"+i);
        return i;
    }
}
