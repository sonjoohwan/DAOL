package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_phViewService;
import vo.ActionForward;
import vo.Product_ph;

public class Product_phViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		Product_phViewService product_phViewService = new Product_phViewService();
		
		int product_no = Integer.parseInt(request.getParameter("product_no"));
		
		Product_ph product_phView = product_phViewService.getProduct_phView(product_no);
		
		
		request.setAttribute("product_phView", product_phView);
		forward = new ActionForward("product/Phpomula_Detail.jsp",false);
		return forward;
	}

}
