package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.NewsListAction;
import action.Other_productListAction;
import action.Product_2BListAction;
import action.Product_2BViewAction;
import action.Product_csListAction;
import action.Product_deListAction;
import action.Product_deViewAction;
import action.Product_etListAction;
import action.Product_etViewAction;
import action.Product_hbListAction;
import action.Product_morListAction;
import action.Product_myListAction;
import action.Product_oneListAction;
import action.Product_phListAction;
import action.Product_phViewAction;
import action.Product_ppListAction;
import action.Product_tsListAction;
import vo.ActionForward;

@WebServlet("*.daol")
public class ProductFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductFrontController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

	// 이 서블릿으로 들어오는 post나 get 방식의 모든 요청 처리
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // Post : 한글 파라미터 값 한글깨짐 방지

		// 요청객체로부터 '프로젝트명 + 파일경로' 까지 가져옴 (예) /project/dogList.dog
		String requestURI = request.getRequestURI();
		// 요청 URL : http://lacalhost:8090/project/dogList.dog
		// 요청 URI : /project/dogList.dog

		// 요청객체로부터 '프로젝트 path'만 가져옴 (예) /project
		String contextPath = request.getContextPath();

		/*
		 * URI에서 contextPath길이만큼 잘라낸 나머지 문자열 /project/ dogList.dog - /project=
		 * /dogList.dog
		 */

		String command = requestURI.substring(contextPath.length()); // (index8~끝까지) 부분문자열 반환

		Action action = null; // 부모인터페이스
		ActionForward forward = null;

		System.out.println("[Product]command : " + command);// 어떤 요청인지 확인하기 위해 출력

		 if (command.equals("/product_ph.daol")) { // '상품 목록보기' 요청하면
			action = new Product_phListAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("/product_et.daol")) { //에텔랑 액션 
			action = new Product_etListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("에텔랑 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_de.daol")) { //디엘더아로마 액션 
			action = new Product_deListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("디엘더아로마 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_2B.daol")) { //2B 액션 
			action = new Product_2BListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("2B 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_hb.daol")) { //허벌리스테 액션 
			action = new Product_hbListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("허벌리스테 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_ts.daol")) { //ts아로마 액션 
			action = new Product_tsListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("허벌리스테 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_mor.daol")) { //모라츠 액션 
			action = new Product_morListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("허벌리스테 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_one.daol")) { //원데이필 액션 
			action = new Product_oneListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("원데이필 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_pp.daol")) { //퍼펙트필 액션 
			action = new Product_ppListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("퍼펙트필 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_cs.daol")) { //코스모덤 액션 
			action = new Product_csListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("코스모덤 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/other_product.daol")) { //기타제품 액션 
			action = new Other_productListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("기타 제품 액션 에러 : " + e);
			}
		
	}
		
		else if (command.equals("/product_my.daol")) { //미용기기 액션 
			action = new Product_myListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("미용기기 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_phView.daol")) { // ph포뮬라 제품 상세보기
			action = new Product_phViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("ph포뮬라 제품 상세보기 액션 에러 : " + e);
			}
		
	}
		
		else if (command.equals("/product_etView.daol")) { // 에텔랑 제품 상세보기
			action = new Product_etViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("에텔랑 제품 상세보기 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_2BView.daol")) { // 2B바이오뷰티 제품 상세보기
			action = new Product_2BViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("2B 바이오뷰티 제품 상세보기 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/product_deView.daol")) { // 디엘더아로마 제품 상세보기
			action = new Product_deViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("디엘더아로마 상세보기 액션 에러 : " + e);
			}
		
	}
		else if (command.equals("/newsList.daol")) { // news 리스트 상세보기
			action = new NewsListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("News 상세보기 액션 에러 : " + e);
			}
	}
	/*
	 * else if (command.equals("/newsView.daol")) { // news 상세보기 action = new
	 * NewsViewAction(); try { forward = action.execute(request, response); } catch
	 * (Exception e) { System.out.println("News 상세보기 액션 에러 : " + e); } }
	 */
		
		
		/*----------------------장바구니---------------------------------------------------*/
		/*
		 * else if (command.equals("/productCartAdd.shoes")) { // '새로운 장바구니 항목을 추가하는
		 * 장바구니 담기'요청이면 -> productCartList.shoes로 바로 이동한다.(장바구니 목록 보기 요청) action = new
		 * ProductCartAddAction();
		 * 
		 * try { forward = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } } else if (command.equals("/productCartList.shoes")) {
		 * // '장바구니 목록 보기'요청이면 action = new ProductCartListAction();
		 * 
		 * try { forward = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); }
		 * 
		 * } else if (command.equals("/productCartSearch.shoes")) { // '최하가격~최고가격'으로
		 * 장바구니 목록 검색 action = new ProductCartSearchAction();
		 * 
		 * try { forward = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } } else if (command.equals("/productCartQtyUp.shoes"))
		 * { // '장바구니 항목 수량 증가' 요청이면 action = new ProductCartQtyUpAction();
		 * 
		 * try { forward = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } } else if
		 * (command.equals("/productCartQtyDown.shoes")) { // '장바구니 항목 수량 감소' 요청이면
		 * action = new ProductCartQtyDownAction();
		 * 
		 * try { forward = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } } else if (command.equals("/productCartRemove.shoes"))
		 * { // '장바구니 항목 삭제' 요청이면 action = new ProductCartRemoveAction();
		 * 
		 * try { forward = action.execute(request, response); } catch (Exception e) {
		 * e.printStackTrace(); } } else if (command.equals("/productCartOrder.shoes"))
		 * { // '구매하기' 요청이면
		 *//************************* 확인 필요 *****************************//*
																			 * action = new ProductCartOrderAction();
																			 * 
																			 * try { forward = action.execute(request,
																			 * response); } catch (Exception e) {
																			 * //e.printStackTrace(); System.out.
																			 * println("productCartOrder 에러 : "+e); }
																			 * 
																			 * } else if
																			 * (command.equals("/OrderResult.shoes")) {
																			 * // '주문완료' action = new
																			 * OrderResultAction();
																			 * 
																			 * try { forward = action.execute(request,
																			 * response); } catch (Exception e) {
																			 * e.printStackTrace(); }
																			 * 
																			 * }
																			 */
		/************************
		 * 포워딩
		 **********************************/
		if (forward != null) {
			if (forward.isRedirect()) {// true
				response.sendRedirect(forward.getPath()); // 응답-새요청
			} else { // false : 디스패치-기존요청 전달 기존데이터 다사용가능
				request.getRequestDispatcher(forward.getPath()).forward(request, response);

			}
		}

	}
}
