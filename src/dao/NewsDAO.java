package dao;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import vo.News;
import vo.Product_2B;
import vo.Product_de;
import vo.Product_et;
import vo.Product_hb;

public class NewsDAO {
	private Connection con = null;
	private PreparedStatement pstmt= null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	private NewsDAO() {}
	
	private static NewsDAO newsDAO;
	//2. getInstance() : static (이유? 객체를 생성하기 전에 이미 메모리에 올라간 이 메서드를 통해서만 DogDAO객체를 단 1개만 만들도록한기위해)
	public static NewsDAO getInstance() {
		
		if(newsDAO == null) {//DAO객체가 없으면
			newsDAO = new NewsDAO(); //객체 생성
		}
		
		return newsDAO; //객체 주소 반환
	}

	public void setConnection(Connection con) {
			this.con=con;
	}
	// 목록 마지막 페이지 구하는 메서드 
	public int maxPage() {
		int maxPageNum =0 ;
		String sql = "select CEIL(count(*)/10) from news";
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				maxPageNum = rs.getInt(1);
			}
			
		}catch (SQLException e) {
			System.out.println("[news] maxPage() 에러 : "+e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return maxPageNum;
	}
	//모든 신발 목록 조회
	public ArrayList<News> selectNewsList(int productPageNum) {
		
		int pageNum2 =0 ;
		if(1<= productPageNum && productPageNum <= maxPage()){
			pageNum2 = (productPageNum-1)*12;
		}
		
		ArrayList<News> newsList = new ArrayList<News>();
		String sql = "select * from news limit "+pageNum2+", 12"  ;
		System.out.println("pageNum2 :" +pageNum2);
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
					News news = new News(
							rs.getInt("news_no"),
							rs.getString("news_name"),
							rs.getString("news_desc"),
							rs.getString("news_desc2"),
							rs.getString("news_image")
							);
					newsList.add(news);
				}
		}catch (SQLException e) {
			 System.out.println("selectNewsList()에러 :" + e );
		}finally {
			close(rs);
			close(pstmt);
		}
		return newsList;
	}
	
	//product_no에 해당하는 특정 신발 상품 정보 객체로 변환
	public News selectNewsView(int news_no) {
		News newsView =null;
		
		String sql = "select * from news where news_no=?";
				try {
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, news_no);
					rs = pstmt.executeQuery();
					
					if(rs.next()) {
						newsView = new News (
								rs.getInt("news_no"),
								rs.getString("news_name"),
								rs.getString("news_desc"),
								rs.getString("news_desc2"),
								rs.getString("news_image")
								);
					}
				}catch (SQLException e) {
					System.out.println("selectNewsView()에러 : "+e);
				}finally {
					close(rs);
					close(pstmt);
				}
				
		return newsView;// 제품 정보를 반환
	}
	
	public int insertProduct(Product_hb product_hb) {
		int insertCount = 0;
		
		String sql = "insert into product_hb values(?,?,?,?,?,?,?)";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_hb.getProduct_no());
			pstmt.setString(2, product_hb.getProduct_name());
			pstmt.setString(3, product_hb.getProduct_cap());
			pstmt.setString(4, product_hb.getProduct_char());
			pstmt.setString(5, product_hb.getProduct_desc());
			pstmt.setString(6, product_hb.getProduct_use());
			pstmt.setString(7, product_hb.getProduct_image());
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

