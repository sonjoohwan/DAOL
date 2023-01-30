package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_ppListService;
import vo.ActionForward;
import vo.Product_pp;

public class Product_ppListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_ppListService product_ppListService = new Product_ppListService();
		
		ArrayList<Product_pp> product_ppList = product_ppListService.getProduct_ppList(request,productPageNum);
		
		request.setAttribute("product_ppList", product_ppList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/perfectfeel.jsp",false);
		
		return forward;
	}
}
