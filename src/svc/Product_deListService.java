package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_deDAO;
import vo.Product_de;

public class Product_deListService {
public ArrayList<Product_de> getProduct_deList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_deDAO product_deDAO = Product_deDAO.getInstance();
		
		product_deDAO.setConnection(con);
		
		ArrayList<Product_de> product_deList = product_deDAO.selectProduct_deList(productPageNum);
		int MaxProductPageNum = product_deDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_deList;
	}

}
