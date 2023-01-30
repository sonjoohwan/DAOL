package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_etDAO;
import vo.Product_et;
public class Product_etListService {
	public ArrayList<Product_et> getProduct_etList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_etDAO product_etDAO = Product_etDAO.getInstance();
		
		product_etDAO.setConnection(con);
		
		ArrayList<Product_et> product_ettList = product_etDAO.selectProduct_etList(productPageNum);
		int MaxProductPageNum = product_etDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_ettList;
	}
	
}