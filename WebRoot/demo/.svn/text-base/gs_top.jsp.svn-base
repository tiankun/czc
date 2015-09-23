<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<TABLE border=1 borderColor=#ffffff width="100%" background="${pageContext.request.contextPath}/images/top-bg.gif" align=center>
        <TBODY>
        <TR>
          <TD height=22 width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/report.jsp?p_type=${param.p_type}" target="list">项目进度</A></TD>
          <c:choose>
          	<c:when test="${param.p_type==1}">
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/lj_jianshe.jsp?p_type=${param.p_type}" target="list">项目建设情况</A></TD>
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/lj_sheji.jsp?p_type=${param.p_type}" target="list">项目设计情况</A></TD>
          	</c:when>
          	<c:when test="${param.p_type==2}">
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/ws_jianshe.jsp?p_type=${param.p_type}" target="list">项目建设情况</A></TD>
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/ws_sheji.jsp?p_type=${param.p_type}" target="list">项目设计情况</A></TD>
          	</c:when>
          	<c:otherwise>
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/gs_jianshe.jsp?p_type=${param.p_type}" target="list">项目建设情况</A></TD>
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/gs_sheji.jsp?p_type=${param.p_type}" target="list">项目设计情况</A></TD>
          	</c:otherwise>
          </c:choose>
          <!--<TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemArranged.jsp?p_type=${param.p_type}" target="list">进度计划</A></TD>-->
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/zhaobiao.jsp?p_type=${param.p_type}" target="list">招标情况</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/tourongzi.jsp?p_type=${param.p_type}" target="list">投融资</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/wenjian.jsp?p_type=${param.p_type}" target="list">相关文件</A></TD>			
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemPic.jsp?p_type=${param.p_type}" target="list">项目图片</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemMonthly.jsp?p_type=${param.p_type}" target="list">月报</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemQuarterly.jsp?p_type=${param.p_type}" target="list">季报</A></TD>
          <!--
          <TD width="6%" align=center><A 
            href="shigong.htm" 
            target=view>施工情况</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemDeclare.jsp?p_type=${param.p_type}" 
             target="list">项目申报</A></TD>-->
          <TD width="6%" align=center><A 
             href="${pageContext.request.contextPath}/demo/itemCharge.jsp?p_type=${param.p_type}" 
             target="list">收费情况</A></TD>
          <!--
	<td width="9%" align="center"><a href="/cjc/admin/itemAuditing.do?method=search&item=86&itemType=1" target="view">计划上报/审批</a></td>

          <TD width="7%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemSumup.jsp?p_type=${param.p_type}" 
             target="list">项目年度报告</A></TD>
-->			 
		</TR>
		</TBODY>
</TABLE>
