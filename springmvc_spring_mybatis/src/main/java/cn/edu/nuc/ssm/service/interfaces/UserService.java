package cn.edu.nuc.ssm.service.interfaces;

import java.util.List;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Citem;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.User;

public interface UserService {

	

	User login(User user);


	void shop(Cart cart);


	List<Cart> findCart(Integer id);




	List<Cart> itemFind(String text);


	void updateNum(Cart cart);
	

	Cart findCartEqual(Citem ci);


	void deleteItem(Cart cart);


	void jieSuan(Cart cart);


	Item findStoreNums(Cart cart);

	
	
}
