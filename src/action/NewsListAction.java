package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.NewsListService;
import vo.ActionForward;
import vo.News;

public class NewsListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		NewsListService newsListService = new NewsListService();
		
		ArrayList<News> newsList = newsListService.getNewsList(request,productPageNum);
		
		request.setAttribute("newsList", newsList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("news.jsp",false);
		
		return forward;
	}

}
