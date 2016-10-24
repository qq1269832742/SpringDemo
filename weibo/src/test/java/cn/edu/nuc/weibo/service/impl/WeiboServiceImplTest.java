package cn.edu.nuc.weibo.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.nuc.weibo.BaseTest;
import cn.edu.nuc.weibo.dto.PageInfo;
import cn.edu.nuc.weibo.service.interfaces.WeiboService;

public class WeiboServiceImplTest extends BaseTest {

	@Autowired
	private WeiboService weiboService;
	@Test
	public void testWeibo() {
		
		PageInfo pi = weiboService.weibo(1, 1);
		
		
		System.out.println( pi );
		
	}

}
