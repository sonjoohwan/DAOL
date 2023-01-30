package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Product_2BDAO;
import vo.Product_2B;

public class Product_2BListService {
public ArrayList<Product_2B> getProduct_2BList(HttpServletRequest request, int productPageNum) {
		
		Connection con = getConnection();
		
		Product_2BDAO product_2BDAO = Product_2BDAO.getInstance();
		
		product_2BDAO.setConnection(con);
		
		ArrayList<Product_2B> product_2BList = product_2BDAO.selectProduct_2BList(productPageNum);
		int MaxProductPageNum = product_2BDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return product_2BList;
}

}