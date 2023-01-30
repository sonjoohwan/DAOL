package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_2BDAO;
import dao.Product_hbDAO;
import vo.Product_2B;
import vo.Product_hb;

public class Product_hbListService {
public ArrayList<Product_hb> getProduct_hbList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_hbDAO product_hbDAO = Product_hbDAO.getInstance();
		
		product_hbDAO.setConnection(con);
		
		ArrayList<Product_hb> product_hbList = product_hbDAO.selectProduct_hbList(productPageNum);
		int MaxProductPageNum = product_hbDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_hbList;
}

}