package service;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import dao.sortDao;
import entity.News;
import entity.Page;

import java.sql.SQLException;
import java.util.List;

public class sortService {
    public List<News> getSortNewsList(String sortName, int currentpage) throws SQLException {
        sortDao dao = new sortDao();
        Page page = new Page();
        sortService sortservice = new sortService();
        //得到某分类下的全部新闻列表
        List<News> sortnewslist = dao.getSortNewsTitle(sortName);
        //新闻分页列表
        List<News> subsortnewslist = null;
        page = sortservice.getPage(currentpage,sortName);

        //获得子列表
        if((page.getTotalcount()-(page.getCurrentpage()-1)*Page.PAGE_SIZE )>= Page.PAGE_SIZE ){
            subsortnewslist = sortnewslist.subList((currentpage-1)*Page.PAGE_SIZE,currentpage*Page.PAGE_SIZE );
        }
        else {
            subsortnewslist = sortnewslist.subList((currentpage - 1) * Page.PAGE_SIZE, page.getTotalcount());
        }
        System.out.println("sortService:subsortnewslist:"+subsortnewslist);

        return subsortnewslist;

    }

    public Page getPage(int currentpage, String sortName){
        sortDao dao = new sortDao();
        //总查询数
        int totalcount = 0;
        try {
            totalcount = dao.getSortCount(sortName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //总页数
        int totalpages = 0;
        if(totalcount/ Page.PAGE_SIZE == 0){
            totalpages = totalcount/Page.PAGE_SIZE;
        }
        else{
            totalpages = totalcount/Page.PAGE_SIZE + 1;
        }

        Page page = new Page();
        page.setCurrentpage(currentpage);
        page.setTotalcount(totalcount);
        page.setTotalpage(totalpages);
        System.out.println("sortService:currentpage:"+page.getCurrentpage());
        System.out.println("sortService:totalcount:"+page.getTotalcount());
        System.out.println("sortService:totaloages:"+page.getTotalpage());

        return page;
    }

}
