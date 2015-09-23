<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
	if(confirm("确定审核？审核后意见不能修改，请确定审核意见后再确认！")){
        document.form1.submit();
	}
}
}		
</script>
</head>
<body>
<form action="${pageContext.request.contextPath}/item/Nitem_yue!check.do?type=${type}&item_id=${item_id}" method="post" name="form1">

	<input type="hidden" Id="id" name="id" value="${nitem_yue.id}"/>
	<input type="hidden" Id="operater" name="operater" value="${user.guan_li}"/>
	<table width="100%" border="1" class="myInput">
	<tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>月报基本信息</strong>
		</td>
	</tr>
	    <tr>
			<td width="15%" class="myInputTitle">项目名称</td>	
			<td width="35%">${nitem_yue.name}</td>
			<td width="15%" class="myInputTitle">项目编号</td>	
			<td width="35%">${nitem_yue.num}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">项目建设进度</td>	
			<td width="35%">${nitem_yue.jindu}</td>
			<td width="15%" class="myInputTitle">月报时间</td>	
			<td width="35%">${nitem_yue.year}-${nitem_yue.month}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">图片</td>	
			<td colspan="3">
			<table width="100%" border="0">
			<tr><td>
			<c:forEach items="${pics}" var="pic" varStatus="i">
			<div style="float:left;width:480px" id="div${2000+i.index}"><table width="100%" border="1"><tr><td width="400px">
			<input type="hidden" name="pic" value="${pic.path}"/><a href="${pageContext.request.contextPath}/upFile/file/${pro_area}/${pic.path}" target="_blank">
			<img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${pro_area}/${pic.path}" border=0/></a></td><td rowspan="2" align="center">
			</td></tr>
			<tr><td>类型：<select name="pic_type" style="width:75px"><option value="全景照" <c:if test="${pic.pic_type=='全景照'}">selected</c:if>>全景照</option><option value="局部特写" <c:if test="${pic.pic_type=='局部特写'}">selected</c:if>>局部特写</option></select>说明：<input type="text" name="remark" style="width:230px" value="${pic.remark}"/></td></tr></table></div>
			</c:forEach>
			</td></tr> 
			</table>		
			</td>
		</tr>
	    <tr>
			<td width="15%" class="myInputTitle">填报日期</td>	
			<td width="35%">${nitem_yue.create_date}</td>
			<td width="15%" class="myInputTitle">本月度实际到位资金（<span class="STYLE1">万元</span>）</td>	
			<td width="35%">${nitem_yue.dao_zijin}</td>
	    </tr>
	    <tr>
	        <td colspan="4" class="myInputTitle"><strong>其中：</strong></td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">中央资金补助（<span class="STYLE1">万元</span>）</td>	
			<td width="35%">${nitem_yue.zhong_zijin}</td>
			<td width="15%" class="myInputTitle">到位时间</td>	
			<td width="35%">${nitem_yue.zhong_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">省级资金补助（<span class="STYLE1">万元</span>）</td>	
			<td width="35%">${nitem_yue.sheng_zijin}</td>
			<td width="15%" class="myInputTitle">到位时间</td>	
			<td width="35%">${nitem_yue.sheng_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">州市资金补助（<span class="STYLE1">万元</span>）</td>	
			<td width="35%">${nitem_yue.shi_zijin}</td>
			<td width="15%" class="myInputTitle">到位时间</td>	
			<td width="35%">${nitem_yue.shi_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">县级资金补助（<span class="STYLE1">万元</span>）</td>	
			<td width="35%">${nitem_yue.xian_zijin}</td>
			<td width="15%" class="myInputTitle">到位时间</td>	
			<td width="35%">${nitem_yue.xian_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">自筹资金（<span class="STYLE1">万元</span>）</td>	
			<td width="35%">${nitem_yue.zi_zijin}</td>
			<td width="15%" class="myInputTitle">到位时间</td>	
			<td width="35%">${nitem_yue.zi_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">本月度管网增加长度（<span class="STYLE1">公里</span>）</td>	
			<td width="35%" colspan="3">${nitem_yue.zeng_guan}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">存在主要问题</td>	
			<td width="35%" colspan="3">${nitem_yue.wenti}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">建议意见</td>	
			<td width="35%" colspan="3">${nitem_yue.yijian}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">下月建设计划</td>	
			<td width="35%" colspan="3">${nitem_yue.plan}</td>
	    </tr>
	    <c:if test="${operate=='show'}">
	    <tr>
			<td width="20%" class="myInputTitle">审核状态</td>	
			<td width="30%">
			  <c:choose>
			      <c:when test="${nitem_yue.statu==1}">
			          <img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">按期完成
			      </c:when>
			      <c:when test="${nitem_yue.statu==2}">
			          <img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">按期完成
			      </c:when>
			      <c:otherwise>
			          未审核
			      </c:otherwise>
			  </c:choose>
			</td>
			<td width="20%" class="myInputTitle">审核时间</td>	
			<td width="30%">${nitem_yue.pz_date}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">审核意见</td>	
			<td width="30%" colspan="3">${nitem_yue.pz_yijian}</td>
	    </tr>
	    </c:if>
	    <c:if test="${operate=='check'}">
	      <tr>
			<td width="20%" class="myInputTitle">审核状态</td>	
			<td width="30%">
			    <input type="radio" name="statu" id="statu" value="2"  dataType="Group"/><img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom"  width="20px">未按期完成&nbsp;&nbsp;&nbsp;
			   <input type="radio" name="statu" id="statu" value="1"/><img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">按期完成
			</td>
			<td width="20%"></td>	
			<td width="30%"></td>
	      </tr>
	      <tr>
			<td width="20%" class="myInputTitle">审核意见</td>	
			<td width="30%" colspan="3">
                  <textarea name="pz_yijian" rows="5" id="pz_yijian" style="width:90%" datatype="Require"></textarea>
            </td>
	      </tr>
	    </c:if>
	</table>
	<center>	
	<c:if test="${operate=='check'}">
	   <input id="button" name="button" type="button" value=" 提 交 审 核 " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;</c:if>
	   <input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=${type}&item_id=${item_id}'"/>
	</center>
</form>
</body>
</html>