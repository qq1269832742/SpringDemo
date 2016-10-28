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
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonFormat.Value;

import cn.edu.nuc.ssm.entity.Cart;
import cn.edu.nuc.ssm.entity.Citem;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.entity.Msg;
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
		return "redirect:WEB-INF/views/login.jsp";
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
		Item it = userService.findShangpin(item.getId());
		if(session.getAttribute("user")!=null){
			model.addAttribute("item",it);
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
		
		String msg = userService.addCarts(item,cart,model,session);
		
		return msg;
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
	@RequestMapping(value="/item_find")
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
		
		return "redirect:find_cart";
	}
	/**
	 * 登录
	 */
	@RequestMapping(value="/need_login")
	public String needLogin(){
		
		return "login";
	}
	/**
	 * 结算
	 * @param orderids
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/sss")
	public  @ResponseBody Msg jieSuan( Integer[] orderids){
		
		Msg msg = userService.jieSuan(orderids);
				
		return msg;
	}
	@RequestMapping(value="/setNums")
	
	public @ResponseBody Msg setNums(Cart cart,Model model){
		System.out.println(cart.getId()+"--"+cart.getNums());
		Msg msg = userService.setNumsById(cart);
		
		return msg;
						
	}
	/**
	 * 注销
	 */
	@RequestMapping(value="/login_out")
	public String login_out(HttpSession session){
		
		 
		session.removeAttribute("user");
		
		return "redirect:store";
		
	}
	/**
	 * 跳转注册
	 * @return
	 */
	@RequestMapping(value="/reg")
	public String to_reg(){
		
		return "reg";
		
	}
	/**
	 * 注册
	 * @return
	 */
	@RequestMapping(value="/reg_user")
	public @ResponseBody Msg  reg(User user){
		System.out.println(user.getUsername());
		Msg msg = userService.selectByName(user.getUsername());
		
		return msg;
		
	}
	@RequestMapping(value="/reg_insert")
	
	public String inserUser(User user,Model model){
		System.out.println("----"+user.getUsername());
		Msg msg = userService.selectByName(user.getUsername());
		userService.insertUser(user);
		return "login";
										
	}
}
