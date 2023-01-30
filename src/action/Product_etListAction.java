package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_etListService;
import svc.Product_phListService;
import vo.ActionForward;
import vo.Product_et;
import vo.Product_ph;

public class Product_etListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
				ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_etListService product_etListService = new Product_etListService();
		
		ArrayList<Product_et> product_etList = product_etListService.getProduct_etList(request,productPageNum);
		
		request.setAttribute("product_etList", product_etList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/eterang.jsp",false);
		
		
		
		
		
		
		
		
		
		
		return forward;
	}

}
