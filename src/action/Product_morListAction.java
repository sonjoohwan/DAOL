package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_morListService;
import vo.ActionForward;
import vo.Product_mor;

public class Product_morListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_morListService product_morListService = new Product_morListService();
		
		ArrayList<Product_mor> product_morList = product_morListService.getProduct_morList(request,productPageNum);
		
		request.setAttribute("product_morList", product_morList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/morach.jsp",false);
		
		return forward;
	}
}
