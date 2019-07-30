package servlet;

import entity.News;
import entity.Notice;
import entity.Page;
import org.json.JSONArray;
import org.json.JSONObject;
import service.newsService;
import service.noticeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/notice")
public class noticeServlet extends HttpServlet {
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

        List<Notice> noticelist = new ArrayList<>();
        noticeService noticeservice = new noticeService();
        try {
            noticelist = noticeservice.getsubNoticelist(currentpage);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Page page = new Page();
        try {
            page = noticeservice.getPage(currentpage);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        JSONObject noticeobj = new JSONObject(page);
        JSONArray jarray = new JSONArray(noticelist);
        System.out.println("noticeServlet:noticelist:"+jarray.toString());

        request.setAttribute("page",noticeobj);
        request.setAttribute("noticelist",jarray.toString());
        request.getRequestDispatcher(request.getContextPath()+"/manager.jsp").forward(request,response);


    }
}
