package cn.edu.nuc.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Citem;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.User;

public interface UserMapper {

	User login(User user);


	void shop(Cart cart);



	List<Cart> findCart(Integer id);


	List<Cart> itemFind(@Param("text") String text);


	void updateNum(Cart cart);


	Cart findEqualItem(Cart cart);

	Cart finCartEqual(Citem ci);


	void userMapper(Cart cart);
	
	Item findShangpin(@Param("itemid") Integer itemid);


	Cart findCarts(@Param("cartid")  Integer cartid);


	void dealCart(@Param("cartid") Integer cartid);


	void dealItem( Cart cart);


	int setNumsById(Cart cart);


	User selectByName(String username);


	void insertUser(User user);

}
