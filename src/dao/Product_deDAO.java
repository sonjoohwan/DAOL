package dao;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vo.Product_de;
import vo.Product_et;

public class Product_deDAO {
	private Connection con = null;
	private PreparedStatement pstmt= null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	private Product_deDAO() {}
	
	private static Product_deDAO product_deDAO;
	//2. getInstance() : static (이유? 객체를 생성하기 전에 이미 메모리에 올라간 이 메서드를 통해서만 DogDAO객체를 단 1개만 만들도록한기위해)
	public static Product_deDAO getInstance() {
		
		if(product_deDAO == null) {//DAO객체가 없으면
			product_deDAO = new Product_deDAO(); //객체 생성
		}
		
		return product_deDAO; //객체 주소 반환
	}

	public void setConnection(Connection con) {
			this.con=con;
	}
	// 목록 마지막 페이지 구하는 메서드 
	public int maxPage() {
		int maxPageNum =0 ;
		String sql = "select floor(count(*)/10) from product_de";
		
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
	public ArrayList<Product_de> selectProduct_deList(int productPageNum) {
		
		int pageNum2 =0 ;
		if(1<= productPageNum && productPageNum <= maxPage()){
			pageNum2 = (productPageNum-1)*12;
		}
		
		ArrayList<Product_de> product_deList = new ArrayList<Product_de>();
		String sql = "select * from product_de limit "+pageNum2+", 12"  ;
		System.out.println("pageNum2 :" +pageNum2);
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
					Product_de product_de = new Product_de(
							rs.getInt("product_no"),
							rs.getString("product_name"),
							rs.getString("product_cap"),
							rs.getString("product_char"),
							rs.getString("product_desc"),
							rs.getString("product_use"),
							rs.getString("product_image")
							);
					product_deList.add(product_de);
				}
		}catch (SQLException e) {
			 System.out.println("selectProduct_phList()에러 :" + e );
		}finally {
			close(rs);
			close(pstmt);
		}
		return product_deList;
	}
	
	//product_no에 해당하는 특정 신발 상품 정보 객체로 변환
	public Product_de selectProduct_deView(int product_no) {
		Product_de product_deView =null;
		
		String sql = "select * from product_de where product_no=?";
				try {
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, product_no);
					rs = pstmt.executeQuery();
					
					if(rs.next()) {
						product_deView = new Product_de (
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
				
		return product_deView;// 제품 정보를 반환
	}
	
	public int insertProduct(Product_de product_de) {
		int insertCount = 0;
		
		String sql = "insert into product_de values(?,?,?,?,?,?,?)";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_de.getProduct_no());
			pstmt.setString(2, product_de.getProduct_name());
			pstmt.setString(3, product_de.getProduct_cap());
			pstmt.setString(4, product_de.getProduct_char());
			pstmt.setString(5, product_de.getProduct_desc());
			pstmt.setString(6, product_de.getProduct_use());
			pstmt.setString(7, product_de.getProduct_image());
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

