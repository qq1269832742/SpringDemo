package cn.edu.nuc.ssm.service.impl;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nuc.ssm.dao.UserMapper;
import cn.edu.nuc.ssm.entity.Admin;
import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Citem;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.Msg;
import cn.edu.nuc.ssm.entity.User;
import cn.edu.nuc.ssm.service.interfaces.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	/**
	 * 登录模块
	 */
	public User login(User user) {
		System.out.println("service--------");
		User u = userMapper.login(user);
		System.out.println(user);
		if (u == null) {
			throw new RuntimeException("用户名或密码不正确");
		} else {
			return u;
		}

	}

	/**
	 * 加入购物车
	 */
	public void shop(Cart cart) {

		userMapper.shop(cart);

	}

	/**
	 * 查询购物车商品
	 */
	public List<Cart> findCart(Integer id) {

		List<Cart> list = userMapper.findCart(id);

		return list;
	}

	/**
	 * 查询搜索商品
	 */
	@Override
	public List<Cart> itemFind(String text) {

		List<Cart> list = userMapper.itemFind(text);

		return list;
	}

	/**
	 * 购物车中有名称和价格相同的商品,修改数量
	 */
	@Override
	public void updateNum(Cart cart) {

		userMapper.updateNum(cart);

	}

	/**
	 * 查询购物车中有名称和价格相同的商品
	 */
	@Override
	public Cart findCartEqual(Citem ci) {

		Cart c = userMapper.finCartEqual(ci);
		return c;
	}

	/**
	 * 删除商品
	 */
	@Override
	public void deleteItem(Cart cart) {

		userMapper.userMapper(cart);
	}

	public void dealCart(Integer cartid) {

		userMapper.dealCart(cartid);

	}
	/**
	 * 购买的时候查找商品
	 */
	public Item findShangpin(Integer itemid) {

		Item item = userMapper.findShangpin(itemid);

		return item;
	}

	/**
	 * 查找购物车
	 */
	public Cart findCarts(Integer cartid) {

		Cart cart = userMapper.findCarts(cartid);

		return cart;
	}

	/**
	 * 处理商品库存
	 */

	public void dealItem(Cart cart) {

		userMapper.dealItem(cart);

	}
	/**
	 * 结算
	 */
	@Override	
	public Msg jieSuan(Integer[] orderids) {

		Msg msg = new Msg();
		Double total=0.0;
	for (int i = 0; i < orderids.length; i++) {
		
		Cart cart  = this.findCarts(orderids[i]);
		Item item  = this.findShangpin(cart.getMid());
		if(item.getXwwKucun()>=cart.getNums()){
			
			this.dealCart(orderids[i]);
			this.dealItem(cart);										
			total=total+cart.getNums()*item.getXwwPrice();
			msg.setTotal(total);
			msg.setMsg("消费成功,您总共花费"+msg.getTotal()+"元");
	}else{
			msg.setMsg("对不起,当前"+item.getXwwName()+"库存不足");
	   	}				
	}
		return msg;
	}
	/**
	 * 添加至购物车
	 */
	@Override
	public String addCarts(Item item, Cart cart,Model model,HttpSession session) {
		User u = (User) session.getAttribute("user");
		String msg;
		cart.setUid(u.getId());
		cart.setMid(item.getId());
		Citem ci = new Citem(cart,item);
		Cart c = this.findCartEqual(ci);
		if(cart.getNums()>0 && cart.getNums() <= item.getXwwKucun() &&!cart.getNums().equals("")&&item.getXwwName()!=null){
			if( c!=null){
				this.updateNum(cart);
			}else{
				this.shop(cart);
			}
			return "redirect:find_cart";	
		}else{
			msg="添加购物车失败，需要符合规范";
			model.addAttribute("error", msg);
			return "forward:WEB-INF/views/user/edit.jsp";
		}
	}
	/**
	 * 編輯商品
	 */
	@Override
	public Msg setNumsById(Cart cart) {
		Msg msg = new Msg();
		
		int n = userMapper.setNumsById(cart);
		if(n>0){
			msg.setMsg("修改购买数量成功");
		}else{
			 msg.setMsg("修改失败");
		}
		return msg;
	}
	/**
	 * 查询用户名是否存在
	 */
	@Override
	public Msg selectByName(String username) {
		Msg msg= new Msg();
		User user = userMapper.selectByName(username);
		if(user!=null || username.equals("") ||username==null){
			
			msg.setCode(500);
			msg.setMsg("用户名存在或者不能为空");
		}else{
			msg.setCode(200);	
			msg.setMsg("可以注册");
		}
		return msg;
	}
	/**
	 * 注册
	 */
	@Override
	public void insertUser(User user) {

		userMapper.insertUser(user);
		
	}



}
