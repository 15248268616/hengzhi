package dao;

import entity.User;
import util.DataBaseConnection;
import util.Md5;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class changeDao {
    //返回是否成功更新用户信息
    public int changeUser(String username, String userNewname, String Newsex, int Newage) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        String sql2 = "update userInfo set username = '" + userNewname + "', sex = '" + Newsex +"',age = '" + Newage + "' where username = '" + username + "'";

        int i = 0;//是否更新成功
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql2);
        i = pstate.executeUpdate();

        return i;
    }

    //返回是否成功修改密码
    public int changePass(String username, String oldpass, String newpass) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        int i = 0;
        String newMpass = null;
        String password = null;//数据库中的密码
        String sql1 = "select password from userInfo where username = '" +username + "'";

        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql1);
        rset = pstate.executeQuery();
        while(rset.next()){
            password = rset.getString("password");
        }
        if(password.equals(oldpass)){
            newMpass = Md5.MD5(newpass);
            String sql2 = "update userInfo set password = '" + newpass + "',Mpassword = '" + newMpass +"' where username = '" + username + "'";
            pstate = conn.prepareStatement(sql2);
            i = pstate.executeUpdate();
        }

        return i;//1成功 ，0输入信息有误
    }

}
