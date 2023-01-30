package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dao.Other_productDAO;
import vo.Other_product;

public class Other_productListService {
	public ArrayList<Other_product> getOther_productList(HttpServletRequest request, int productPageNum) {
		
Connection con = getConnection();
		
		Other_productDAO other_productDAO = Other_productDAO.getInstance();
		
		other_productDAO.setConnection(con);
		
		ArrayList<Other_product> other_productList = other_productDAO.selectOther_productList(productPageNum);
		int MaxProductPageNum = other_productDAO.maxPage();
		
		request.setAttribute("MaxProductPageNum", MaxProductPageNum);
		
		close(con);
		
		return other_productList;
	}

	

	
}