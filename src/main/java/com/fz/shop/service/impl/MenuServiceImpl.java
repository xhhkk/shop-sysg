package com.fz.shop.service.impl;

import com.alibaba.fastjson.JSON;
import com.fz.shop.mapper.MenuDoMapper;
import com.fz.shop.model.MenuDo;
import com.fz.shop.service.MenuService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/12.
 */
@Slf4j
@Service
public class MenuServiceImpl extends BaseServiceImpl<MenuDo> implements MenuService{

    @Autowired(required = false)
    private MenuDoMapper menuDoMapper;

    @Override
    public Map<Long, List<MenuDo>> queryMenuAll() {
        MenuDo menuDo = new MenuDo();
        menuDo.setTypePId(0L);

//        menuDo.setRedisKeyId(menuDo.getPTypePId());

        return getMenuDetail(select(menuDo), 0L, new LinkedHashMap<Long, List<MenuDo>>());
    }

    /**
     * 递归方法，实现菜单信息的查询
     *
     * @return
     */
    private Map<Long, List<MenuDo>> getMenuDetail(List<MenuDo> ls, Long menuId, Map<Long, List<MenuDo>> map) {
        if (ls.size() != 0) {
            map.put(menuId, ls);
        }

        for (MenuDo menu : ls) {
            MenuDo menuDo = new MenuDo();
            menuDo.setTypePId(menu.getTypeId());
//            menuDo.setRedisKeyId(menuDo.getPTypePId());

            if (!isLeafNode(menu.getTypeId())) {
                getMenuDetail(select(menuDo), menu.getTypeId(), map);
            }
        }

        return map;
    }

    private Boolean isLeafNode(Long id) {
       /* List<Long> ls = JSON.parseArray(super.getCacheUtils().get("menu:queryLeafNode"), Long.class);
        if(ls==null){
            ls = menuDoMapper.queryLeafNode();
            super.getCacheUtils().put("menu:queryLeafNode",ls);
        }*/

        List<Long> ls = menuDoMapper.queryLeafNode();

        for (Long nodeId : ls) {
            if (id.equals(nodeId)) return Boolean.TRUE;
        }

        return Boolean.FALSE;
    }

}
