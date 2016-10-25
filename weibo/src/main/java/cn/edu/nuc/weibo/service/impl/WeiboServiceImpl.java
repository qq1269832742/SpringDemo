package cn.edu.nuc.weibo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.weibo.dao.interfaces.FollowMapper;
import cn.edu.nuc.weibo.dao.interfaces.WeiboMapper;
import cn.edu.nuc.weibo.dto.Follow;
import cn.edu.nuc.weibo.dto.PageInfo;
import cn.edu.nuc.weibo.entity.Weibo;
import cn.edu.nuc.weibo.service.interfaces.WeiboService;

@Service
public class WeiboServiceImpl implements WeiboService {
	
	@Autowired
	private WeiboMapper weiboMapper;
	
	@Autowired
	private FollowMapper followMapper;

	@Override
	public PageInfo weibo(int aid, int current) {
		
		PageInfo pi = new PageInfo(current);
		int count = weiboMapper.count(aid);
		pi.setCount(count);
		
		List<Weibo> list = weiboMapper.findByAid(aid, pi.getStart(), pi.getOffset());
		
		pi.setList(list);
		
		return pi;
	}

	@Override
	public List<Follow> follow(int aid) {
		return followMapper.follow(aid);
	}

}
