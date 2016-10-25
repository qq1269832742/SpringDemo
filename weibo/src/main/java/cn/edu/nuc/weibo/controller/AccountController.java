package cn.edu.nuc.weibo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.nuc.weibo.entity.Account;
import cn.edu.nuc.weibo.service.interfaces.AccountService;

@Controller
public class AccountController {
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String forward(@ModelAttribute("account") Account account){
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Account account, HttpSession session){
		
		try {
			
			account = accountService.login(account.getEmail(), account.getPassword());
			
			session.setAttribute("account", account);
			// /u/122323/home
			return "redirect:/u/" + account.getAid() + "/home";
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:login";
	}
	
	

}
