package dao;

import entity.Notice;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class noticeDao {
    //返回所有公告列表
    public List<Notice> getNoticelist() throws SQLException {
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

        System.out.println("noticeDao:noticelist:"+noticelist);
        return noticelist;
    }

    //返回所有公告的数量
    public int getNoticeCount() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;
        int count = 0 ;

        String sql = "select count(*) from notice";
         conn = dbconn.getConnect();
         pstate = conn.prepareStatement(sql);
         rset = pstate.executeQuery();
         while(rset.next()){
             count = rset.getInt(1);
         }
        System.out.println("noticeDao:count:"+count);

         return count;
    }

    //返回是否成功编辑一条公告
    public int changeNotice(String title, String newTitle, String newAuthor, String newContent) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        //得到修改时间
        DateFormat d2 = DateFormat.getDateTimeInstance();
        String changetime = d2.format(new Date());

        String sql = "update notice set title = '" + newTitle + "',author = '" + newAuthor + "',content = '" + newContent + "', alterTime = '" + changetime + "' where title = '" + title + "'";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();

        System.out.println("noticeDao:changeNotice:i:"+i);
        return i;
    }

    //返回是否成功增加一个公告
    public int addNotice(String title, String author, String content) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        //得到添加时间
        DateFormat d = DateFormat.getDateTimeInstance();
        String addtime = d.format(new Date());

        String sql = "insert into notice(title,author,content,writeTime,alterTime) values ('" + title + "','"+ author + "','" + content + "','" + addtime + "','" + addtime + "')";

        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();

        System.out.println("noticeDao:addNotice:i:"+i);
        return i;
    }

    //返回是否成功删除一条公告
    public int deleteNotice(String title) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        String sql = "delete from notice where title = '" + title + "'";

        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();

        System.out.println("noticeDao:deleteNotice:i:"+i);
        return i;
    }
}
