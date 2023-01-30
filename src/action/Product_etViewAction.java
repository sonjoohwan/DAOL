package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_etViewService;
import vo.ActionForward;
import vo.Product_et;

public class Product_etViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		Product_etViewService product_etViewService = new Product_etViewService();
		
		int product_no = Integer.parseInt(request.getParameter("product_no"));
		
		Product_et product_etView = product_etViewService.getProduct_etView(product_no);
		
		
		request.setAttribute("product_etView", product_etView);
		forward = new ActionForward("product/Etelang_Detail.jsp",false);
		return forward;
	}

}
