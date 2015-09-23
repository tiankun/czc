<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%String id=((Map)session.getAttribute("user")).get("guan_li").toString();
String type=request.getParameter("type");
if("del".equals(type)){
String did=request.getParameter("id");
DataBaseControl.getInstance().executeSql("delete from T_ZHEN_TU where id=?",new Object[]{did});
}
//List fileLists=(List)DataBaseControl.getInstance().getOutResultSet("select h.id,h.pic,K.QUAN_MING didian,replace(h.pic,'/','/_') vpath,h.name from t_zhen_tu h,T_DIDIAN K where h.unit_id=? and (LOWER(h.pic) like '%.jpg' or LOWER(h.pic) like '%.bmp') AND H.UNIT_ID=K.ID",new Object[]{id});
List otherLists=(List)DataBaseControl.getInstance().getOutResultSet("select h.*,K.QUAN_MING didian from t_zhen_tu h,T_DIDIAN K where h.unit_id=? AND H.UNIT_ID=K.ID",new Object[]{id});
if(otherLists!=null&&!otherLists.isEmpty()){%>
<c:set var="otherLists" value="<%=otherLists%>"/><%}%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />	 
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
  <head>
  <script type="text/javascript">
function upPic()
{
  var arr = showModalDialog("<%=request.getContextPath()%>/tese/ChengGuo/upPiFu.jsp", "", "dialogWidth:31em; dialogHeight:18.5em; help: no; scroll: no; status: no"); 
  if (arr != null){
   location.reload();
   }
}
  </script>
  </head>
  
  <body>
     <form method="post" name="form1" id="form1">
	 <table width="100%" border="1" cellspacing="1" cellpadding="1" class="myInput">
	 <tr class="tHead">
	    <td colspan="3" >镇（乡）规划备案列表</td>
	 </tr>	 
	 <tr>
	    <td align="left" colspan="3" >
	          &nbsp;&nbsp;&nbsp;<a style="text-decoration: underline;color: #0033FF; cursor:pointer" href="<%=request.getContextPath()%>/tese/ChengGuo/uploadPiFu.jsp"><strong style="color:#FF0000">新增规划信息</strong></a>
	    </td>
	 </tr>	 
<!--	   <tr>
	     <c:forEach var="fileList" items="${fileLists}" varStatus="i">
	       <td align="center" width="33.3%">
	        <img alt="双击查看原图" onDblClick="window.open('${pageContext.request.contextPath}/archive/File/showImg.jsp?path=${fileList.pic}')" src="${pageContext.request.contextPath}/upFile/file/${fileList.vpath}"/>
	          </br>${fileList.didian}&nbsp;
	            <a style="text-decoration: underline;color: #0033FF; cursor:pointer" href="${pageContext.request.contextPath}/tese/ChengGuo/list.jsp?type=del&id=${fileList.id}" onClick="return window.confirm('你是否确定要删除此文件？');">删除</a>
	       </td>
	     <c:if test="${i.count%3==0}"></tr><tr></c:if>
	    </c:forEach>
	    <c:if test="${fn:length(fileLists)%3==1}"><td></td><td></td></c:if>
	     <c:if test="${fn:length(fileLists)%3==2}"><td></td></c:if>  	    
	   </tr>
	   <tr>
	     <td align="left" colspan="3" style="height:2px;border-color:#000000"></td>
	   </tr> 
	     <c:forEach var="other" items="${otherLists}" varStatus="i"><tr>
	     <td align="left" colspan="3">
	        &nbsp;&nbsp;●&nbsp;<a style="text-decoration: underline;color: #0033FF;" href="${pageContext.request.contextPath}/upFile/file/${other.pic}" target="_blank"">${other.name}</a>&nbsp;&nbsp;&nbsp;
	            <a style="text-decoration: underline;color: #0033FF; cursor:pointer" href="${pageContext.request.contextPath}/tese/ChengGuo/list.jsp?type=del&id=${other.id}" onClick="return window.confirm('你是否确定要删除此文件？');">删除</a>
	     </td>
	   </tr>
	   </c:forEach>	 
-->	   	  	     
	 </table>
     </form>
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
		<ec:column property="id" title="操作" width="40px"><center><a style="text-decoration: underline;color: #0033FF; cursor:pointer" href="${pageContext.request.contextPath}/tese/ChengGuo/list.jsp?type=del&id=${pic.id}" onClick="return window.confirm('你是否确定要删除此文件？');">删除</a></center></ec:column>
	</ec:row>
</ec:table>	
<c:if test="${info!=null}">
<script type='text/javascript'>
alert('${info}');
</script>
</c:if> 
  </body>
</html>
