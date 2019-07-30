package servlet;

import dao.InfoDao;
import entity.News;
import entity.Notice;
import entity.Sort;
import entity.User;
import org.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/passInfo")
public class passInfoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        List<News> newslist = new ArrayList<>();
        List<Sort> sortlist = new ArrayList<>();
        List<Notice> noticelist = new ArrayList<>();
        List<User> userlist = new ArrayList<>();
        InfoDao dao = new InfoDao();

        try {
            newslist = dao.getNews();
            sortlist = dao.getSort();
            noticelist = dao.getNotice();
            userlist = dao.userShow();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        JSONArray jnewslist = new JSONArray(newslist);
        JSONArray jsortlist = new JSONArray(sortlist);
        JSONArray jnoticelist = new JSONArray(noticelist);
        JSONArray juserlist = new JSONArray(userlist);

        request.setAttribute("newslist",jnewslist.toString());
        request.setAttribute("sortlist",jsortlist.toString());
        request.setAttribute("noticelist",jnoticelist.toString());
        request.setAttribute("userlist",juserlist.toString());
        request.getRequestDispatcher(request.getContextPath()+"/system.jsp").forward(request,response);

    }
}
