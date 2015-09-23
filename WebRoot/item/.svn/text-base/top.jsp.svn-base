<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%@ page import="java.util.Map" %>
<%
Map itemMap = DataBaseControl.getInstance().getOneResultSet("select t.NAME,t1.quan_ming from T_ITEM_BUILD t,t_didian t1 where t.id=? and t.area=t1.id", new Object[]{request.getAttribute("item")});
%>
<c:set var="itemMap" value="<%=itemMap%>"/>
<script language="JavaScript" type="text/javascript"> 	
function mylink(){
	parent.checkShow('${pageContext.request.contextPath}/item/ItemTongji!yueList.do?item=${item}',4);
}
</script>
<TABLE border=1 borderColor=#ffffff width="100%" align=center>
        <TR>
          <TD background="${pageContext.request.contextPath}/images/top-bg.gif" height=22 width="6%" align=center><A href="${pageContext.request.contextPath}/item/Item_plan!show.do?item=${item}" target="list">项目进度</A></TD>
		  <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="7%" align=center><A href="${pageContext.request.contextPath}/item/Item_build!create.do?id=${item}" target="list">项目建设情况</A></TD>
	      <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="7%" align=center><A href="${pageContext.request.contextPath}/item/Item_build!sheji.do?id=${item}" target="list">项目设计情况</A></TD>
          <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="6%" align=center><A 
            href="${pageContext.request.contextPath}/item/Item_biao!list.do?item=${item}" target="list">招标情况</A></TD>
          <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="6%" align=center><A 
            href="${pageContext.request.contextPath}/item/Item_trz!list.do?item=${item}" target="list">投融资</A></TD>
          <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="6%" align=center><A 
            href="${pageContext.request.contextPath}/item/Item_file!list.do?item=${item}&leibie=1" target="list">相关文件</A></TD>			
          <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="6%" align=center><A 
            href="${pageContext.request.contextPath}/item/Item_file!list.do?item=${item}&leibie=2" target="list">项目图片</A></TD>
          <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="6%" align=center><A 
            href="${pageContext.request.contextPath}/item/Item_report!list.do?item=${item}&type=1" target="list">月报</A></TD>
          <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="6%" align=center><A 
            href="${pageContext.request.contextPath}/item/Item_report!list.do?item=${item}&type=2" target="list">季报</A></TD>
          <TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="6%" align=center><A 
             href="${pageContext.request.contextPath}/item/Item_fees!list.do?item=${item}" target="list">收费情况</A></TD>
          <c:if test="${user.role==1}"><TD background="${pageContext.request.contextPath}/images/top-bg.gif" width="6%" align=center><A 
             href="javascript:mylink()" target="list">返回</A></TD></c:if>			 
     	</TR>
     	<tr>
     	        <TD height=22 align="center" bgcolor="#77C4FC">
     	         <strong>项目名称</strong>
     	        </TD>
     	        <TD colspan="4" bgcolor="#77C4FC">${itemMap.name}</td>
     	        <TD align="center" bgcolor="#77C4FC">
     	           <strong>项目属地</strong>
     	        </td>
     	        <TD colspan="5" bgcolor="#77C4FC">
     	            ${itemMap.quan_ming}
     	        </TD>
     	</tr>
</TABLE>
