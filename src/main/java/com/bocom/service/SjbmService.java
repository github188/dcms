package com.bocom.service;

import java.io.IOException;
import com.bocom.entity.TCmSjbm;
import com.github.pagehelper.PageInfo;



public interface SjbmService {
	
	public PageInfo<TCmSjbm> querySjbmList(int pageNumber)throws IOException;

	public void deleteById(String[] id);
	public int addSjbm(TCmSjbm tcmSjbm);
	
	public int updateSjbm(TCmSjbm tcmSjbm);
	
	public PageInfo<TCmSjbm> querySjbmFbzt(int pageNum);
	public TCmSjbm  querySjbmById(Integer clueId);
	/**
	 * 
	 * @return 
	 */
	
	public int getTotalCount();
	
	/**
	 * 
	 * @param name
	 * @return ��ѯ
	 */
	
	public PageInfo<TCmSjbm> querySjbmByMc(int pageNum,String name);
	
	
	
}
