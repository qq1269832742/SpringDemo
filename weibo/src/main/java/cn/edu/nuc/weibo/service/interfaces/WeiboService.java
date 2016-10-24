package cn.edu.nuc.weibo.service.interfaces;

import cn.edu.nuc.weibo.dto.PageInfo;

public interface WeiboService {
	
	
	PageInfo weibo(int aid, int current);

}
