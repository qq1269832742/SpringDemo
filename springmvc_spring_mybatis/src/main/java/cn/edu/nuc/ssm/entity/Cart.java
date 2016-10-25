package cn.edu.nuc.ssm.entity;

import java.util.List;

public class Cart {
	
	/**
	 * 购物车主键
	 * 
	 */
	private Integer id;
	/**
	 * 关联用户
	 */
	private Integer uid;
	/**
	 * 关联商品ID
	 */
	private Integer mid;
	/**
	 * 购买商品数量
	 */
	private Integer nums;
	/**
	 * 商品对象
	 * @return
	 */
	private Item item;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public Integer getNums() {
		return nums;
	}
	public void setNums(Integer nums) {
		this.nums = nums;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	
	
	@Override
	public String toString() {
		return "Cart [id=" + id + ", uid=" + uid + ", mid=" + mid + ", nums="
				+ nums + ", item=" + item + "]";
	}
	
	
	
	
}

