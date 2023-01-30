package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_2BListService;
import svc.Product_deListService;
import vo.ActionForward;
import vo.Product_2B;
import vo.Product_de;

public class Product_2BListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_2BListService product_2BListService = new Product_2BListService();
		
		ArrayList<Product_2B> product_2BList = product_2BListService.getProduct_2BList(request,productPageNum);
		
		request.setAttribute("product_2BList", product_2BList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/2bbiobeauty.jsp",false);
		
		return forward;
	}
}
