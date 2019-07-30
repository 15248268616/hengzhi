package servlet;

import dao.sortDao;
import entity.Sort;
import org.json.JSONArray;
import entity.News;
import entity.Page;
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

@WebServlet("/sort")
public class sortServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        sortDao dao = new sortDao();
        List<Sort> sortlist = new ArrayList<>();
        //得到用户名
        String username = request.getParameter("username");

        try {
            sortlist = dao.getSortlist();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        JSONArray jsonArray = new JSONArray(sortlist);
        System.out.println("sortServlet:sortlist:"+jsonArray.toString());
        //request.setAttribute("sortlist",jsonArray.toString());
        request.setAttribute("username",username);
        request.setAttribute("sortlist",sortlist);
        request.getRequestDispatcher(request.getContextPath()+"/system.jsp").forward(request,response);
    }












}
