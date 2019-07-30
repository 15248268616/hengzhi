package servlet;

import dao.sortlistDao;
import entity.News;
import org.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/passSortlist")
public class passSortlistServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        sortlistDao dao = new sortlistDao();
        List<News> list1 = new ArrayList<>();
        List<News> list2 = new ArrayList<>();
        List<News> list3 = new ArrayList<>();
        List<News> list4 = new ArrayList<>();
        List<News> list5 = new ArrayList<>();
        List<News> list6 = new ArrayList<>();

        list1 = dao.getSortList1();
        list2 = dao.getSortList2();
        list3 = dao.getSortList3();
        list4 = dao.getSortList4();
        list5 = dao.getSortList5();
        list6 = dao.getSortList6();

        JSONArray jlist1 = new JSONArray(list1);
        JSONArray jlist2 = new JSONArray(list2);
        JSONArray jlist3 = new JSONArray(list3);
        JSONArray jlist4 = new JSONArray(list4);
        JSONArray jlist5 = new JSONArray(list5);
        JSONArray jlist6 = new JSONArray(list6);
        System.out.println("passSortlistServlet:list1:"+jlist1.toString());
        System.out.println("passSortlistServlet:list2:"+jlist2.toString());
        System.out.println("passSortlistServlet:list3:"+jlist3.toString());
        System.out.println("passSortlistServlet:list4:"+jlist4.toString());
        System.out.println("passSortlistServlet:list5:"+jlist5.toString());
        System.out.println("passSortlistServlet:list6:"+jlist6.toString());

        request.setAttribute("list1",jlist1);
        request.setAttribute("list2",jlist2);
        request.setAttribute("list3",jlist3);
        request.setAttribute("list4",jlist4);
        request.setAttribute("list5",jlist5);
        request.setAttribute("list6",jlist6);
        request.getRequestDispatcher(request.getContextPath()+"/system.jsp").forward(request,response);

    }
}
