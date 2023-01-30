package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_2BDAO;
import dao.Product_tsDAO;
import vo.Product_2B;
import vo.Product_ts;

public class Product_tsListService {
public ArrayList<Product_ts> getProduct_tsList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_tsDAO product_tsDAO = Product_tsDAO.getInstance();
		
		product_tsDAO.setConnection(con);
		
		ArrayList<Product_ts> produc_tsList = product_tsDAO.selectProduct_tsList(productPageNum);
		int MaxProductPageNum = product_tsDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return produc_tsList;
}

}