<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
<script language="JavaScript" type="text/JavaScript">
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>
</head>
<body>
<%@ include file="../top.jsp" %>
<form action="${pageContext.request.contextPath}/item/Item_report!check.do" method="post" name="form1" style="margin:0px">
	<input type="hidden" Id="id" name="id" value="${item_report.id}"/>
	<input type="hidden" Id="item" name="item" value="${item_report.item}"/>
	<input type="hidden" Id="type" name="type" value="${item_report.type}"/>
	<table width="100%" border="1" class="myInput">
	    <tr>
			<td width="20%" class="myInputTitle">项目</td>	
			<td width="30%">${item_report.itemName}</td>
			<td width="20%" class="myInputTitle">类型（1：月报，2：季报）</td>	
			<td width="30%">
			  <c:choose>
			      <c:when test="${item_report.type==1}">
			                                        月报
			      </c:when>
			      <c:otherwise>
			                                       季报
			      </c:otherwise>
			  </c:choose>
			</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">
			  <c:choose>
			      <c:when test="${item_report.type==1}">
			                                        上报月份
			      </c:when>
			      <c:otherwise>
			                                       上报季度
			      </c:otherwise>
			  </c:choose>
			</td>	
			<td width="30%">${item_report.yuefen}</td>
			<td width="20%" class="myInputTitle">本月增加管网（公里）</td>	
			<td width="30%">${item_report.zengjia}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">所处阶段</td>	
			<td width="30%">${item_report.jieduan}</td>
			<td width="20%" class="myInputTitle">本月计划到位资金（万元）</td>	
			<td width="30%">${item_report.jh_daowei}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">本月实际到位资金（万元）</td>	
			<td width="30%">${item_report.sj_daowei}</td>
			<td width="20%" class="myInputTitle">本月实际使用资金（万元）</td>	
			<td width="30%">${item_report.sj_shiyong}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">当前累计到位资金（万元）</td>	
			<td width="30%">${item_report.lj_daowei}</td>
			<td width="20%" class="myInputTitle">当前累计使用资金（万元）</td>	
			<td width="30%">${item_report.lj_shiyong}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">厂站建设进展情况</td>	
			<td width="30%">${item_report.cz_jinzhan}</td>
			<td width="20%" class="myInputTitle">管网进展情况</td>	
			<td width="30%">${item_report.gw_jinzhan}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">目前存在问题</td>	
			<td colspan="3">${item_report.wenti}</td>
	    </tr>
	    <c:if test="${item_report.jieduan=='土建'}">
	    <tr>
			<td width="20%" class="myInputTitle">土石方总方量计划工作量</td>	
			<td width="30%">${item_report.tf_jh}</td>
			<td width="20%" class="myInputTitle">土石方总方量已完成量</td>	
			<td width="30%">${item_report.tf_sj}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">建筑物计划工作量</td>	
			<td width="30%">${item_report.jz_jh}</td>
			<td width="20%" class="myInputTitle">建筑物已完成量</td>	
			<td width="30%">${item_report.jz_sj}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">设备工程安装计划工作量</td>	
			<td width="30%">${item_report.sb_jh}</td>
			<td width="20%" class="myInputTitle">设备工程安装已完成量</td>	
			<td width="30%">${item_report.sb_sj}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">水工构件物计划工作量</td>	
			<td width="30%">${item_report.sg_jh}</td>
			<td width="20%" class="myInputTitle">水工构件物已完成量</td>	
			<td width="30%">${item_report.sg_sj}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">管网改造计划工作量</td>	
			<td width="30%">${item_report.gw_jh}</td>
			<td width="20%" class="myInputTitle">管网改造已完成量</td>	
			<td width="30%">${item_report.gw_sj}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">其他计划工作量</td>	
			<td width="30%">${item_report.qt_jh}</td>
			<td width="20%" class="myInputTitle">其他已完成量</td>	
			<td width="30%">${item_report.qt_sj}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">质量、安全情况</td>	
			<td width="30%">${item_report.zlaq}</td>
			<td width="20%" class="myInputTitle">其他方面情况</td>	
			<td width="30%">${item_report.qita}</td>
	    </tr>
	    </c:if>
	    <tr>
			<td width="20%" class="myInputTitle">添加时间</td>	
			<td width="30%">${item_report.input}</td>
			<td width="20%"></td>	
			<td width="30%"></td>
	    </tr>
	    <c:if test="${operate=='show'}">
	    <tr>
			<td width="20%" class="myInputTitle">批准状态</td>	
			<td width="30%">
			  <c:choose>
			      <c:when test="${item_report.pz_zhuangtai==1}">
			          <img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">按期完成
			      </c:when>
			      <c:otherwise>
			          <img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom"  width="20px">未按期完成
			      </c:otherwise>
			  </c:choose>
			</td>
			<td width="20%" class="myInputTitle">批准时间</td>	
			<td width="30%">${item_report.pizhun}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">批准意见</td>	
			<td width="30%" colspan="3">${item_report.pz_yijian}</td>
	    </tr>
	    </c:if>
	    <c:if test="${operate=='check'}">
	      <tr>
			<td width="20%" class="myInputTitle">批准状态</td>	
			<td width="30%">
			    <input type="radio" name="pz_zhuangtai" id="pz_zhuangtai" value="2"  dataType="Group"/><img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom"  width="20px">未按期完成&nbsp;&nbsp;&nbsp;
			   <input type="radio" name="pz_zhuangtai" id="pz_zhuangtai" value="1"/><img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">按期完成
			</td>
			<td width="20%"></td>	
			<td width="30%"></td>
	      </tr>
	      <tr>
			<td width="20%" class="myInputTitle">批准意见</td>	
			<td width="30%" colspan="3">
                  <textarea name="pz_yijian" rows="5" id="pz_yijian" style="width:90%" datatype="Require"></textarea>
            </td>
	      </tr>
	    </c:if>
  <TR>
    <TD height=38 colSpan=4 align=center>
	    <c:if test="${operate=='check'}">
	<input id="button" name="button" type="button" value=" 提 交 审 批 " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;</c:if>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Item_report!list.do?item=${item_report.item}&type=${item_report.type}'"/>
    </TD>
  </TR>
	</table>
</form>
</body>
</html>