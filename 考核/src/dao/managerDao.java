package dao;

import entity.User;
import util.DataBaseConnection;
import util.Md5;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class managerDao {
    //判断是否登录成功
    public int login(String username, String password) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        PreparedStatement pstate = null;
        ResultSet rset = null;
        String checkpassword = null;
        int i = 0; //用于判断登陆结果，作为判断标识

        Connection conn = dbconn.getConnect();
        String sql1 = "select username from userInfo";//选择用户名
        String sql2 = "SELECT password FROM userInfo WHERE username = '"+ username + "'";  //选择特定用户名对应的密码
        List<String> usernamelist = new ArrayList<>();//创建用户名列表用于判断用户名是否存在
        pstate = conn.prepareStatement(sql1);
        rset = pstate.executeQuery();
        //得到用户名列表
        while(rset.next()){
            usernamelist.add(rset.getString(1));
        }
        System.out.println("managerDao:username:"+username);
        System.out.println(usernamelist);
        //判断用户是否存在
        if(usernamelist.contains(username)){
            pstate = conn.prepareStatement(sql2);
            rset = pstate.executeQuery();
            while(rset.next()){
                checkpassword = rset.getString("password");
            }
            if(password.equals(checkpassword)){
                i = 1;
                System.out.println("managerDao登陆成功！");
            }
            else{
                i = 0;
                System.out.println("managerDao密码错误！");
            }
        }
        else{
            i = -1;
            System.out.println("managerDao用户名不存在！");
        }
        return i;
    }

    //返回所有管理员的信息
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
        System.out.println("managerDao:userlist:"+userlist);
        return userlist;
    }

    //返回是否成功注册一个新的管理员
    public int addManager(String username, String password, String sex, int age) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        String Mpassword = Md5.MD5(password);
        String sql = "insert into userInfo(username,password,sex,age,Mpassword) values ('"+username+"','"+password+"','"+sex+"','"+age+"','"+Mpassword+"')";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();

        System.out.println("managerDao:addManager:i:"+i);
        return i;
    }

    //返回是否成功修改管理员的信息
    public int changeManager(String username, String newusername, String sex, int age) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        String sql = "update userInfo set username = '"+newusername+"',sex = '"+sex+"',age = '"+age+"' where username = '"+username +"'";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();
        System.out.println("managerDao:changeManager:i"+i);
        return i;

    }

    //返回是否成功删除一个管理员
    public int deleteManager(String username) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        int i = 0;

        String sql = "delete from userInfo where username = '" + username + "'";
        conn =dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        i = pstate.executeUpdate();
        System.out.println("managerDao:deleteManager:i:"+i);
        return i;
    }
}
