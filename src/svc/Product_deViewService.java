package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.Product_deDAO;
import vo.Product_de;

public class Product_deViewService {
	
	public Product_de getProduct_deView (int product_no) {
	Connection con = getConnection();
	
	Product_deDAO product_deDAO = Product_deDAO.getInstance();
	
	product_deDAO.setConnection(con);
	
	Product_de product_de = product_deDAO.selectProduct_deView(product_no);
	
	close(con);
	
	return product_de;
	
	
	
	}	
}
