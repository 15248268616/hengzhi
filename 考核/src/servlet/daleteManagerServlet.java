package servlet;

import dao.managerDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/deleteManager")
public class daleteManagerServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");
        System.out.println("deleteManagerServlet:username:"+username);

        managerDao dao = new managerDao();
        int i = 0;
        try {
            i = dao.deleteManager(username);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(i == 1){
            request.getRequestDispatcher(request.getContextPath()+"/manager.jsp").forward(request,response);
        }
    }
}
