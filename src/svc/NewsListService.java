package svc;
import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.NewsDAO;
import vo.News;

public class NewsListService {

	public ArrayList<News> getNewsList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		NewsDAO newsDAO = NewsDAO.getInstance();
		
		newsDAO.setConnection(con);
		
		ArrayList<News> newsList = newsDAO.selectNewsList(productPageNum);
		int MaxProductPageNum = newsDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return newsList;
	}




}
