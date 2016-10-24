package cn.edu.nuc.weibo.dao.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.nuc.weibo.entity.Weibo;

public interface WeiboMapper {
	

    int deleteByPrimaryKey(Integer wid);

    int insert(Weibo record);

    int insertSelective(Weibo record);

    Weibo selectByPrimaryKey(Integer wid);

    int updateByPrimaryKeySelective(Weibo record);

    int updateByPrimaryKey(Weibo record);
    
    int count(int aid);
    
    List<Weibo> findByAid( @Param("aid") int aid, @Param("start") int start, @Param("offset")int offset);

}