package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.Product_2BDAO;
import vo.Product_2B;

public class Product_2BViewService {
	
	public Product_2B getProduct_2BView (int product_no) {
	Connection con = getConnection();
	
	Product_2BDAO product_2BDAO = Product_2BDAO.getInstance();
	
	product_2BDAO.setConnection(con);
	
	Product_2B product_2B = product_2BDAO.selectProduct_2BView(product_no);
	
	close(con);
	
	return product_2B;
	
	
	
	}	
}
