package cn.edu.nuc.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.User;

public interface UserMapper {

	User login(User user);


	void shop(Cart cart);



	List<Cart> findCart(Integer id);


	List<Cart> itemFind(@Param("text") String text);


	void updateNum(Item item);


	Cart findEqualItem(Cart cart);


	Cart findCartEqual(Cart cart);

}
