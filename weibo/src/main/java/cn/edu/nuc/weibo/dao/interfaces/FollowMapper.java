package cn.edu.nuc.weibo.dao.interfaces;

import cn.edu.nuc.weibo.entity.Follow;

public interface FollowMapper {
    int deleteByPrimaryKey(Integer fid);

    int insert(Follow record);

    int insertSelective(Follow record);

    Follow selectByPrimaryKey(Integer fid);

    int updateByPrimaryKeySelective(Follow record);

    int updateByPrimaryKey(Follow record);
}