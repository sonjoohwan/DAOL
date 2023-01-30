package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_2BListService;
import svc.Product_csListService;
import svc.Product_deListService;
import vo.ActionForward;
import vo.Product_2B;
import vo.Product_cs;
import vo.Product_de;

public class Product_csListAction implements Action{

	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		
		int productPageNum = 0 ;
		if(request.getParameter("productPageNum")==null) {
			productPageNum = 1;
		}else {
			productPageNum = Integer.parseInt(request.getParameter("productPageNum"));
		}
		
		Product_csListService product_csListService = new Product_csListService();
		
		ArrayList<Product_cs> product_csList = product_csListService.getProduct_csList(request,productPageNum);
		
		request.setAttribute("product_csList", product_csList);
		request.setAttribute("productPageNum", productPageNum);

		forward = new ActionForward("product/cosmodem.jsp",false);
		
		return forward;
	}
}
