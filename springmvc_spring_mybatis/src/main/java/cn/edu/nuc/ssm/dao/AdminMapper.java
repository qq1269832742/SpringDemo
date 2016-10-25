package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.Admin;
import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Item;

public interface AdminMapper {

	Admin login(Admin admin);

	List<Item> findAll();
	
	void addItem(Item item);


	void deleteItem(Integer id);

	void edit(Item item);

	Item findEqual(Item item);

	void updateNum(Item item);

	Item findItemEqual(Item item);



}
