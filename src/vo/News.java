package vo;

public class News {
	private int new_no;
	private String news_name;
	private String news_desc;
	private String news_desc2;
	private String news_image;
	
	public News() {
		super();
	}

	public News(int new_no, String news_name, String news_desc, String news_desc2, String news_image) {
		super();
		this.new_no = new_no;
		this.news_name = news_name;
		this.news_desc = news_desc;
		this.news_desc2 = news_desc2;
		this.news_image = news_image;
	}

	public int getNew_no() {
		return new_no;
	}

	public void setNew_no(int new_no) {
		this.new_no = new_no;
	}

	public String getNews_name() {
		return news_name;
	}

	public void setNews_name(String news_name) {
		this.news_name = news_name;
	}

	public String getNews_desc() {
		return news_desc;
	}

	public void setNews_desc(String news_desc) {
		this.news_desc = news_desc;
	}

	public String getNews_desc2() {
		return news_desc2;
	}

	public void setNews_desc2(String news_desc2) {
		this.news_desc2 = news_desc2;
	}

	public String getNews_image() {
		return news_image;
	}

	public void setNews_image(String news_image) {
		this.news_image = news_image;
	}

	@Override
	public String toString() {
		return "news [new_no=" + new_no + ", news_name=" + news_name + ", news_desc=" + news_desc + ", news_desc2="
				+ news_desc2 + ", news_image=" + news_image + "]";
	}
	
	
	
	
}
