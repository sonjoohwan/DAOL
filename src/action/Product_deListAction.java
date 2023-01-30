package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_deListService;
import vo.ActionForward;
import vo.Product_de;

public class Product_deListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_deListService product_deListService = new Product_deListService();
		
		ArrayList<Product_de> product_deList = product_deListService.getProduct_deList(request,productPageNum);
		
		request.setAttribute("product_deList", product_deList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/dlthearoma.jsp",false);
		
		return forward;
	}
}
