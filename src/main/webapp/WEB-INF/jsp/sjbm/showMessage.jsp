<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en" "http://www.w3.org/tr/xhtml1/dtd/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="css/general.css" />
<script src="js/table.js"></script><!-- 表格变色的js -->
<script src="js/jquery-1.4.2.min.js"></script>
<!-- <script type="text/javascript">
	$(function(){
		$("button").click(function(){
			var value = $("input.hidden").val();
			var first = "f";
			value = first+value.substring(1);
				value +=$(":input.sjbmx").attr("name");
				$(":input.sjbmx").attr("name",value);
		})
		
			
		
	})</script>
 -->
	
	


</head>

<body>
<div class="top">消息</div>
<div class="main">

  <a href="SjbmAction/querySjbmList.do">${message},点击查看所有数据编码！！</a>
<p align="center">数据编码相关信息</p>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								数据编码序号
							</th>
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								数据编码名称
							</th>
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								表名
							</th>
							<th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 109px;">
								标准规范
							</th>
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								标准规范代号
							</th>
							<th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 109px;">
								标准规范发布时间
							</th><th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								暂定代码
							</th>
							<th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 109px;">
								关联模块
							</th><th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								历史编码版本
							</th>
							<th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 109px;">
								解释说明
							</th>
							<th class="sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="" style="width: 148px;">
								发布状态  
							</th>
						</tr>
    	
    	
					
					
						
							<tr class="gradeX odd">
								<td class=" sorting_1">
								
									${sjbm.f_CM_SJBM_id}
								</td>
								
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_mc}</td>
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_dybm}</td>
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_zxbzgfmc}</td>
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_bzgfdh}</td>
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_bzgffbsj}</td>
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_sfhzddm}</td>
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_bsydyyhgnmk}</td>
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_lsbm}</td>
								<td class=" ">${sjbm.f_CM_SJBM_jssm}</td>
								<td class=" "><c:choose><c:when test="${sjbm.f_CM_SJBM_fbzt==0}"><a href="">未发布</a></c:when><c:otherwise>已发布</c:otherwise></c:choose>
								</td>
							</tr>
						
					
</table>

<p align="center">编辑数据编码项相关信息</p>
<form action="SjbmxAction/addSjbmx.do" method="post">
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
	
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								标准编码值
							</th>
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								全称
							</th>
							<th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 109px;">
								简称
							</th>
							<th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								别名
							</th>
							<th class="hidden-480 sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 109px;">
								说明
							</th><th class="hidden-480 sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Email" style="width: 261px;">
								其他信息
							</th>
							
						</tr>
						
							<tr class="gradeX odd">
								
								<td class="hidden-480 " ><input class="sjbmx" type="text" name=f_C_X_bzbmz></td>
								<td class="hidden-480 "><input class="sjbmx"  type="text" name="f_C_X_qc"></td>
								<td class="hidden-480 "><input class="sjbmx" type="text" name="f_C_X_jc"></td>
								<td class="hidden-480 "><input class="sjbmx" type="text" name="f_C_X_bm"></td>
								<td class="hidden-480 "><input class="sjbmx" type="text" name="f_C_X_sm"></td>
								<td class="hidden-480 "><input class="sjbmx" type="text" name="f_C_X_qtxx"></td>
								
							</tr>
							<tr><td colspan="7"><input type="submit" value="提交"></td></tr>
						
					
</table>

</form>

</body>
</html>
