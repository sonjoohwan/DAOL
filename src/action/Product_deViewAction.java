package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Product_deViewService;
import svc.Product_etViewService;
import vo.ActionForward;
import vo.Product_de;
import vo.Product_et;

public class Product_deViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		
		Product_deViewService product_deViewService = new Product_deViewService();
		
		int product_no = Integer.parseInt(request.getParameter("product_no"));
		
		Product_de product_deView = product_deViewService.getProduct_deView(product_no);
		
		
		request.setAttribute("product_deView", product_deView);
		forward = new ActionForward("product/Dlthearoma_Detail.jsp",false);
		return forward;
	}

}
