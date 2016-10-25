package cn.edu.nuc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.ssm.dao.AdminMapper;
import cn.edu.nuc.ssm.entity.Admin;
import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.service.interfaces.AdminService;
@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminMapper adminMapper;
	/**
	 * 登录模块
	 */
	public Admin login(Admin admin) {
		System.out.println("service--------");
		Admin ad = adminMapper.login(admin);
		System.out.println(admin);
		if( ad == null ){
			throw new RuntimeException("用户名或密码不正确");
		} else {
			return ad;
		}
		
	}
	/**
	 * 查询商品列表
	 */
	public List<Item> findAll() {
		
		List<Item> list = adminMapper.findAll();
						
		return list;
	}
	/**
	 * 添加商品模块
	 */
	public void addItem(Item item) {
		
		adminMapper.addItem(item);
		
	}
	/**
	 * 删除模块
	 */
	public void deleteItem(Integer id) {
	
		adminMapper.deleteItem(id);
	
	}
	/**
	 * 编辑商品模块
	 */

	public void edit(Item item) {
		
		adminMapper.edit(item);
	}
	/**
	 * 查询有无次商品，判断
	 */
	@Override
	public Item findEqual(Item item) {
		Item it = adminMapper.findEqual(item);
		return it;
	}
	/**
	 * 如果有此商品，那么修改数量
	 */
	@Override
	public void updateNum(Item item) {
		
		adminMapper.updateNum(item);
		
	}
	
	
	

}
