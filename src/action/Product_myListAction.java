package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_morListService;
import svc.Product_myListService;
import vo.ActionForward;
import vo.Product_mor;
import vo.Product_my;

public class Product_myListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_myListService product_myListService = new Product_myListService();
		
		ArrayList<Product_my> product_myList = product_myListService.getProduct_myList(request,productPageNum);
		
		request.setAttribute("product_myList", product_myList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/myoyng.jsp",false);
		
		return forward;
	}
}
