package dao;

import entity.User;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class loginDao {
    //返回是否登录成功
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
        System.out.println("loginDao:username:"+username);
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
                System.out.println("loginDao登陆成功！");
            }
            else{
                i = 0;
                System.out.println("loginDao密码错误！");
            }
        }
        else{
            i = -1;
            System.out.println("loginDao用户名不存在！");
        }
        return i;
    }


    //得到用户对象用于显示用户信息
    public User getUser(String username) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql = "select sex,age,img from userInfo where username = '" + username + "'";

        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql);
        rset = pstate.executeQuery();
        User user  = new User();
        while(rset.next()){
            user.setSex(rset.getString("sex"));
            user.setAge(rset.getInt("age"));
            user.setImg(rset.getString("img"));
        }
        return user;
    }
}
