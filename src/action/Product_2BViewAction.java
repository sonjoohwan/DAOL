package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_2BViewService;
import vo.ActionForward;
import vo.Product_2B;

public class Product_2BViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		Product_2BViewService product_2BViewService = new Product_2BViewService();
		
		int product_no = Integer.parseInt(request.getParameter("product_no"));
		
		Product_2B product_2BView = product_2BViewService.getProduct_2BView(product_no);
		
		
		request.setAttribute("product_2BView", product_2BView);
		forward = new ActionForward("product/2bbiobeauty_Detail.jsp",false);
		return forward;
	}

}
