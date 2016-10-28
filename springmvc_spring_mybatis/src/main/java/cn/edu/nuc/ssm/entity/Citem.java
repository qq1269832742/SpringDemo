package cn.edu.nuc.ssm.entity;

public class Citem {
	
	private Cart cart;
	private Item item;
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public Citem(Cart cart, Item item) {
		super();
		this.cart = cart;
		this.item = item;
	}
	public Citem() {
	
	}
	@Override
	public String toString() {
		return "Citem [cart=" + cart + ", item=" + item + "]";
	}
	
}
