package com.bocom.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bocom.entity.TCmSjbm;
import com.bocom.service.SjbmService;
import com.bocom.service.SjbmxService;







	@Controller
	@RequestMapping("/SjbmAction")
	public class SjbmComtroller {
		
		
		@Resource
		private SjbmService sjbmService;
		@Resource
		private SjbmxService sjbmxService;
		
		/**
		 * 
		 * @param req
		 * @param session
		 * @return	查询所有的数据编码
		 */
		
		@RequestMapping("/querySjbmList")
		public String getAll(HttpServletRequest req,HttpSession session){
			int pageNum=req.getParameter("pageNum")==null?1:Integer.parseInt(req.getParameter("pageNum"));
			
			
			try {
				session.setAttribute("sjbmList", sjbmService.querySjbmList(pageNum));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "/sjbm/sjbm";
		}
		/**
		 * 
		 * @param req
		 * @param session
		 * @return 查询指定的数据编码
		 * @throws IOException
		 */
		@RequestMapping("/querySjbmByName")
		public String getSjbmByName(HttpServletRequest req,HttpSession session) throws IOException{
			int pageNum=req.getParameter("pageNum")==null?1:Integer.parseInt(req.getParameter("pageNum"));
			String name = req.getParameter("str");
			System.out.println(name);
			System.out.println(sjbmService.querySjbmByMc(pageNum, name));
			session.setAttribute("sjbmList", sjbmService.querySjbmByMc(pageNum, name));
			return "/sjbm/sjbm";
		}
		
		/**
		 * 
		 * @param session
		 * @param tCmSjbm
		 * @return	增加数据编码
		 */
		@RequestMapping("/addSjbm")
		public String addSjbm(HttpSession session,TCmSjbm tCmSjbm){
			sjbmxService.createSjbmx(tCmSjbm.getF_CM_SJBM_dybm().toUpperCase());
			tCmSjbm.setF_CM_SJBM_dybm("T_C_"+tCmSjbm.getF_CM_SJBM_dybm().toUpperCase());
			int a=sjbmService.addSjbm(tCmSjbm);
			System.out.println(tCmSjbm.getF_CM_SJBM_bzgfdh()+"   "+a);
			session.setAttribute("message", "增加成功！！");
			
			session.setAttribute("sjbm",sjbmService.querySjbmById(tCmSjbm.getF_CM_SJBM_id()) );
			System.out.println(sjbmService.querySjbmById(tCmSjbm.getF_CM_SJBM_id()) );
			return "/sjbm/showMessage";

			
		}
		/**
		 * 
		 * @return 跳转增加数据编码页面
		 */
		@RequestMapping("/toAdd")
		public String toAdd(){
			return "/sjbm/addsjbm";
			
		}
		/**
		 * 
		 * @param req
		 * @param session
		 * @return	查询所有未发布的数据编码
		 */
		@RequestMapping("/fbzt")
		public String getSjbmByFbzt(HttpServletRequest req,HttpSession session){
			
			int pageNum=req.getParameter("pageNum")==null?1:Integer.parseInt(req.getParameter("pageNum"));
			
			
			session.setAttribute("sjbmList", sjbmService.querySjbmFbzt(pageNum));
			return "/sjbm/fbsjbm";
			
		}
		@RequestMapping("/fbsjbm")
		public String fbSjbm(){
			
			return null;
			
		}
		/**
		 * 
		 * @param request
		 * @return 删除数据编码
		 */
		@RequestMapping("/toDelete")
		public String deleteSjbm(HttpServletRequest request){
			String str = request.getParameter("arr");
			String tName = request.getParameter("tableName");
		//	System.out.println(tableName);
			String[] array =str.split(",");
			String[] tableName = tName.split(",");
			sjbmService.deleteById(array);
		sjbmxService.deleteTable(tableName);
			return "redirect:/SjbmAction/querySjbmList.do";
			
		}
			
}
	

