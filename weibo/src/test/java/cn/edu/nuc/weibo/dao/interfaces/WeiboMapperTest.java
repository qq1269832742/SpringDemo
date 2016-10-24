package cn.edu.nuc.weibo.dao.interfaces;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.nuc.weibo.BaseTest;
import cn.edu.nuc.weibo.entity.Weibo;

public class WeiboMapperTest extends BaseTest {

	@Autowired
	private WeiboMapper weiboMapper;
	
	
	@Test
	public void testDeleteByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsert() {
		fail("Not yet implemented");
	}

	@Test
	public void testInsertSelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateByPrimaryKey() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindByAid() {
		
		List<Weibo> list = weiboMapper.findByAid(1, 0, 5);
		
		System.out.println(list);
	}
	
	
	@Test
	public void testCount() {
		
		int count = weiboMapper.count(1);
		
		System.out.println(count);
	}

}
