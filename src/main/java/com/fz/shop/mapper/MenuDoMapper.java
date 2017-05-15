package com.fz.shop.mapper;

import com.fz.shop.model.MenuDo;
import com.fz.shop.util.MyMapper;

import java.util.List;

public interface MenuDoMapper extends MyMapper<MenuDo> {

    /**
     * 查询所有叶子节点
     */
    public List<Long> queryLeafNode();

}