package com.bocom.service;

import java.io.IOException;

import com.bocom.entity.TCX;
import com.github.pagehelper.PageInfo;



public interface SjbmxService {
	
	public PageInfo<TCX> querySjbmxList(int pageNumber,String tableName)throws IOException;
	
	public void deleteTable(String[] tableName);
	public int addSjbmx(TCX tcmSjbm);
	
	public int updateSjbmx(TCX tcmSjbm);
	public void createSjbmx(String str);
	
	public TCX  querySjbmxById(Integer clueId);
}
