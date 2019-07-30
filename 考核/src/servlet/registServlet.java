package servlet;

import dao.registDao;
import service.registService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/regist")
public class registServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
//      响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        registService registerService1 = new registService();
        //得到一堆信息
        String username = request.getParameter("username");
        String password = request.getParameter("upass");
        int age = Integer.parseInt(request.getParameter("age"));
        String sex = request.getParameter("sex");
        System.out.println("registServlet:username:" + username);
        System.out.println("registServlet:password:" + password);
        System.out.println("registServlet:age:" + age);
        System.out.println("registServlet:sex:" + sex);

        if (username!=""&&password!="") {
            //判断注册状态
            int i = 0;
            try {
                i = registerService1.userReginster(username, password,age,sex);
                System.out.println("registServlet:i:" + i);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            if (i==1){
                request.setAttribute("username",username);
                request.getRequestDispatcher(request.getContextPath()+"/login.jsp").forward(request, response);
            }else if(i==0){
                request.setAttribute("result",i);
                request.getRequestDispatcher(request.getContextPath()+"/registFail.jsp").forward(request, response);
            }
            else{
                request.setAttribute("result",i);
                request.getRequestDispatcher(request.getContextPath()+"/registFail.jsp").forward(request, response);
            }
        }else{
            request.getRequestDispatcher(request.getContextPath()+"/registFail.jsp").forward(request, response);
        }
    }
}
