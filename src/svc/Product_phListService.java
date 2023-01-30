package svc;
import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.ProductDAO;
import vo.Product_ph;

public class Product_phListService {

	public ArrayList<Product_ph> getProduct_phList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		ProductDAO productDAO = ProductDAO.getInstance();
		
		productDAO.setConnection(con);
		
		ArrayList<Product_ph> product_phList = productDAO.selectProduct_phList(productPageNum);
		int MaxProductPageNum = productDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_phList;
	}



}
