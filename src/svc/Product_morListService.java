package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_morDAO;
import vo.Product_mor;

public class Product_morListService {
public ArrayList<Product_mor> getProduct_morList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_morDAO product_morDAO = Product_morDAO.getInstance();
		
		product_morDAO.setConnection(con);
		
		ArrayList<Product_mor> product_morList = product_morDAO.selectProduct_morList(productPageNum);
		int MaxProductPageNum = product_morDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_morList;
}

}