package cn.edu.nuc.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.User;
import cn.edu.nuc.ssm.service.interfaces.AdminService;
import cn.edu.nuc.ssm.service.interfaces.UserService;
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private  AdminService adminservice;
	
	@RequestMapping(value="/user_login",method=RequestMethod.POST)
	public String userlogin(User user,HttpSession session,Model model){
		try {
			User  u = userService.login(user);
			session.setAttribute("user", u);	
			return "forward:store";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String msg="请重新登录";
		model.addAttribute("msg", msg);
		return "forward:WEB-INF/views/user/login.jsp";
	}
	/**
	 * 查询全部商品
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/store",method={RequestMethod.POST,RequestMethod.GET})
	public String findAll(Model model){
		
		List<Item> list = adminservice.findAll();
		
		model.addAttribute("list", list);
	
		return "user/store";
	}
	/**
	 * 跳转商品编辑界面
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/to_shop")
	public String editItem( Item item,Model model){
		
		model.addAttribute("item",item);
		
		return "user/edit";	
	}
	/**
	 * 添加至购物车
	 * @param item
	 * @param cart
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/user_shop")
	public String shop( Item item,Cart cart,Model model,HttpSession session){
		User u = (User) session.getAttribute("user");
		System.out.println("库存"+item.getXwwKucun());
		System.out.println("购买数量"+cart.getNums());
		String msg;
		cart.setUid(u.getId());
		cart.setMid(item.getId());
		if(cart.getNums()>0 && cart.getNums() <= item.getXwwKucun()){
			userService.shop(cart);
			return "forward:find_cart";	
		}else{
			msg="添加购物车失败，需要符合规范";
			model.addAttribute("error", msg);
			return "forward:WEB-INF/views/user/edit.jsp";
		}
		
	}
	/**
	 * 查询购物车
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/find_cart")
	public String findCart( HttpSession session,Model model){
		User u = (User) session.getAttribute("user");
		List<Cart> list = userService.findCart(u.getId());
		model.addAttribute("list", list);
		System.out.println(list);
		return "user/cart";	
	}
	/**
	 * 查询商品
	 * @return
	 */
	@RequestMapping(value="/item_find",method={RequestMethod.POST,RequestMethod.GET})
	public String itemFind(@RequestParam(name="text",defaultValue="") String text,Model model){
		System.out.println("搜索名称"+text);
		List<Cart> list = userService.itemFind(text);
		model.addAttribute("list", list);		
		return "user/store";
		
	}
	
	
}
