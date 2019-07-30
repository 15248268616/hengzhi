package servlet;

import dao.searchDao;
import entity.News;
import org.json.JSONArray;
import service.searchService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/search")
public class searchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

//        //当前页码
//        int currentpage = 1;
//        if(request.getParameter("currentpage")!=null){
//            currentpage = Integer.parseInt(request.getParameter("currentpage"));
//            System.out.println("searchServlet:currentpage:"+currentpage);
//        }


        //得到搜索的关键词
        String key = request.getParameter("key");
        System.out.println("searchServlet:key:"+key);
        //得到由搜索返回的列表
        searchDao dao = new searchDao();
        List<News> searchlist = new ArrayList<>();
        searchService searchservice = new searchService();
        try {
            searchlist = searchservice.getSearchlist(key);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println("searchlistServlet:searchlist:"+searchlist);
//        //转为JSON数组
//        JSONArray array = new JSONArray(searchlist);
//        System.out.println("searchServlet:searchlist:"+array.toString());

        request.setAttribute("searchlist",searchlist);
        request.getRequestDispatcher(request.getContextPath()+"/search_list.jsp").forward(request,response);
    }
}
