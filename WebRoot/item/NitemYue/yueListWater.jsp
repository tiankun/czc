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
<A href="${pageContext.request.contextPath}/item/Nitem_water!createAdmin.do"><STRONG>====�����Ŀ====</STRONG></A>
<A href="#" onclick="mylink();"><STRONG>====���빩ˮ��Ŀ�б�====</STRONG></A>
<table width="100%" border="1" cellspacing="0" cellpadding="0">
  <tr class=tHead><td colspan="58" align="center"><strong>��ˮ��Ŀ���</strong></td>
  </tr> 
  <tr height="50">
     <td width="8%" class="myInputTitle">�ڽ���</td>
     <td width="6%" align="center">${itemTongji2.shuliang}</td>
     <td width="8%" class="myInputTitle">��ƹ�ģ-���ڣ�<span class="STYLE10">������/��</span>��</td>
     <td width="7%" align="center">${itemTongji2.clgm_jinqi}</td>
     <td width="8%" class="myInputTitle">��ƹ�ģ-Զ�ڣ�<span class="STYLE10">������/��</span>��</td>
     <td width="6%" align="center">${itemTongji2.clgm_yuanqi}</td>
     <td width="6%" class="myInputTitle">�ƻ�Ͷ��<br/>��<span class="STYLE10">��Ԫ</span>��</td>
     <td width="7%" align="center">${itemTongji2.touzi}</td>
     <td width="7%" class="myInputTitle">���׹������ȣ�<span class="STYLE10">����</span>��</td>
     <td width="6%" align="center">${itemTongji2.guan_zong}</td>
     <td width="8%" class="myInputTitle">�����˿�-���ڣ�<span class="STYLE10">����</span>��</td>
     <td width="7%" align="center">${itemTongji2.fwrk_jinqi}</td>
     <td width="8%" class="myInputTitle">�����˿�-Զ�ڣ�<span class="STYLE10">����</span>��</td>
     <td width="7%" align="center">${itemTongji2.fwrk_yuanqi}</td>
  </tr>
  <tr height="50">
     <td class="myInputTitle">��Ӫ��</td>
     <td align="center">${itemTongji1.shuliang}</td>
     <td class="myInputTitle">��ƹ�ģ-���ڣ�<span class="STYLE10">������/��</span>��</td>
     <td align="center">${itemTongji1.clgm_jinqi}</td>
     <td class="myInputTitle">��ƹ�ģ-Զ�ڣ�<span class="STYLE10">������/��</span>��</td>
     <td align="center">${itemTongji1.clgm_yuanqi}</td>
     <td class="myInputTitle">�ƻ�Ͷ��<br/>��<span class="STYLE10">��Ԫ</span>��</td>
     <td align="center">${itemTongji1.touzi}</td>
     <td class="myInputTitle">���׹������ȣ�<span class="STYLE10">����</span>��</td>
     <td align="center">${itemTongji1.guan_zong}</td>
     <td class="myInputTitle">�����˿�-���ڣ�<span class="STYLE10">����</span>��</td>
     <td align="center">${itemTongji1.fwrk_jinqi}</td>
     <td class="myInputTitle">�����˿�-Զ�ڣ�<span class="STYLE10">����</span>��</td>
     <td align="center">${itemTongji1.fwrk_yuanqi}</td>
  </tr>
  <tr height="50">
     <td class="myInputTitle">����Ӧ����</td>
     <td align="center">${itemTongji2.shuliang+itemTongji1.shuliang}</td>
     <td class="myInputTitle">�ѱ��±���</td>
     <td align="center">${yueTongji.zongshu}</td>
     <td class="myInputTitle">��Ŀ�ϱ���</td>
     <td align="center"></td>
     <td class="myInputTitle">Ͷ���ϱ���</td>
     <td align="center"></td>
     <td class="myInputTitle"></td>
     <td align="center"></td>
     <td class="myInputTitle"></td>
     <td align="center"></td>
     <td class="myInputTitle"></td>
     <td align="center"></td>
  </tr>
  <tr height="50">
     <td class="myInputTitle">�ۼ���Ŀ����</td>
     <td align="center">${itemTongji2.shuliang+itemTongji1.shuliang}</td>
     <td class="myInputTitle">�ۼ���ƹ�ģ-���ڣ�<span class="STYLE10">������/��</span>��</td>
     <td align="center">${itemTongji2.clgm_jinqi+itemTongji1.clgm_jinqi}</td>
     <td class="myInputTitle">�ۼ���ƹ�ģ-Զ�ڣ�<span class="STYLE10">������/��</span>��</td>
     <td align="center">${itemTongji2.clgm_yuanqi+itemTongji1.clgm_yuanqi}</td>
     <td class="myInputTitle">�ۼƼƻ�Ͷ�ʣ�<span class="STYLE10">��Ԫ</span>��</td>
     <td align="center">${itemTongji2.touzi+itemTongji1.touzi}</td>
     <td class="myInputTitle">�ۼ����׹������ȣ�<span class="STYLE10">����</span>��</td>
     <td align="center">${itemTongji2.guan_zong+itemTongji1.guan_zong}</td>
     <td class="myInputTitle">�ۼƷ����˿�-���ڣ�<span class="STYLE10">����</span>��</td>
     <td align="center">${itemTongji2.fwrk_jinqi+itemTongji1.fwrk_jinqi}</td>
     <td class="myInputTitle">�ۼƷ����˿�-Զ�ڣ�<span class="STYLE10">����</span>��</td>
     <td align="center">${itemTongji2.fwrk_yuanqi+itemTongji1.fwrk_yuanqi}</td>
  </tr>
</table>
</body>
</html>