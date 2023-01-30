package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_2BListService;
import svc.Product_deListService;
import svc.Product_hbListService;
import vo.ActionForward;
import vo.Product_2B;
import vo.Product_de;
import vo.Product_hb;

public class Product_hbListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_hbListService product_hbListService = new Product_hbListService();
		
		ArrayList<Product_hb> product_hbList = product_hbListService.getProduct_hbList(request,productPageNum);
		
		request.setAttribute("product_hbList", product_hbList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/hebeliste.jsp",false);
		
		return forward;
	}
}
