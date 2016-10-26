package cn.edu.nuc.ssm.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonFormat.Value;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Citem;
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
	
	@RequestMapping(value="/user_login")
	public String userlogin(User user,HttpSession session,Model model){
		try {
			User  u = userService.login(user);
			session.setAttribute("user", u);	
			return "redirect:store";
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		String msg="请重新登录";
		model.addAttribute("msg", msg);
		return "forward:WEB-INF/views/login.jsp";
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
	
		return "store";
	}
	/**
	 * 跳转商品编辑界面
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/to_shop")
	public String editItem( Item item,Model model,HttpSession session){
		if(session.getAttribute("user")!=null){
			model.addAttribute("item",item);
			return "user/edit";	
		}else{
			return "login";
		}
		
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
		String msg;
		cart.setUid(u.getId());
		cart.setMid(item.getId());
		Citem ci = new Citem(cart,item);
		Cart c = userService.findCartEqual(ci);
		if(cart.getNums()>0 && cart.getNums() <= item.getXwwKucun() &&!cart.getNums().equals("")&&item.getXwwName()!=null){
			if( c!=null){
				userService.updateNum(cart);
			}else{
				userService.shop(cart);
			}
			return "redirect:find_cart";	
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
	@RequestMapping(value="/item_find",method=RequestMethod.POST)
	public String itemFind(String text,Model model){
	
		List<Cart> list = userService.itemFind(text);
		model.addAttribute("list", list);	
		model.addAttribute("text", text);
		return "store";
		
	}
	/**
	 * 购物车删除商品
	 */
	@RequestMapping(value="/cart_delete")
	public String deleteItem(Cart cart ){
		
		userService.deleteItem(cart);
		
		return "forward:find_cart";
	}
	/**
	 * 登录
	 */
	@RequestMapping(value="/need_login")
	public String needLogin(){
		
		return "login";
	}
	@RequestMapping(value="/x")
	public String jieSuan(Cart[] cart,Model model){
			System.out.println("xww");
		for (int i = 0; i < cart.length; i++) {
				Item item =userService.findStoreNums(cart[i]);
				/*System.out.println(cart[i]);*/
				if(item.getXwwKucun()>=cart[i].getNums()){
					userService.jieSuan(cart[i]);
					
				}else{
					return "";
				}
			
			}
		return "store";
	}
}
