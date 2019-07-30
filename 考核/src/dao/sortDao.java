package dao;

import entity.News;
import entity.Sort;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class sortDao {

    //得到所有的分类列表
    public List<Sort> getSortlist() throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql1 = "select * from sort";
        List<Sort> sortlist = new ArrayList<>();
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql1);
        rset = pstate.executeQuery();
        while(rset.next()){
            Sort sort = new Sort();
            sort.setSortName(rset.getString("sortName"));
            sort.setAddTime(rset.getTime("addTime"));
            sortlist.add(sort);
        }

        System.out.println("sortDao:sortlist:"+sortlist);
        return sortlist;
    }

    //得到某一分类下的信息列表
    public List<News> getSortNewsTitle(String sortName) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql1 = "select * from news join sort on news.sortId = sort.sortId where sortName = '" + sortName  + "'";

        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql1);
        rset = pstate.executeQuery();
        List<News> newstitlelist = new ArrayList<>();
        while(rset.next()){
            News news = new News();
            news.setTitle(rset.getString("title"));
            news.setAuthor(rset.getString("author"));
            news.setWriteTime(rset.getTime("writeTime"));
            news.setAlterTime(rset.getTime("alterTime"));
            newstitlelist.add(news);
        }
        System.out.println("sortDao:newstitlelist:"+newstitlelist);
        return newstitlelist;
    }

    //得到某一分类下的新闻数量
    public int getSortCount(String sortName) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql1 = "select count(*) from news join sort on news.sortId = sort.sortId where sort.sortName = '" + sortName  + "'";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql1);
        rset = pstate.executeQuery();
        //获得某一分类下的新闻总数
        int sortcount = 0;
        while(rset.next()){
            sortcount = rset.getInt(1);
        }
        System.out.println("sortDao:sortcount:"+sortcount);
        return sortcount;
    }

    //返回是否成功修改一个分类
    public int changeSort(String sortName, String newsortName) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
//

        String sql1 = "update sort set sortName = '" + newsortName + "' where sortName = '" + sortName + "'";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql1);
        int i = pstate.executeUpdate();
        System.out.println("sortDao:changeSort:i:"+i);

        return i;
    }

    //返回是否成功添加一个分类
    public int addSort(String newsort) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;

        //得到添加时间
        DateFormat d2 = DateFormat.getDateTimeInstance();
        String addtime = d2.format(new Date());

        String sql = "insert into sort(sortName,addTime) values('" + newsort + "','" + addtime + "')";
        int i = 0;
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();
        System.out.println("sortDao:addSort:addTime:"+addtime);
        System.out.println("sortDao:addSort:i:"+i);

        return i;
    }

    //返回是否成功删除一个分类
    public int deleteSort(String sortName) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        String sql = "delete from sort where sortName = '" + sortName + "'";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();

        System.out.println("sortDao:deleteSort:i:"+i);
        return i;
    }
}
