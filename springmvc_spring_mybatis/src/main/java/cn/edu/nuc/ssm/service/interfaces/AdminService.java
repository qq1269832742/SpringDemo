package cn.edu.nuc.ssm.service.interfaces;

import java.util.List;

import cn.edu.nuc.ssm.entity.Admin;
import cn.edu.nuc.ssm.entity.Item;

public interface AdminService {

	Admin login(Admin admin);

	List<Item> findAll();
	
	void addItem(Item item);

	void deleteItem(Integer id);

	void edit(Item item);

}
