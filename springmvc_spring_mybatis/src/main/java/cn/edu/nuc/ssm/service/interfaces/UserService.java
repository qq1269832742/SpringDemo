package cn.edu.nuc.ssm.service.interfaces;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Citem;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.Msg;
import cn.edu.nuc.ssm.entity.User;

public interface UserService {

	User login(User user);

	void shop(Cart cart);

	List<Cart> findCart(Integer id);

	List<Cart> itemFind(String text);


	void updateNum(Cart cart);
	

	Cart findCartEqual(Citem ci);


	void deleteItem(Cart cart);


	void dealCart(Integer cartid);

	Item findShangpin(Integer itemid);


	Cart findCarts(Integer cartid);


	void dealItem(Cart cart);
	
	@Transactional(timeout=30,rollbackFor=SQLException.class)
	Msg jieSuan(Integer [] orderids);


	String addCarts(Item item, Cart cart, Model model, HttpSession session);

	Msg setNumsById(Cart cart);

	Msg selectByName(String username);


	void insertUser(User user);
	


	



	

	


	
	
}
