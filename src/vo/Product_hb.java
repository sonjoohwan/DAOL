package vo;

public class Product_hb {
	private int product_no;

	private String product_name;
	private String product_cap;
	private String product_char;
	private String product_desc;
	private String product_use;
	private String product_image;
	
	public Product_hb() {
		super();
	}

	public Product_hb(int product_no, String product_name, String product_cap, String product_char, String product_desc,
			String product_use, String product_image) {
		super();
		this.product_no = product_no;
		this.product_name = product_name;
		this.product_cap = product_cap;
		this.product_char = product_char;
		this.product_desc = product_desc;
		this.product_use = product_use;
		this.product_image = product_image;
	}

	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_cap() {
		return product_cap;
	}

	public void setProduct_cap(String product_cap) {
		this.product_cap = product_cap;
	}

	public String getProduct_char() {
		return product_char;
	}

	public void setProduct_char(String product_char) {
		this.product_char = product_char;
	}

	public String getProduct_desc() {
		return product_desc;
	}

	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}

	public String getProduct_use() {
		return product_use;
	}

	public void setProduct_use(String product_use) {
		this.product_use = product_use;
	}

	public String getProduct_image() {
		return product_image;
	}

	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}

	@Override
	public String toString() {
		return "Product_hb [product_no=" + product_no + ", product_name=" + product_name + ", product_cap="
				+ product_cap + ", product_char=" + product_char + ", product_desc=" + product_desc + ", product_use="
				+ product_use + ", product_image=" + product_image + "]";
	}
	
	
}
