package cn.edu.nuc.weibo.service.interfaces;

import cn.edu.nuc.weibo.entity.Account;

public interface AccountService {
	
	/**
	 * 
	 * @param email
	 * @param password
	 * @return
	 */
	Account login(String email, String password);

}
