package cn.edu.nuc.ssm.controller;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import cn.edu.nuc.ssm.entity.Admin;
import cn.edu.nuc.ssm.entity.Item;
import cn.edu.nuc.ssm.service.interfaces.AdminService;
@Controller
public class AdminController {
	@Autowired
	private  AdminService adminservice;
	@RequestMapping(value="/sys_login",method=RequestMethod.POST)
	public String syslogin(Admin admin,HttpSession session,Model model){
		try {
			Admin  ad = adminservice.login(admin);
			session.setAttribute("admin", ad);	
			return "forward:findAll";
			//return "forward:WEB-INF/views/sys/item.jsp";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String msg="请重新登录";
		model.addAttribute("msg", msg);
		return "forward:WEB-INF/views/index.jsp";
	}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String index(){
		
		return "login";
	}
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String admin(){
		
		return "index";
	}
	/**
	 * 查询全部商品
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/findAll",method={RequestMethod.POST,RequestMethod.GET})
	public String findAll(Model model){
		
		List<Item> list = adminservice.findAll();
		
		model.addAttribute("list", list);
		return "sys/item";
	}
	/**
	 * 跳转增加新商品
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/sys_add",method=RequestMethod.GET)
	public String toAdd(Model model){
		
		
		return "sys/add";
	}
	/**
	 * 增加商品模块
	 */
	@RequestMapping(value="add_item",method=RequestMethod.POST)
	public String additem(Item item){
		Item it = adminservice.findEqual(item);
		System.out.println(it);
		if(it !=null){
			adminservice.updateNum(item);
		}else{
		adminservice.addItem(item);
		}
		return "redirect:findAll";		
	}
	@RequestMapping(value="sys_delete/{id}",method=RequestMethod.GET)
	public String deleteItem(@PathVariable Integer id){
		
		adminservice.deleteItem(id);
		
		return "redirect:/findAll";	
	}
	/**
	 * 跳转商品编辑界面
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="to_edit",method=RequestMethod.GET)
	public String editItem( Item item,Model model){
		System.out.println(item.toString());
		model.addAttribute("item",item);
		
		return "sys/edit";	
	}
	/**
	 * 编辑商品界面
	 * @param item
	 * @return
	 */
	@RequestMapping(value="/sys_edit",method=RequestMethod.POST)
	public String edit(Item item){
		
		adminservice.edit(item);
		
		return "redirect:/findAll";	
	}
}
