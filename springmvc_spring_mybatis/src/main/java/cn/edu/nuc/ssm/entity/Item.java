package cn.edu.nuc.ssm.entity;

public class Item {
	
	/**
	 * id,主键
	 */
	private Integer id;
	/**
	 * 商品名称
	 */
	private String  xwwName;
	/**
	 * 商品价格
	 */
	private Double xwwPrice;
	/**
	 * 商品照片,存放路径
	 */
	private String xwwPic;
	/**
	 * 商品库存
	 */
	private Integer xwwKucun;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getXwwName() {
		return xwwName;
	}
	public void setXwwName(String xwwName) {
		this.xwwName = xwwName;
	}

	
	public Double getXwwPrice() {
		return xwwPrice;
	}
	public void setXwwPrice(Double xwwPrice) {
		this.xwwPrice = xwwPrice;
	}
	public String getXwwPic() {
		return xwwPic;
	}
	public void setXwwPic(String xwwPic) {
		this.xwwPic = xwwPic;
	}
	
	public Integer getXwwKucun() {
		return xwwKucun;
	}
	public void setXwwKucun(Integer xwwKucun) {
		this.xwwKucun = xwwKucun;
	}
	@Override
	public String toString() {
		return "Item [id=" + id + ", xwwName=" + xwwName + ", xwwPrice=" + xwwPrice + ", xwwPic=" + xwwPic
				+ ", xwwKucun=" + xwwKucun + "]";
	}
	
}
