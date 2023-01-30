package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_2BDAO;
import dao.Product_oneDAO;
import vo.Product_2B;
import vo.Product_one;

public class Product_oneListService {
public ArrayList<Product_one> getProduct_oneList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_oneDAO product_oneDAO = Product_oneDAO.getInstance();
		
		product_oneDAO.setConnection(con);
		
		ArrayList<Product_one> product_oneList = product_oneDAO.selectProduct_oneList(productPageNum);
		int MaxProductPageNum = product_oneDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_oneList;
}

}