package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_2BListService;
import svc.Product_deListService;
import svc.Product_tsListService;
import vo.ActionForward;
import vo.Product_2B;
import vo.Product_de;
import vo.Product_ts;

public class Product_tsListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_tsListService product_tsListService = new Product_tsListService();
		
		ArrayList<Product_ts> product_tsList = product_tsListService.getProduct_tsList(request,productPageNum);
		
		request.setAttribute("product_tsList", product_tsList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/tsaroma.jsp",false);
		
		return forward;
	}
}
