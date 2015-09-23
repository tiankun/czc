<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%String id=request.getParameter("id");
Map didian=DataBaseControl.getInstance().getOneResultSet("select quan_ming from t_didian where id=?", new Object[]{id});
List otherLists=(List)DataBaseControl.getInstance().getOutResultSet("select h.*,K.QUAN_MING didian from t_zhen_tu h,T_DIDIAN K where h.unit_id=? AND H.UNIT_ID=K.ID",new Object[]{id});
if(otherLists!=null&&!otherLists.isEmpty()){%>
<c:set var="otherLists" value="<%=otherLists%>"/><%}%>
<c:set var="didian" value="<%=didian%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script> 
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
  <head>
  </head>
  
  <body>
	 <table width="100%" border="1" cellspacing="1" cellpadding="1" class="myInput">
	 <tr class="tHead">
	    <td colspan="3" >${didian.quan_ming}&nbsp;&nbsp;镇（乡）规划备案列表</td>
	 </tr>	 
	 <tr>
	    <td align="left" colspan="3" >
	          &nbsp;&nbsp;&nbsp;<a style="text-decoration: underline;color: #0033FF; cursor:pointer" onClick="history.back();">返回</a>
	    </td>
	 </tr>	   
	 </table>
<ec:table items='otherLists' var="pic" view="compact" rowsDisplayed="20" action="#" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif" sortable="false" filterable="false">
	<ec:row highlightRow="true">
		<ec:column property="type" title="类型"/>
		<ec:column property="name" title="规划说明"><c:if test="${fn:length(pic.name)>0}"><c:set var="names" value='${fn:split(pic.name,";")}'/>
<c:forEach items="${names}" var="name" varStatus="n"><a href="${pageContext.request.contextPath}/upFile/file/${pic.unit_id}/${name}" target="_blank" ><img src='${pageContext.request.contextPath}/images/pic.jpg' border="0"/></a>&nbsp;<c:if test="${n.count%5==0}"><br/></c:if></c:forEach></c:if></ec:column>
		<ec:column property="pic" title="规划图纸"><c:if test="${fn:length(pic.pic)>0}"><c:set var="mpics" value='${fn:split(pic.pic,";")}'/>
<c:forEach items="${mpics}" var="mpic" varStatus="i"><a href="${pageContext.request.contextPath}/upFile/file/${pic.unit_id}/${mpic}" target="_blank" ><img src='${pageContext.request.contextPath}/images/pic.jpg' border="0"/></a>&nbsp;<c:if test="${i.count%15==0}"><br/></c:if></c:forEach></c:if></ec:column>			
		<ec:column property="nian_xian" title="规划年限"/>
		<ec:column property="pi_fu" title="批复文件及文件号"><c:if test="${pic.pf_pic!=null}"><a style="text-decoration: underline;color: #0033FF;" href="${pageContext.request.contextPath}/upFile/file/${pic.unit_id}/${pic.pf_pic}" target="_blank"">${pic.pi_fu==null?pic.pf_name:pic.pi_fu}</a></c:if></ec:column>
		<ec:column property="gh_danwei" title="规划编制单位单位名称"/>
		<ec:column property="gh_ren" title="规划编制单位联系人"/>
		<ec:column property="gh_dianhua" title="规划编制单位联系电话"/>
	</ec:row>
</ec:table>
  </body>
</html>
