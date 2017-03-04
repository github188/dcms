package com.bocom.controller;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import com.bocom.entity.TCX;
import com.bocom.service.SjbmxService;








	@Controller
	@RequestMapping("/SjbmxAction")
	public class SjbmxComtroller {
		
		
		@Resource
		private SjbmxService sjbmxService;
		
		/**
		 * 
		 * @param req
		 * @param session
		 * @return 展示数据编码项
		 */
		@RequestMapping("/querySjbmxList")
		public String getAll(HttpServletRequest req,HttpSession session){
			
			
			int pageNum=req.getParameter("pageNum")==null?1:Integer.parseInt(req.getParameter("pageNum"));
			String tableName=req.getParameter("tableName");
			//xml(tableName);
			if(tableName==null|| tableName.equals("")){
				tableName = (String) session.getAttribute("tableName");
			}
			
			
			try {
				session.setAttribute("sjbmxList", sjbmxService.querySjbmxList(pageNum,tableName));
				session.setAttribute("tableName", tableName);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "/sjbm/sjbmx";
		}
		
		/**
		 * 动态修改映射xml
		 * @param tableName
		 */
		public  void xml(String tableName){
			String str =tableName.substring(4);
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			  
			 
			try {
				String path =this.getClass().getClassLoader().getResource("\\com\\bocom\\dao\\mapping").getPath();
				System.out.println(path+"TCXMapper.xml");
				DocumentBuilder db = dbf.newDocumentBuilder();
				Document doc = db.parse(path+"TCXMapper.xml");
				 
				NodeList list2 = doc.getElementsByTagName("id");
				((Element) list2.item(0)).setAttribute("column", "F_C_"+str+"_jc");
				NodeList list3 = doc.getElementsByTagName("result");
				
				for (int i = 0; i < list3.getLength(); i++) {
				    Element ele = (Element) list3.item(i);
				  if(ele.getAttribute("property").equals("f_C_X_jc")){
					  ele.setAttribute("column", "F_C_"+str+"_jc");
				  }else if(ele.getAttribute("property").equals("f_C_X_bm")){
					  ele.setAttribute("column", "F_C_"+str+"_bm");
				  }else if(ele.getAttribute("property").equals("f_C_X_bzbmz")){
					  ele.setAttribute("column", "F_C_"+str+"_bzbmz");
				  }else if(ele.getAttribute("property").equals("f_C_X_qc")){
					  ele.setAttribute("column", "F_C_"+str+"_qc");
				  }else if(ele.getAttribute("property").equals("f_C_X_sm")){
					  ele.setAttribute("column", "F_C_"+str+"_sm");
				  }else if(ele.getAttribute("property").equals("f_C_X_qtxx")){
					  ele.setAttribute("column", "F_C_"+str+"_qtxx");
				  }
					  
				  TransformerFactory transformerFactory = TransformerFactory.newInstance();
				   Transformer transformer = transformerFactory.newTransformer();
				   DOMSource domSource = new DOMSource(doc);
				   // 设置编码类型
				   transformer.setOutputProperty(OutputKeys.ENCODING, "UTF-8");
				   StreamResult result = new StreamResult(new FileOutputStream( path+"TCXMapper.xml"));
				   
				   transformer.transform(domSource, result);    
				    
			
				}
				   
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
		}
		
		/**
		 * 
		 * @param session
		 * @param tcx
		 * @return 增加数据编码项
		 */
		@RequestMapping("/addSjbmx")
		public String addSjbmx(HttpSession session,TCX tcx){
			
			
			return null;
			
		}

			
		}

