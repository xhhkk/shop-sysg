package com.fz.shop.util;

import tk.mybatis.mapper.common.IdsMapper;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * 继承自己的MyMapper
 * Created by Administrator on 2017/5/11.
 */
public interface MyMapper<T> extends Mapper<T>, MySqlMapper<T>, IdsMapper<T>{
}
