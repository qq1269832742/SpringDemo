package cn.edu.nuc.ssm.dao;

import java.util.List;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.User;

public interface UserMapper {

	User login(User user);


	void shop(Cart cart);



	List<Cart> findCart(Integer id);


	List<Cart> itemFind(String text);

}
