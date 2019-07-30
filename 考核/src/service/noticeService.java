package service;

import dao.noticeDao;
import entity.Notice;
import entity.Page;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class noticeService {
    public List<Notice> getsubNoticelist(int currentpage) throws SQLException {
        Page page = new Page();
        noticeDao dao = new noticeDao();
        noticeService noticeservice = new noticeService();
        List<Notice> noticelist = new ArrayList<>();
        List<Notice> subnoticelist = new ArrayList<>();
        //全部公告列表
        noticelist = dao.getNoticelist();
        page = noticeservice.getPage(currentpage);

        //获得子列表
        if((page.getTotalcount()-(page.getCurrentpage()-1)*Page.PAGE_SIZE )>= Page.PAGE_SIZE ){
            subnoticelist = noticelist.subList((currentpage-1)*Page.PAGE_SIZE,currentpage*Page.PAGE_SIZE );
        }
        else {
            subnoticelist = noticelist.subList((currentpage - 1) * Page.PAGE_SIZE, page.getTotalcount());
        }
        System.out.println("noticeService:subnoticelist:"+subnoticelist);

        return subnoticelist;
    }


    public Page getPage(int currentpage) throws SQLException {
        noticeDao dao = new noticeDao();
        //总查询数
        int totalcount = 0;
        totalcount = dao.getNoticeCount();
        //总页数
        int totalpage = 0;
        if(totalcount/ Page.PAGE_SIZE == 0){
            totalpage = totalcount/Page.PAGE_SIZE;
        }
        else{
            totalpage = totalcount/Page.PAGE_SIZE + 1;
        }

        Page noticepage = new Page();
        noticepage.setCurrentpage(currentpage);
        noticepage.setTotalcount(totalcount);
        noticepage.setTotalpage(totalpage);

        System.out.println("newsService:currentpage:"+noticepage.getCurrentpage());
        System.out.println("newsService:totalcount:"+noticepage.getTotalcount());
        System.out.println("newsService:totaloage:"+noticepage.getTotalpage());

        return noticepage;
    }

}
