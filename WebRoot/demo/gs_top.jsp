<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<TABLE border=1 borderColor=#ffffff width="100%" background="${pageContext.request.contextPath}/images/top-bg.gif" align=center>
        <TBODY>
        <TR>
          <TD height=22 width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/report.jsp?p_type=${param.p_type}" target="list">��Ŀ����</A></TD>
          <c:choose>
          	<c:when test="${param.p_type==1}">
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/lj_jianshe.jsp?p_type=${param.p_type}" target="list">��Ŀ�������</A></TD>
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/lj_sheji.jsp?p_type=${param.p_type}" target="list">��Ŀ������</A></TD>
          	</c:when>
          	<c:when test="${param.p_type==2}">
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/ws_jianshe.jsp?p_type=${param.p_type}" target="list">��Ŀ�������</A></TD>
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/ws_sheji.jsp?p_type=${param.p_type}" target="list">��Ŀ������</A></TD>
          	</c:when>
          	<c:otherwise>
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/gs_jianshe.jsp?p_type=${param.p_type}" target="list">��Ŀ�������</A></TD>
	          <TD width="7%" align=center><A 
	            href="${pageContext.request.contextPath}/demo/gs_sheji.jsp?p_type=${param.p_type}" target="list">��Ŀ������</A></TD>
          	</c:otherwise>
          </c:choose>
          <!--<TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemArranged.jsp?p_type=${param.p_type}" target="list">���ȼƻ�</A></TD>-->
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/zhaobiao.jsp?p_type=${param.p_type}" target="list">�б����</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/tourongzi.jsp?p_type=${param.p_type}" target="list">Ͷ����</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/wenjian.jsp?p_type=${param.p_type}" target="list">����ļ�</A></TD>			
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemPic.jsp?p_type=${param.p_type}" target="list">��ĿͼƬ</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemMonthly.jsp?p_type=${param.p_type}" target="list">�±�</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemQuarterly.jsp?p_type=${param.p_type}" target="list">����</A></TD>
          <!--
          <TD width="6%" align=center><A 
            href="shigong.htm" 
            target=view>ʩ�����</A></TD>
          <TD width="6%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemDeclare.jsp?p_type=${param.p_type}" 
             target="list">��Ŀ�걨</A></TD>-->
          <TD width="6%" align=center><A 
             href="${pageContext.request.contextPath}/demo/itemCharge.jsp?p_type=${param.p_type}" 
             target="list">�շ����</A></TD>
          <!--
	<td width="9%" align="center"><a href="/cjc/admin/itemAuditing.do?method=search&item=86&itemType=1" target="view">�ƻ��ϱ�/����</a></td>

          <TD width="7%" align=center><A 
            href="${pageContext.request.contextPath}/demo/itemSumup.jsp?p_type=${param.p_type}" 
             target="list">��Ŀ��ȱ���</A></TD>
-->			 
		</TR>
		</TBODY>
</TABLE>
