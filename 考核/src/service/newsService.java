package service;

import dao.newsDao;
import entity.News;
import entity.Page;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class newsService {
    public List<News> getsubNewslist(int currentpage) throws SQLException {
        Page page = new Page();
        newsDao dao = new newsDao();
        newsService newsservice = new newsService();
        List<News> newslist = new ArrayList<>();
        List<News> subnewslist = new ArrayList<>();
        //全部新闻列表
        newslist = dao.getNewslist();
        page = newsservice.getPage(currentpage);

        //获得子列表
        if((page.getTotalcount()-(page.getCurrentpage()-1)*Page.PAGE_SIZE )>= Page.PAGE_SIZE ){
            subnewslist = newslist.subList((currentpage-1)*Page.PAGE_SIZE,currentpage*Page.PAGE_SIZE );
        }
        else {
            subnewslist = newslist.subList((currentpage - 1) * Page.PAGE_SIZE, page.getTotalcount());
        }
        System.out.println("sortService:subsortnewslist:"+subnewslist);

        return subnewslist;
    }

    public Page getPage(int currentpage) throws SQLException {
        newsDao dao = new newsDao();
        //总查询数
        int totalcount = 0;
        totalcount = dao.getNewsCount();
        System.out.println("newsService:Page:totalcount:"+totalcount);
        //总页数
        int totalpage = 0;
        if(totalcount/ Page.PAGE_SIZE == 0){
            totalpage = totalcount/Page.PAGE_SIZE;
        }
        else{
            totalpage = totalcount/Page.PAGE_SIZE + 1;
        }

        Page newspage = new Page();
        newspage.setCurrentpage(currentpage);
        newspage.setTotalcount(totalcount);
        newspage.setTotalpage(totalpage);

        System.out.println("newsService:currentpage:"+newspage.getCurrentpage());
        System.out.println("newsService:totalcount:"+newspage.getTotalcount());
        System.out.println("newsService:totaloage:"+newspage.getTotalpage());

        return newspage;
    }
}
