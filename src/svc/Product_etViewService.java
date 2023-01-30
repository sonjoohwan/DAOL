package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.Product_etDAO;
import vo.Product_et;
import vo.Product_ph;

public class Product_etViewService {
	
	public Product_et getProduct_etView (int product_no) {
	Connection con = getConnection();
	
	Product_etDAO product_etDAO = Product_etDAO.getInstance();
	
	product_etDAO.setConnection(con);
	
	Product_et product_et = product_etDAO.selectProduct_etView(product_no);
	
	close(con);
	
	return product_et;
	
	
	
	}	
}
