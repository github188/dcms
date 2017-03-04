package com.bocom.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bocom.entity.TCX;


public interface TCXMapper {
	 List<TCX> selectAll(@Param("tableName")String name,@Param("str")String str);
	void dropTable(@Param("tableName")String tableName);
    int deleteByPrimaryKey(Integer f_C_X_id);
   int createTable(@Param("str")String str);
    int insert(TCX record);
    
    int insertSelective(TCX record);

    TCX selectByPrimaryKey(Integer f_C_X_id);

    int updateByPrimaryKeySelective(TCX record);

    int updateByPrimaryKey(TCX record);
}