package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.UserMapper;
import cn.edu.nuc.ssm.entity.Admin;
import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Citem;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.User;
import cn.edu.nuc.ssm.service.interfaces.UserService;
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	/**
	 * 登录模块
	 */
	public User login(User user) {
		System.out.println("service--------");
		User u = userMapper.login(user);
		System.out.println(user);
		if( u == null ){
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
		
		List<Cart> list =  userMapper.findCart(id);
		
		return list;
	}
	/**
	 * 查询搜索商品
	 */
	@Override
	public List<Cart> itemFind(String text) {
		
		List<Cart> list =  userMapper.itemFind(text);
		
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
	 *  查询购物车中有名称和价格相同的商品
	 */
	@Override
	public Cart findCartEqual(Citem ci) {

		Cart c =userMapper.finCartEqual(ci);
		return c;
	}
	/**
	 * 删除商品
	 */
	@Override
	public void deleteItem(Cart cart) {
		
		userMapper.userMapper(cart);
	}
	
	/**
	 * 结算
	 */
	public void jieSuan(Cart cart) {
		
		
						
	}
	@Override
	public Item findStoreNums(Cart cart) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
