package com.bocom.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bocom.entity.TCmSjbm;

public interface TCmSjbmMapper {
	
    int deleteByPrimaryKey(@Param("f_CM_SJBM_id")String[] f_CM_SJBM_id);

    int insert(TCmSjbm record);
    int selectCount();
    List<TCmSjbm> selectByF_CM_SJBM_mc(@Param("f_CM_SJBM_mc")String name);

    int insertSelective(TCmSjbm record);
    List<TCmSjbm> selectAll(@Param("tableName")String name);
    //List<TCmSjbm> selectAll(int pageNumber );
    TCmSjbm selectByPrimaryKey(@Param("f_CM_SJBM_id")Integer f_CM_SJBM_id);
    
    List<TCmSjbm> selectByF_CM_SJBM_fbzt(int pageNum);
    
    int updateByPrimaryKeySelective(TCmSjbm record);

    int updateByPrimaryKey(TCmSjbm record);
}