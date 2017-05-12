package com.fz.shop.service;

import com.fz.shop.model.MenuDo;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface MenuService extends BaseService<MenuDo>{

    /**
     * 查询菜单
     */
    public Map<Long,List<MenuDo>> queryMenuAll();

}
