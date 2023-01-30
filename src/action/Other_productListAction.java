package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Other_productListService;
import vo.ActionForward;
import vo.Other_product;

public class Other_productListAction implements Action {
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Other_productListService other_productListService = new Other_productListService();
		
		ArrayList<Other_product> other_productList = other_productListService.getOther_productList(request,productPageNum);
		
		request.setAttribute("other_productList", other_productList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/Other_product.jsp",false);
		
		return forward;
	}

}
