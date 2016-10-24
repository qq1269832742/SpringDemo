package cn.edu.nuc.weibo.dao.interfaces;

import cn.edu.nuc.weibo.entity.Liked;
import cn.edu.nuc.weibo.entity.LikedKey;

public interface LikedMapper {
    int deleteByPrimaryKey(LikedKey key);

    int insert(Liked record);

    int insertSelective(Liked record);

    Liked selectByPrimaryKey(LikedKey key);

    int updateByPrimaryKeySelective(Liked record);

    int updateByPrimaryKey(Liked record);
}