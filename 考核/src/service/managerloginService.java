package service;

import dao.loginDao;
import dao.managerDao;

import java.sql.SQLException;

public class managerloginService {
    public int useLogin(String username, String password,String code, String articode) throws SQLException {
        managerDao dao = new managerDao();
        //用于判断是否成功的登陆
        int i = dao.login(username,password);
        System.out.println("managerloginService:i:" + i);
        //用于判断验证码是否正确
        int j = 0;
        int num1=0,num2=0,flag1=0,flag2=0;
        char op= 0b0;
        //将算术验证码变为可操作的算式
        for(int x=0;x<articode.length();x++){
            if(articode.charAt(x)>='0'&&articode.charAt(x)<='9'&&flag1==0){
                num1 = articode.charAt(x)-48;
                flag1 = 1;
                continue;
            }
            if(articode.charAt(x)>='0'&&articode.charAt(x)<='9'&&flag2==0){
                num2 = articode.charAt(x)-48;
                flag2 = 1;
                continue;
            }
            if(articode.charAt(x)=='+'||articode.charAt(x)=='-'||articode.charAt(x)=='*'){
                op = articode.charAt(x);
            }
        }
        System.out.println("managerloginService:num1:"+num1);
        System.out.println("managerloginService:num2:"+num2);
        System.out.println("managerloginService:op:"+op);
        //将用户输入的结果变为整型以便比较
        int num = Integer.parseInt(code);
        System.out.println(num);
        switch(op){
            case '+':num1 = num1 + num2; break;
            case '-':num1 = num1 - num2; break;
            case '*':num1 = num1 * num2; break;
        }
        if(num == num1){
            j = 1;
        }
        else{
            j = 0;
        }

        int k = 0;
        if(j == 1){
            if(i == 1){
                k = 1;
                System.out.println("managerloginService登陆成功！");
            }
            else if(i == 0){
                k = 0;
                System.out.println("managerloginService密码错误！");
            }
            else{
                k = -1;
                System.out.println("managerloginService用户名不存在！");
            }
        }
        else{
            k = 2;
            System.out.println("managerloginService验证码错误！");
        }
        return k;
    }

}
