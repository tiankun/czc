<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%@ page import="java.util.Collection" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%
Collection  list=DataBaseControl.getInstance().getOutResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.parent=? and (t.ZHU_XIAO<>'ÊÇ' or  t.ZHU_XIAO is null) order by id", new Object[]{request.getParameter("id")});
%>
<c:set var="list" value="<%=list%>"/>
[<c:forEach items="${list}" var="dizhi" varStatus="s"><c:if test="${s.index!=0}">,</c:if>{id:${dizhi.id},pId:${dizhi.parent},name:"${dizhi.name}",quan_ming:"${dizhi.quan_ming}",isParent:true}</c:forEach>]