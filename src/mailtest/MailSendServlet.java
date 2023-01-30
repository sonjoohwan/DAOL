package mailtest;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MailSendServlet
 */
@WebServlet("/mailSend")
public class MailSendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailSendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//자바 메일 보내기 폼에서 입력한 한글 정보가 깨지지 않도록
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		//JSP에서는 PrintWriter객체인 out 내장객체가 자동 생성되나 서블릿에서는 out을 직접 생성해야 함(웹브라우저에 출력)
		PrintWriter out = response.getWriter();
		
	//1) 발신자의 메일계정과 비밀번호를 설정한다. (예:구글 계정과 앱 비밀번호 설정)
		String subject = request.getParameter("subject");//보내는 사람
		String sender = request.getParameter("name");//보내는 사람
		String phone = request.getParameter("phone");//연락처
		String receiver = request.getParameter("receiver");//받는 사람
		String email = request.getParameter("email");//메일
		String content = request.getParameter("content");//내용
		
		//smtp(Simple Mail Transfer Protocol) : 인터넷 상에서 이메일을 전송하기 위해서 사용되는 통신 규약(=Protocol) 중의 하나
		//그래서 이메일을 송수신하는 서버을 SMTP서버라고 한다.
		String host = "smtp.gmail.com";//네이버 : "smtp.naver.com"
		
		final String username = "iku6565"; //구글 아이디 입력
		final String password = "igvfjtknzndismef"; //앱 비밀번호 입력
		
		int port = 587;//포트번호(네이버:25, 4465:2차 보안인증으로 메일 전송이 안됨)
		
		try {
	//2) Property에 SMTP 서버 정보를 설정한다.(예:구글의 SMTP 서버 정보를 설정)
			Properties properties = System.getProperties();
			
			//starttls Command를 사용할 수 있게(=enable) 설정
			properties.put("mail.smtp.starttls.enable", "true");//gmail은 무조건 true 고정
		
			//SMTP 서버 주소
			properties.put("mail.smtp.host", host);//"smtp.gmail.com"
			
			//auth Command를 사용하여 사용자 인증을 할 수 있게 설정
			properties.put("mail.smtp.auth", "true");//gmail은 무조건 true 고정
			
			//포트번호 설정
			properties.put("mail.smtp.port", port);//gmail의 포트=587
			
			//★★교재 없는 내용 추가함 -> 없으면 오류 발생함 ★★★★
			properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
	
	/*3) SMTP 서버 정보와 사용자 정보를 기반으로 Session 클래스의 객체를 생성한다.
		 메일을 전송하는 역할을 하는 단위인 Session 객체 생성(SMTP서버정보, 사용자인증정보)
	*/		
			Session s = Session.getDefaultInstance(properties, 
												   new Authenticator() {

														@Override
														protected PasswordAuthentication getPasswordAuthentication() {
															
															return new PasswordAuthentication(username, password);
														}
														
												   }					
												   );
	/*4) Message 클래스의 객체를 생성하여 "수신자와 제목, 내용, 날짜"의 메세지를 작성한다.
	 	위에서 생성한 Session 객체를 사용하여 전송할 Message 객체 생성
	 	5)에서 "수신자 메일주소, 제목, 내용, 날짜"를 작성한다.
	 */
			Message message = new MimeMessage(s);
			
	//5) 
			//메일을 송신할(=보낸) 송신주소 생성
			Address sender_address = new InternetAddress(sender);
			
			//메일을 수신할(=받는) 수신주소 생성
			Address receiver_address = new InternetAddress(receiver);
			
			//메일 전송에 필요한 값 설정
			message.setHeader("content-type", "text/html;charset=UTF-8");
			message.setFrom(sender_address);//송신자 메일주소 셋팅
			
			//1.수신자 메일주소-한명일 때
			message.addRecipient(Message.RecipientType.TO, receiver_address);//수신자 메일주소 셋팅
			
			message.setSubject(subject);//메일 제목 셋팅
			message.setContent(content, "text/html;charset=UTF-8");//메일 내용 셋팅
			message.setSentDate(new java.util.Date());//날짜 생성하여 셋팅
			
			//message를 메일로 전송
			Transport.send(message);
			 response.sendRedirect("main.jsp");
			
		}catch(Exception e) {
			out.println("SMTP 서버가 잘못 설정되었거나 서비스에 문제가 있습니다.");//웹브라우저에 출력
			e.printStackTrace();
		}
	}

}







