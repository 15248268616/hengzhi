package servlet;

import dao.changeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/changeInfo")
public class changeUserInfoServlet extends HttpServlet{
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            this.doPost(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            //响应和请求都设置成utf-8的编码
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");

            //得到修改的相关信息
            String username = request.getParameter("username");
            String userNewname = request.getParameter("userNewname");
            String sex = request.getParameter("sex");
            int age = Integer.parseInt(request.getParameter("age"));
            System.out.println("changeUserInfoServlet:username:"+username);
            System.out.println("changeUserInfoServlet:userNewname:"+userNewname);
            System.out.println("changeUserInfoServlet:sex:"+sex);
            System.out.println("changeUserInfoServlet:age:"+age);

            int i = 0;
            changeDao dao = new changeDao();
            try {
                i = dao.changeUser(username,userNewname,sex,age);
                System.out.println("changeUserInfoServlet:i:"+i);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            if(i == 1){
                request.setAttribute("username",userNewname);
                request.setAttribute("sex",sex);
                request.setAttribute("age",age);
                request.getRequestDispatcher(request.getContextPath()+"/changeUserInfo.jsp").forward(request,response);
            }
        }
    }
