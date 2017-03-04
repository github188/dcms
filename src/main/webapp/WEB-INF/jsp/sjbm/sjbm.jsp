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
<script type="text/javascript">
$(document).ready(function(){
	$("button.query").click(function(){
		var value = $("#submitValue").attr("value");;
		var url = "querySjbmByName.do?str="+value;
		window.location.href=url;
	})
	
	$("button.zjsjbm").click(function(){
		
		var url = "toAdd.do";
		window.location(url);
	})
	
	$("button.scsjbm").click(function(){
		var idArr = new Array();
		var tabArr =new Array();
		$("input:checkbox").each(function(){
			if($(this).attr("checked")==true){
				idArr.push($(this).val());
				tabArr.push($("input[name=hidden"+$(this).val()+"]").val())
			}
		});
		 var url = "toDelete.do?arr="+idArr+"&tableName="+tabArr;
		window.location(url); 
		alert("删除成功！！")
	})
	
	
	
})
</script>

</head>

<body>
<div class="top">数据编码展示</div>
<div class="main">
<p align="center">  <button class="zjsjbm">增加数据编码</button><button class="scsjbm">删除数据编码</button> <input id="submitValue"type="text" value="请输入关键词" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999" > <button class="query">查询</button></p>
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
    	
    	<c:if test="${not empty sjbmList.list}">
					
						<c:forEach items="${sjbmList.list}" var="sjbm" varStatus="vs">
						
							<tr class="gradeX odd">
								<td class=" sorting_1">
								
									${sjbm.f_CM_SJBM_id}
									<input type="checkbox" class="ssjbm"  value="${sjbm.f_CM_SJBM_id}">
									<input type="hidden" name="hidden${sjbm.f_CM_SJBM_id}" value="${sjbm.f_CM_SJBM_dybm}">
								</td>
								
								<td class="hidden-480 ">${sjbm.f_CM_SJBM_mc}</td>
								<td class="hidden-480 "><a href="SjbmxAction/querySjbmxList.do?tableName=${sjbm.f_CM_SJBM_dybm}">${sjbm.f_CM_SJBM_dybm}</a></td>
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
						</c:forEach>    
					</c:if>
					
</table>


<p align="center">

			<c:if test="${sjbmList.hasPreviousPage}">
                        <td><a href="${pageContext.request.contextPath}/SjbmAction/querySjbmList.do?pageNum=${sjbmList.prePage}">前一页</a></td>
                    </c:if>
                    <c:forEach items="${sjbmList.navigatepageNums}" var="nav">
                        <c:if test="${nav == sjbmList.pageNum}">
                            <td style="font-weight: bold;">${nav}</td>
                        </c:if>
                        <c:if test="${nav != sjbmList.pageNum}">
                            <td><a href="${pageContext.request.contextPath}/SjbmAction/querySjbmList.do?pageNum=${nav}">${nav}</a></td>
                        </c:if>
                    </c:forEach>
                    <c:if test="${sjbmList.hasNextPage}">
                        <td><a href="${pageContext.request.contextPath}/SjbmAction/querySjbmList.do?pageNum=${sjbmList.nextPage}">下一页</a></td>
                    </c:if>
</p>
</div>
<div class="footer">
编码统计：${sjbmList.total }   <!-- 国际标准编码总条数：$   公安推荐编码总条数：$   地方推荐编码总条数：$  暂定编码总条数：$ -->
</div>
</body>
</html>
