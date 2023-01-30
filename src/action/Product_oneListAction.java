package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_oneListService;
import vo.ActionForward;
import vo.Product_one;

public class Product_oneListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_oneListService product_oneListService = new Product_oneListService();
		
		ArrayList<Product_one> product_oneList = product_oneListService.getProduct_oneList(request,productPageNum);
		
		request.setAttribute("product_oneList", product_oneList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/onedayfeel.jsp",false);
		
		return forward;
	}
}
