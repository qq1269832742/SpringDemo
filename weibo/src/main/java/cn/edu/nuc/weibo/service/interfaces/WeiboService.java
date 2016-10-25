package cn.edu.nuc.weibo.service.interfaces;

import java.util.List;

import cn.edu.nuc.weibo.dto.Follow;
import cn.edu.nuc.weibo.dto.PageInfo;

public interface WeiboService {
	
	
	PageInfo weibo(int aid, int current);
	
	
	List<Follow> follow(int aid);

}
