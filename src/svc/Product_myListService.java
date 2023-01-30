package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_csDAO;
import dao.Product_myDAO;
import vo.Product_cs;
import vo.Product_my;

public class Product_myListService {
public ArrayList<Product_my> getProduct_myList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_myDAO product_myDAO = Product_myDAO.getInstance();
		
		product_myDAO.setConnection(con);
		
		ArrayList<Product_my> product_myList = product_myDAO.selectProduct_myList(productPageNum);
		int MaxProductPageNum = product_myDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_myList;
}

}