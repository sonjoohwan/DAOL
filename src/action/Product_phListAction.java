package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_phListService;
import vo.ActionForward;
import vo.Product_ph;

public class Product_phListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_phListService product_phListService = new Product_phListService();
		
		ArrayList<Product_ph> product_phList = product_phListService.getProduct_phList(request,productPageNum);
		
		request.setAttribute("product_phList", product_phList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/Phpomula.jsp",false);
		
		return forward;
	}

}
