package service;

import dao.registDao;

import java.sql.SQLException;

public class registService {

    public int userReginster(String name, String password,int age, String sex) throws SQLException {//注册的service层
        registDao dao = new registDao();
        int i = dao.Reginster(name, password, sex, age);//通过dao将用户信息加入到数据库并返回是否成功加入
        return i;
    }
}
