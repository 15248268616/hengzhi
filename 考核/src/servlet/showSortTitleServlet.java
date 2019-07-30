package servlet;

import dao.sortDao;
import entity.News;
import entity.Page;
import org.json.JSONArray;
import org.json.JSONObject;
import service.sortService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/showSortTitle")
public class showSortTitleServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //得到当前分类的名字
        String sortName = request.getParameter("sortName");
        System.out.println("showSortTitleServlet:sortName:"+sortName);
        //得到当前页数
        int currentpage = 1;
        if(request.getParameter("currentpage")!=null){
            currentpage = Integer.parseInt(request.getParameter("currentpage"));
            System.out.println("showSortTitleServlet:currentpage:"+currentpage);
        }
        String username = request.getParameter("username");
        System.out.println("showSortTitleServlet:username:"+username);

        sortService sortservice = new sortService();
        List<News> newsTitlelist = new ArrayList<>();

        Page page = sortservice.getPage(currentpage,sortName);
        try {
            newsTitlelist = sortservice.getSortNewsList(sortName,currentpage);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println("showSortTitleServlet:newsTitlelist:" + newsTitlelist);
        JSONObject obj = new JSONObject(page);
        JSONArray jarray = new JSONArray(newsTitlelist);

        //request.setAttribute("page",obj);
        //request.setAttribute("newsTitlelist",jarray.toString());
        request.setAttribute("page",page);
        request.setAttribute("username",username);
        request.setAttribute("sortName",sortName);
        request.setAttribute("newsTitlelist",newsTitlelist);
        request.getRequestDispatcher(request.getContextPath()+"/system.jsp").forward(request,response);

    }
}
