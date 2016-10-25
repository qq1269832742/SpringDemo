package cn.edu.nuc.weibo.dao.interfaces;

import java.util.List;

import cn.edu.nuc.weibo.entity.Follow;

public interface FollowMapper {
    int deleteByPrimaryKey(Integer fid);

    int insert(Follow record);

    int insertSelective(Follow record);

    Follow selectByPrimaryKey(Integer fid);
    
    List<cn.edu.nuc.weibo.dto.Follow> follow(Integer aid);

    int updateByPrimaryKeySelective(Follow record);

    int updateByPrimaryKey(Follow record);
}