package servlet;

import dao.InfoDao;
import dao.loginDao;
import dao.managerDao;
import dao.sortlistDao;
import entity.News;
import entity.Notice;
import entity.Sort;
import entity.User;
import org.json.JSONArray;
import service.loginService;
import service.managerloginService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/managerlogin")
public class managerloginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //响应和请求都设置成utf-8的编码
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //得到用户名，密码，用户输入的验证码，自动生成的验证码
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String code = request.getParameter("code");
        String sessionCode = request.getSession().getAttribute("articode").toString();

        managerloginService managerloginservice = new managerloginService();

        //定义该变量用于判断是何种原因登陆失败
        int i = 0;
        if(username!=""&&password!=""){
            try {
                i = managerloginservice.useLogin(username,password,code,sessionCode);

            } catch (SQLException e) {
                e.printStackTrace();
            }
            System.out.println("managerloginServlet:i:" + i);


//            managerDao dao = new managerDao();
            //获得所有的管理员信息
//            List<User> userlist = new ArrayList<>();
//            try {
//                userlist = dao.userShow();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }

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


            sortlistDao dao1 = new sortlistDao();
            List<News> list1 = new ArrayList<>();
            List<News> list2 = new ArrayList<>();
            List<News> list3 = new ArrayList<>();
            List<News> list4 = new ArrayList<>();
            List<News> list5 = new ArrayList<>();
            List<News> list6 = new ArrayList<>();
            System.out.println("理工类："+list1.toString());


            try {
                list1 = dao1.getSortList1();
                list2 = dao1.getSortList2();
                list3 = dao1.getSortList3();
                list4 = dao1.getSortList4();
                list5 = dao1.getSortList5();
                list6 = dao1.getSortList6();
            } catch (SQLException e) {
                e.printStackTrace();
            }

            JSONArray jlist1 = new JSONArray(list1);
            JSONArray jlist2 = new JSONArray(list2);
            JSONArray jlist3 = new JSONArray(list3);
            JSONArray jlist4 = new JSONArray(list4);
            JSONArray jlist5 = new JSONArray(list5);
            JSONArray jlist6 = new JSONArray(list6);


            request.setAttribute("list1",jlist1);
            request.setAttribute("list2",jlist2);
            request.setAttribute("list3",jlist3);
            request.setAttribute("list4",jlist4);
            request.setAttribute("list5",jlist5);
            request.setAttribute("list6",jlist6);



//            JSONArray array = new JSONArray(userlist);
//            System.out.println("managerloginServlet:userlist:"+array.toString());


            if(i == 1){
                //登陆成功
                request.setAttribute("username",username);
                //request.setAttribute("userlist",array.toString());
                request.setAttribute("newslist",jnewslist.toString());
                request.setAttribute("sortlist",jsortlist.toString());
                request.setAttribute("noticelist",jnoticelist.toString());
                request.setAttribute("userlist",juserlist.toString());
                request.getRequestDispatcher(request.getContextPath()+"/system.jsp").forward(request, response);


            }
            else if(i == 0){
                //密码错误
                request.setAttribute("result",i);
                request.getRequestDispatcher(request.getContextPath()+"/loginFail.jsp").forward(request, response);
            }
            else if(i == -1){
                //用户名不存在
                request.setAttribute("result",i);
                request.getRequestDispatcher(request.getContextPath()+"/loginFail.jsp").forward(request, response);
            }
            else if(i == 2){
                //验证码错误
                request.setAttribute("result",i);
                request.getRequestDispatcher(request.getContextPath()+"/loginFail.jsp").forward(request, response);
            }
        }
    }

}
