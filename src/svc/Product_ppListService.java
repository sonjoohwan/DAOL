package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_ppDAO;
import vo.Product_pp;

public class Product_ppListService {
public ArrayList<Product_pp> getProduct_ppList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_ppDAO product_ppDAO = Product_ppDAO.getInstance();
		
		product_ppDAO.setConnection(con);
		
		ArrayList<Product_pp> product_ppList = product_ppDAO.selectProduct_ppList(productPageNum);
		int MaxProductPageNum = product_ppDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_ppList;
}

}