package com.ckc.core.dao;

import java.util.List;

import com.ckc.core.po.BaseDict;

public interface BaseDictDao {
	public List<BaseDict> selectBaseDictByTypeCode(String typecode);
}
