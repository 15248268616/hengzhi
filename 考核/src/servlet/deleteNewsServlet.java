package servlet;

import dao.newsDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/deleteNews")
public class deleteNewsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String title = request.getParameter("title");
        System.out.println("deleteNewsServlet:title:"+title);

        int i = 0;
        newsDao dao = new newsDao();
        try {
            i = dao.deleteNews(title);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if(i == 1){
            request.getRequestDispatcher(request.getContextPath()+"/system.jsp").forward(request,response);
        }
    }
}
