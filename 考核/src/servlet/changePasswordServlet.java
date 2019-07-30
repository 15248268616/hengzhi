package servlet;

import dao.changeDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/changePass")
public class changePasswordServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");
        String oldpass = request.getParameter("oldpass");
        String newpass = request.getParameter("newpass");

        changeDao dao = new changeDao();
        int i = 0;
        try {
            i = dao.changePass(username,oldpass,newpass);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("changePasswordServlet:i:"+i);
        if(i == 1){
            request.getRequestDispatcher(request.getContextPath()+"/login.jsp").forward(request,response);
        }
        else{
            request.getRequestDispatcher(request.getContextPath()+"/changeFail.jsp").forward(request,response);
        }
    }
}
