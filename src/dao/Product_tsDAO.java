package dao;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vo.Product_2B;
import vo.Product_de;
import vo.Product_et;
import vo.Product_ts;

public class Product_tsDAO {
	private Connection con = null;
	private PreparedStatement pstmt= null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	private Product_tsDAO() {}
	
	private static Product_tsDAO product_tsDAO;
	//2. getInstance() : static (이유? 객체를 생성하기 전에 이미 메모리에 올라간 이 메서드를 통해서만 DogDAO객체를 단 1개만 만들도록한기위해)
	public static Product_tsDAO getInstance() {
		
		if(product_tsDAO == null) {//DAO객체가 없으면
			product_tsDAO = new Product_tsDAO(); //객체 생성
		}
		
		return product_tsDAO; //객체 주소 반환
	}

	public void setConnection(Connection con) {
			this.con=con;
	}
	// 목록 마지막 페이지 구하는 메서드 
	public int maxPage() {
		int maxPageNum =0 ;
		String sql = "select CEIL(count(*)/10) from product_ts";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				maxPageNum = rs.getInt(1);
			}
			
		}catch (SQLException e) {
			System.out.println("[ProductDAO] maxPage() 에러 : "+e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return maxPageNum;
	}
	//모든 신발 목록 조회
	public ArrayList<Product_ts> selectProduct_tsList(int productPageNum) {
		
		int pageNum2 =0 ;
		if(1<= productPageNum && productPageNum <= maxPage()){
			pageNum2 = (productPageNum-1)*10;
		}
		
		ArrayList<Product_ts> product_tsList = new ArrayList<Product_ts>();
		String sql = "select * from product_ts limit "+pageNum2+", 12"  ;
		System.out.println("pageNum2 :" +pageNum2);
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
					Product_ts product_ts = new Product_ts(
							rs.getInt("product_no"),
							rs.getString("product_name"),
							rs.getString("product_cap"),
							rs.getString("product_char"),
							rs.getString("product_desc"),
							rs.getString("product_use"),
							rs.getString("product_image")
							);
					product_tsList.add(product_ts);
				}
		}catch (SQLException e) {
			 System.out.println("selectProduct_tsList()에러 :" + e );
		}finally {
			close(rs);
			close(pstmt);
		}
		return product_tsList;
	}
	
	//product_no에 해당하는 특정 신발 상품 정보 객체로 변환
	public Product_ts selectProduct_tsView(int product_no) {
		Product_ts product_tsView =null;
		
		String sql = "select * from product_ts where product_no=?";
				try {
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, product_no);
					rs = pstmt.executeQuery();
					
					if(rs.next()) {
						product_tsView = new Product_ts (
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
				
		return product_tsView;// 제품 정보를 반환
	}
	
	public int insertProduct(Product_ts product_ts) {
		int insertCount = 0;
		
		String sql = "insert into product_ts values(?,?,?,?,?,?,?)";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_ts.getProduct_no());
			pstmt.setString(2, product_ts.getProduct_name());
			pstmt.setString(3, product_ts.getProduct_cap());
			pstmt.setString(4, product_ts.getProduct_char());
			pstmt.setString(5, product_ts.getProduct_desc());
			pstmt.setString(6, product_ts.getProduct_use());
			pstmt.setString(7, product_ts.getProduct_image());
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

