package cn.edu.nuc.ssm.service.interfaces;

import java.util.List;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.User;

public interface UserService {

	

	User login(User user);


	void shop(Cart cart);


	List<Cart> findCart(Integer id);




	List<Cart> itemFind(String text);


	void updateNum(Item item);
	

	Cart findCartEqual(Cart cart);

	
	
}
