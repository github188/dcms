package com.bocom.service.impl;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.bocom.dao.TCmSjbmMapper;
import com.bocom.entity.TCmSjbm;
import com.bocom.service.SjbmService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Service
public class SjbmServiceImpl implements SjbmService {
	@Resource
	private TCmSjbmMapper tCmSjbmMapper ;
	@Resource
	private SqlSessionFactory sqlSessionFactory;

	public PageInfo<TCmSjbm> querySjbmList(int pageNumber ) throws IOException {
		//List<TCmSjbm> list = tCmSjbmMapper.selectAll();
		SqlSession sqlSession = sqlSessionFactory.openSession();
		TCmSjbmMapper countryMapper = sqlSession.getMapper(TCmSjbmMapper.class); 
		PageHelper.startPage(pageNumber,10);  
		
		List<TCmSjbm> list = tCmSjbmMapper.selectAll("T_CM_SJBM");
		PageInfo<TCmSjbm> page = new PageInfo(list);
		System.out.println(page);
		
		return page;
	}

	public int addSjbm(TCmSjbm tcmSjbm) {
		
		return tCmSjbmMapper.insertSelective(tcmSjbm);
	}

	public int updateSjbm(TCmSjbm tcmSjbm) {
		// TODO Auto-generated method stub
		return 0;
	}

	public TCmSjbm querySjbmById(Integer clueId) {
		
		
		return tCmSjbmMapper.selectByPrimaryKey(clueId);
	}
	
	public int getTotalCount() {
		
		
		return tCmSjbmMapper.selectCount();
	}

	public PageInfo<TCmSjbm> querySjbmByMc(int pageNum,String name) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession();
		TCmSjbmMapper countryMapper = sqlSession.getMapper(TCmSjbmMapper.class); 
		PageHelper.startPage(pageNum,10);  
		
		List<TCmSjbm> list = tCmSjbmMapper.selectByF_CM_SJBM_mc(name);
		PageInfo<TCmSjbm> page = new PageInfo(list);
		
		return page;
	}

	/**
	 * 
	 * @param pageNum
	 * @return 获取未发布的数据编码
	 */
	public PageInfo<TCmSjbm> querySjbmFbzt(int pageNum) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		TCmSjbmMapper countryMapper = sqlSession.getMapper(TCmSjbmMapper.class); 
		PageHelper.startPage(pageNum,10);  
		
		List<TCmSjbm> list = tCmSjbmMapper.selectByF_CM_SJBM_fbzt(pageNum);
		PageInfo<TCmSjbm> page = new PageInfo(list);
		return page;
	}
	/**
	 * 批量删除
	 */
	public void deleteById(String[] id) {
		tCmSjbmMapper.deleteByPrimaryKey(id);
		
		
	}

	



}
