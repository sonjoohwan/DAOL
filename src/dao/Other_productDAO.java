package dao;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vo.Other_product;


public class Other_productDAO {
	private Connection con = null;
	private PreparedStatement pstmt= null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	private Other_productDAO() {}
	
	private static Other_productDAO other_productDAO;
	//2. getInstance() : static (이유? 객체를 생성하기 전에 이미 메모리에 올라간 이 메서드를 통해서만 DogDAO객체를 단 1개만 만들도록한기위해)
	public static Other_productDAO getInstance() {
		
		if(other_productDAO == null) {//DAO객체가 없으면
			other_productDAO = new Other_productDAO(); //객체 생성
		}
		
		return other_productDAO; //객체 주소 반환
	}

	public void setConnection(Connection con) {
			this.con=con;
	}
	// 목록 마지막 페이지 구하는 메서드 
	public int maxPage() {
		int maxPageNum =0 ;
		String sql = "select floor(count(*)/10) from other_product";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				maxPageNum = rs.getInt(1);
			}
			
		}catch (SQLException e) {
			System.out.println("[other_productDAO] maxPage() 에러 : "+e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return maxPageNum;
	}
	//모든 신발 목록 조회
	public ArrayList<Other_product> selectOther_productList(int productPageNum) {
		
		int pageNum2 =0 ;
		if(1<= productPageNum && productPageNum <= maxPage()){
			pageNum2 = (productPageNum-1)*12;
		}
		
		ArrayList<Other_product> other_productList = new ArrayList<Other_product>();
		String sql = "select * from other_product limit "+pageNum2+", 12"  ;
		System.out.println("pageNum2 :" +pageNum2);
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Other_product other_product = new Other_product(
							rs.getInt("product_no"),
							rs.getString("product_name"),
							rs.getString("product_cap"),
							rs.getString("product_char"),
							rs.getString("product_desc"),
							rs.getString("product_use"),
							rs.getString("product_image")
							);
				other_productList.add(other_product);
				}
		}catch (SQLException e) {
			 System.out.println("selectProduct_2BList()에러 :" + e );
		}finally {
			close(rs);
			close(pstmt);
		}
		return other_productList;
	}
	
	//product_no에 해당하는 특정 신발 상품 정보 객체로 변환
	public Other_product selectOther_productView(int product_no) {
		Other_product other_productView =null;
		
		String sql = "select * from other_product where product_no=?";
				try {
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, product_no);
					rs = pstmt.executeQuery();
					
					if(rs.next()) {
						other_productView = new Other_product (
								rs.getInt("product_no"),
								rs.getString("product_name"),
								rs.getString("product_cap"),
								rs.getString("product_char"),
								rs.getString("product_desc"),
								rs.getString("product_use"),
								rs.getString("product_image")
								);
					}
				}catch (SQLException e) {
					System.out.println("selectProductView()에러 : "+e);
				}finally {
					close(rs);
					close(pstmt);
				}
				
		return other_productView;// 제품 정보를 반환
	}
	
	public int insertProduct(Other_product other_product) {
		int insertCount = 0;
		
		String sql = "insert into other_product values(?,?,?,?,?,?,?)";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, other_product.getProduct_no());
			pstmt.setString(2, other_product.getProduct_name());
			pstmt.setString(3, other_product.getProduct_cap());
			pstmt.setString(4, other_product.getProduct_char());
			pstmt.setString(5, other_product.getProduct_desc());
			pstmt.setString(6, other_product.getProduct_use());
			pstmt.setString(7, other_product.getProduct_image());
			insertCount = pstmt.executeUpdate();
		}catch(Exception e){
			System.out.println("insertProduct() :" + e);
		} finally {
			close(pstmt);
		}
		return insertCount;
	}
	
	//조회수 증가 메서드 추가 필요
	public int updateReadCount(int product_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	}

