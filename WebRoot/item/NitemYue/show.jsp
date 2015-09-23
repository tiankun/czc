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
	if(confirm("ȷ����ˣ���˺���������޸ģ���ȷ������������ȷ�ϣ�")){
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
			<strong>�±�������Ϣ</strong>
		</td>
	</tr>
	    <tr>
			<td width="15%" class="myInputTitle">��Ŀ����</td>	
			<td width="35%">${nitem_yue.name}</td>
			<td width="15%" class="myInputTitle">��Ŀ���</td>	
			<td width="35%">${nitem_yue.num}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">��Ŀ�������</td>	
			<td width="35%">${nitem_yue.jindu}</td>
			<td width="15%" class="myInputTitle">�±�ʱ��</td>	
			<td width="35%">${nitem_yue.year}-${nitem_yue.month}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">ͼƬ</td>	
			<td colspan="3">
			<table width="100%" border="0">
			<tr><td>
			<c:forEach items="${pics}" var="pic" varStatus="i">
			<div style="float:left;width:480px" id="div${2000+i.index}"><table width="100%" border="1"><tr><td width="400px">
			<input type="hidden" name="pic" value="${pic.path}"/><a href="${pageContext.request.contextPath}/upFile/file/${pro_area}/${pic.path}" target="_blank">
			<img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${pro_area}/${pic.path}" border=0/></a></td><td rowspan="2" align="center">
			</td></tr>
			<tr><td>���ͣ�<select name="pic_type" style="width:75px"><option value="ȫ����" <c:if test="${pic.pic_type=='ȫ����'}">selected</c:if>>ȫ����</option><option value="�ֲ���д" <c:if test="${pic.pic_type=='�ֲ���д'}">selected</c:if>>�ֲ���д</option></select>˵����<input type="text" name="remark" style="width:230px" value="${pic.remark}"/></td></tr></table></div>
			</c:forEach>
			</td></tr> 
			</table>		
			</td>
		</tr>
	    <tr>
			<td width="15%" class="myInputTitle">�����</td>	
			<td width="35%">${nitem_yue.create_date}</td>
			<td width="15%" class="myInputTitle">���¶�ʵ�ʵ�λ�ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
			<td width="35%">${nitem_yue.dao_zijin}</td>
	    </tr>
	    <tr>
	        <td colspan="4" class="myInputTitle"><strong>���У�</strong></td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�����ʽ�����<span class="STYLE1">��Ԫ</span>��</td>	
			<td width="35%">${nitem_yue.zhong_zijin}</td>
			<td width="15%" class="myInputTitle">��λʱ��</td>	
			<td width="35%">${nitem_yue.zhong_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">ʡ���ʽ�����<span class="STYLE1">��Ԫ</span>��</td>	
			<td width="35%">${nitem_yue.sheng_zijin}</td>
			<td width="15%" class="myInputTitle">��λʱ��</td>	
			<td width="35%">${nitem_yue.sheng_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�����ʽ�����<span class="STYLE1">��Ԫ</span>��</td>	
			<td width="35%">${nitem_yue.shi_zijin}</td>
			<td width="15%" class="myInputTitle">��λʱ��</td>	
			<td width="35%">${nitem_yue.shi_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�ؼ��ʽ�����<span class="STYLE1">��Ԫ</span>��</td>	
			<td width="35%">${nitem_yue.xian_zijin}</td>
			<td width="15%" class="myInputTitle">��λʱ��</td>	
			<td width="35%">${nitem_yue.xian_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�Գ��ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
			<td width="35%">${nitem_yue.zi_zijin}</td>
			<td width="15%" class="myInputTitle">��λʱ��</td>	
			<td width="35%">${nitem_yue.zi_date}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">���¶ȹ������ӳ��ȣ�<span class="STYLE1">����</span>��</td>	
			<td width="35%" colspan="3">${nitem_yue.zeng_guan}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">������Ҫ����</td>	
			<td width="35%" colspan="3">${nitem_yue.wenti}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�������</td>	
			<td width="35%" colspan="3">${nitem_yue.yijian}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">���½���ƻ�</td>	
			<td width="35%" colspan="3">${nitem_yue.plan}</td>
	    </tr>
	    <c:if test="${operate=='show'}">
	    <tr>
			<td width="20%" class="myInputTitle">���״̬</td>	
			<td width="30%">
			  <c:choose>
			      <c:when test="${nitem_yue.statu==1}">
			          <img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">�������
			      </c:when>
			      <c:when test="${nitem_yue.statu==2}">
			          <img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">�������
			      </c:when>
			      <c:otherwise>
			          δ���
			      </c:otherwise>
			  </c:choose>
			</td>
			<td width="20%" class="myInputTitle">���ʱ��</td>	
			<td width="30%">${nitem_yue.pz_date}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">������</td>	
			<td width="30%" colspan="3">${nitem_yue.pz_yijian}</td>
	    </tr>
	    </c:if>
	    <c:if test="${operate=='check'}">
	      <tr>
			<td width="20%" class="myInputTitle">���״̬</td>	
			<td width="30%">
			    <input type="radio" name="statu" id="statu" value="2"  dataType="Group"/><img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom"  width="20px">δ�������&nbsp;&nbsp;&nbsp;
			   <input type="radio" name="statu" id="statu" value="1"/><img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">�������
			</td>
			<td width="20%"></td>	
			<td width="30%"></td>
	      </tr>
	      <tr>
			<td width="20%" class="myInputTitle">������</td>	
			<td width="30%" colspan="3">
                  <textarea name="pz_yijian" rows="5" id="pz_yijian" style="width:90%" datatype="Require"></textarea>
            </td>
	      </tr>
	    </c:if>
	</table>
	<center>	
	<c:if test="${operate=='check'}">
	   <input id="button" name="button" type="button" value=" �� �� �� �� " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;</c:if>
	   <input type="button" value="�����б�" onclick="window.location='${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=${type}&item_id=${item_id}'"/>
	</center>
</form>
</body>
</html>