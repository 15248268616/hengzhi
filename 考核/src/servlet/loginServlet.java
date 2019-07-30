package servlet;

import dao.loginDao;
import entity.User;
import service.loginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //得到用户名，密码，用户输入的验证码，自动生成的验证码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String code = request.getParameter("code");
        String sessionCode = request.getSession().getAttribute("articode").toString();
        System.out.println("loginServlet:username:" + username);
        System.out.println("loginServlet:password:" + password);
        System.out.println("loginServlet:code:" + code);
        System.out.println("loginServlet:sessionCode:" + sessionCode);

        loginService loginservice = new loginService();

        //定义该变量用于判断是何种原因登陆失败
        int i = 0;
        if(username!=""&&password!=""){
            try {
                i = loginservice.useLogin(username,password,code,sessionCode);

            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println("loginServlet:i:" + i);

            loginDao userInfo = new loginDao();
            User user = new User();
            try {
                user = userInfo.getUser(username);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            String sex = user.getSex();
            int age = user.getAge();
            String img = user.getImg();

            if(i == 1){
                //登陆成功
                request.setAttribute("username",username);
                request.setAttribute("sex",sex);
                request.setAttribute("age",age);
                request.setAttribute("img",img);
                request.getRequestDispatcher(request.getContextPath()+"/changeUserInfo.jsp").forward(request, response);
            }
            else if(i == 0){
                //密码错误
                request.setAttribute("result",i);
                request.getRequestDispatcher(request.getContextPath()+"/loginFail.jsp").forward(request, response);
            }
            else if(i == -1){
                //用户名不存在
                request.setAttribute("result",i);
                request.getRequestDispatcher(request.getContextPath()+"/loginFail.jsp").forward(request, response);
            }
            else if(i == 2){
                //验证码错误
                request.setAttribute("result",i);
                request.getRequestDispatcher(request.getContextPath()+"/loginFail.jsp").forward(request, response);
            }
        }
    }

}
