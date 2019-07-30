package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseConnection {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/user?"+ "useUnicode=true&characterEncoding=UTF8";
    private static final String USERNAME = "root";//数据库的用户名
    private static final String PASSWORD = "123456";//数据库的密码

    private static Connection connection = null;//创建一个连接的对象
    //链接数据库
    public Connection getConnect(){
        try{
            Class.forName(DRIVER);  //加载驱动
            connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
        return connection;
    }
    //关闭数据库
    public void closeConnect(){
        Connection con = getConnect();//重新建立一个连接对象用于关闭数据库
        try{
            if(!con.isClosed()) {
                con.close();
            }
        }
        catch(Exception ex1){
            ex1.printStackTrace();
        }
    }
}
