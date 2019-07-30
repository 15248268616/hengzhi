package servlet;

import dao.newsDao;
import entity.News;
import entity.Page;
import org.json.JSONArray;
import org.json.JSONObject;
import service.newsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/news")
public class newsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //得到当前页数
        int currentpage = 1;
        if(request.getParameter("currentpage")!=null){
            currentpage = Integer.parseInt(request.getParameter("currentpage"));
        }

        List<News> newslist = new ArrayList<>();
        newsService newsservice = new newsService();
        try {
            newslist = newsservice.getsubNewslist(currentpage);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Page page = new Page();
        try {
            page = newsservice.getPage(currentpage);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        JSONObject obj = new JSONObject(page);
        JSONArray jarray = new JSONArray(newslist);
        System.out.println("newsServlet:newslist:"+jarray.toString());

        request.setAttribute("page",obj);
        request.setAttribute("newslist",jarray.toString());
        request.getRequestDispatcher(request.getContextPath()+"/manager.jsp").forward(request,response);

    }
}
