package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_csDAO;
import vo.Product_cs;

public class Product_csListService {
public ArrayList<Product_cs> getProduct_csList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_csDAO product_csDAO = Product_csDAO.getInstance();
		
		product_csDAO.setConnection(con);
		
		ArrayList<Product_cs> product_csList = product_csDAO.selectProduct_csList(productPageNum);
		int MaxProductPageNum = product_csDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_csList;
}

}