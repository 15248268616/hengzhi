package dao;

import util.DataBaseConnection;
import util.Md5;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class registDao {
    //返回是否注册成功
    public int Reginster(String username, String password, String sex, int age) throws SQLException {
        DataBaseConnection dbconn = new DataBaseConnection();
        Connection conn = null;
        PreparedStatement pstate = null;
        ResultSet rset = null;

        int i = 0;
        List<String> userlist = new ArrayList<>();
        String sql1 = "select username from userInfo";
        conn = dbconn.getConnect();
        pstate = conn.prepareStatement(sql1);
        rset = pstate.executeQuery();
        while(rset.next()){
            userlist.add(rset.getString(1));
        }
        if(userlist.contains(username)){
            i = 0;//用户名已存在
        }
        else{
            String sql2 = "insert into userInfo(username,password,sex,age,Mpassword)values(?,?,?,?,?)";
            String Mpassword = Md5.MD5(password);
            try {
                PreparedStatement ps = conn.prepareStatement(sql2);//添加上面的sql语句
                ps.setString(1, username);//在数据库中添加该用户名
                ps.setString(2, password);//在数据库中添加该用户名所对应的的账号密码
                ps.setString(3, sex);
                ps.setString(4, Integer.toString(age));
                ps.setString(5, Mpassword);
                i = ps.executeUpdate();
            } catch (Exception ex){
                ex.printStackTrace();
            }
        }
        //i=0用户名已存在，i=1注册成功
        return i;
    }
}
