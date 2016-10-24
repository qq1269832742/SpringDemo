package cn.edu.nuc.weibo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.nuc.weibo.dto.PageInfo;
import cn.edu.nuc.weibo.entity.Account;
import cn.edu.nuc.weibo.service.interfaces.WeiboService;

@Controller
@RequestMapping("/u")
public class WeiboController {
	
	@Autowired
	private WeiboService weiboService;
	
	@RequestMapping(value="/{aid}/home",method=RequestMethod.GET)
	public String index(
			@PathVariable("aid") int aid,
			@RequestParam(name="current",defaultValue="1") int current,
			HttpSession session, 
			Model model){
		Account account = (Account)session.getAttribute("account");
		if( account == null || account.getAid() != aid ){
			return "redirect:/login";
		}
		
		PageInfo pi = weiboService.weibo(aid, current);
		
		model.addAttribute("pi", pi);
		return "index";
	}

}
