package service;

import dao.searchDao;
import entity.News;
import servlet.searchServlet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class searchService {
    public List<News> getSearchlist(String key) throws SQLException {
        searchDao dao = new searchDao();
        int kind = dao.getSearch(key);
        List<News> searchlist = new ArrayList<>();
        searchlist = dao.getSearchlist(key,kind);
        System.out.println("searchService:key"+key);
        return searchlist;
    }


}
