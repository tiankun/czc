<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>    
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >
function mySearch(city,year){
document.form1.action='${pageContext.request.contextPath}/admin/itemWeeklyTongji.do?type=${type}&year='+year+'&city='+city;
document.form1.submit();
}
function mylink(){
   parent.checkShow('${pageContext.request.contextPath}/item/Nitem_water!list.do',4);
}
</script>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE10 {color: #3333FF}
-->
</style>
</head>
<body><!--<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==3}">  </c:if>-->
<A href="${pageContext.request.contextPath}/item/Nitem_water!createAdmin.do"><STRONG>====添加项目====</STRONG></A>
<A href="#" onclick="mylink();"><STRONG>====进入供水项目列表====</STRONG></A>
<table width="100%" border="1" cellspacing="0" cellpadding="0">
  <tr class=tHead><td colspan="58" align="center"><strong>供水项目情况</strong></td>
  </tr> 
  <tr height="50">
     <td width="8%" class="myInputTitle">在建数</td>
     <td width="6%" align="center">${itemTongji2.shuliang}</td>
     <td width="8%" class="myInputTitle">设计规模-近期（<span class="STYLE10">立方米/日</span>）</td>
     <td width="7%" align="center">${itemTongji2.clgm_jinqi}</td>
     <td width="8%" class="myInputTitle">设计规模-远期（<span class="STYLE10">立方米/日</span>）</td>
     <td width="6%" align="center">${itemTongji2.clgm_yuanqi}</td>
     <td width="6%" class="myInputTitle">计划投资<br/>（<span class="STYLE10">万元</span>）</td>
     <td width="7%" align="center">${itemTongji2.touzi}</td>
     <td width="7%" class="myInputTitle">配套管网长度（<span class="STYLE10">公里</span>）</td>
     <td width="6%" align="center">${itemTongji2.guan_zong}</td>
     <td width="8%" class="myInputTitle">服务人口-近期（<span class="STYLE10">万人</span>）</td>
     <td width="7%" align="center">${itemTongji2.fwrk_jinqi}</td>
     <td width="8%" class="myInputTitle">服务人口-远期（<span class="STYLE10">万人</span>）</td>
     <td width="7%" align="center">${itemTongji2.fwrk_yuanqi}</td>
  </tr>
  <tr height="50">
     <td class="myInputTitle">运营数</td>
     <td align="center">${itemTongji1.shuliang}</td>
     <td class="myInputTitle">设计规模-近期（<span class="STYLE10">立方米/日</span>）</td>
     <td align="center">${itemTongji1.clgm_jinqi}</td>
     <td class="myInputTitle">设计规模-远期（<span class="STYLE10">立方米/日</span>）</td>
     <td align="center">${itemTongji1.clgm_yuanqi}</td>
     <td class="myInputTitle">计划投资<br/>（<span class="STYLE10">万元</span>）</td>
     <td align="center">${itemTongji1.touzi}</td>
     <td class="myInputTitle">配套管网长度（<span class="STYLE10">公里</span>）</td>
     <td align="center">${itemTongji1.guan_zong}</td>
     <td class="myInputTitle">服务人口-近期（<span class="STYLE10">万人</span>）</td>
     <td align="center">${itemTongji1.fwrk_jinqi}</td>
     <td class="myInputTitle">服务人口-远期（<span class="STYLE10">万人</span>）</td>
     <td align="center">${itemTongji1.fwrk_yuanqi}</td>
  </tr>
  <tr height="50">
     <td class="myInputTitle">本月应报数</td>
     <td align="center">${itemTongji2.shuliang+itemTongji1.shuliang}</td>
     <td class="myInputTitle">已报月报数</td>
     <td align="center">${yueTongji.zongshu}</td>
     <td class="myInputTitle">项目上报率</td>
     <td align="center"></td>
     <td class="myInputTitle">投资上报率</td>
     <td align="center"></td>
     <td class="myInputTitle"></td>
     <td align="center"></td>
     <td class="myInputTitle"></td>
     <td align="center"></td>
     <td class="myInputTitle"></td>
     <td align="center"></td>
  </tr>
  <tr height="50">
     <td class="myInputTitle">累计项目总数</td>
     <td align="center">${itemTongji2.shuliang+itemTongji1.shuliang}</td>
     <td class="myInputTitle">累计设计规模-近期（<span class="STYLE10">立方米/日</span>）</td>
     <td align="center">${itemTongji2.clgm_jinqi+itemTongji1.clgm_jinqi}</td>
     <td class="myInputTitle">累计设计规模-远期（<span class="STYLE10">立方米/日</span>）</td>
     <td align="center">${itemTongji2.clgm_yuanqi+itemTongji1.clgm_yuanqi}</td>
     <td class="myInputTitle">累计计划投资（<span class="STYLE10">万元</span>）</td>
     <td align="center">${itemTongji2.touzi+itemTongji1.touzi}</td>
     <td class="myInputTitle">累计配套管网长度（<span class="STYLE10">公里</span>）</td>
     <td align="center">${itemTongji2.guan_zong+itemTongji1.guan_zong}</td>
     <td class="myInputTitle">累计服务人口-近期（<span class="STYLE10">万人</span>）</td>
     <td align="center">${itemTongji2.fwrk_jinqi+itemTongji1.fwrk_jinqi}</td>
     <td class="myInputTitle">累计服务人口-远期（<span class="STYLE10">万人</span>）</td>
     <td align="center">${itemTongji2.fwrk_yuanqi+itemTongji1.fwrk_yuanqi}</td>
  </tr>
</table>
</body>
</html>