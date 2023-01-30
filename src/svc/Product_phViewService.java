package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.ProductDAO;
import vo.Product_ph;

public class Product_phViewService {
	
	public Product_ph getProduct_phView (int product_no) {
	Connection con = getConnection();
	
	ProductDAO productDAO = ProductDAO.getInstance();
	
	productDAO.setConnection(con);
	
	Product_ph product_ph = productDAO.selectProduct_phView(product_no);
	
	close(con);
	
	return product_ph;
	
	
	
	}	
}
