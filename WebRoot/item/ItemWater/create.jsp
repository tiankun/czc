<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<META content="text/html; charset=gbk" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<SCRIPT language=javascript type=text/javascript>   
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>

<STYLE type=text/css>
.STYLE1 {
	COLOR: #ff0000
}
</STYLE>

<META name=GENERATOR content="MSHTML 9.00.8112.16476">
</HEAD>
<BODY>
<%@ include file="../top.jsp" %>
<FORM method="post" name="form1" action="${pageContext.request.contextPath}/item/Item_water!save.do" style="margin:0px">
<input type="hidden" name="id" id="id" value="${item}">
<TABLE class=myInput border=1 width="100%" align=center>
  <TBODY>
  <TR>
    <TD colSpan=4 class="myInputTitle"><STRONG>����ˮ���������</STRONG></TD>
  </TR>
  <TR>
    <TD class="myInputTitle "width="15%">����ˮ������滮��ģ<BR>
      ��<SPAN class=STYLE1>��������/��</SPAN>��</TD>
    <TD width="35%"><INPUT type="text" id="chang_gui" name="chang_gui" require="false" dataType="Double" value="${itemWater.chang_gui}"></TD>
    <TD class="myInputTitle" width="15%">���׹����ܳ�(<SPAN class=STYLE1>����</SPAN>)</TD>
    <TD width="35%"><INPUT type="text"  id="guan_gui" name="guan_gui" require="false" dataType="Double" value="${itemWater.guan_gui}"></TD></TR>
  <TR>
    <TD class="myInputTitle">���ʹ��ҩ��</TD>
    <TD><INPUT type="text"  id="yaiji" name="yaiji" value="${itemWater.yaiji}"></TD>
    <TD class="myInputTitle">���ʹ��������</TD>
    <TD><INPUT type="text"  id="xiaodu" name="xiaodu" value="${itemWater.xiaodu}"></TD></TR>	
    <tr>
      <td class="myInputTitle">��ˮ���������<span class="STYLE1">ƽ������</span>��</td>
      <td><input name="gs_qu" type="text" id="gs_qu" value="${itemWater.gs_qu}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="smidu()"/></td>
      <td colspan="2"></td>
    </tr>	
  <TR>
    <TD class="myInputTitle"><STRONG>�����������̣�������_��_��_����</STRONG></TD>
    <TD colspan="3"><input type="text" name="gongyi" id="gongyi" value="${itemWater.gongyi}"></TD>
    </TR>	
    <tr>
      <td class="myInputTitle">ˮԴһ����</td>
      <td><input name="yi_ming" type="text" id="yi_ming" value="${itemWater.yi_ming}" dataType="Require" msg="����" /></td>
      <td class="myInputTitle">ˮԴһ����</td>
      <td>
<select name="yi_lei" id="yi_lei" style="width:40%">	  
 <option value="�ر�ˮ" <c:if test="${itemWater.yi_lei=='�ر�ˮ'}">selected</c:if>>�ر�ˮ</option>    
 <option value="����ˮ" <c:if test="${itemWater.yi_lei=='����ˮ'}">selected</c:if>>����ˮ</option>      
</select><select name="yi_ji" id="yi_ji" style="width:40%">
 <option value="����" <c:if test="${itemWater.yi_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.yi_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.yi_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.yi_ji=='����'}">selected</c:if>>����</option>
 <option value="V��" <c:if test="${itemWater.yi_ji=='V��'}">selected</c:if>>V��</option>
 <option value="��V��" <c:if test="${itemWater.yi_ji=='��V��'}">selected</c:if>>��V��</option>	   
</select>	  
<input type="hidden" name="sid" value="${itemWater.guan_gui}" /></td>
    </tr>
	  
    <tr>
      <td class="myInputTitle">ˮԴ������</td>
      <td ><input name="er_ming" type="text" id="er_ming" value="${itemWater.er_ming}"  /></td>
      <td class="myInputTitle">ˮԴ������</td>
      <td>
<select name="er_lei" id="er_lei" style="width:40%">  
 <option value="�ر�ˮ" <c:if test="${itemWater.er_lei=='�ر�ˮ'}">selected</c:if>>�ر�ˮ</option>      
 <option value="����ˮ" <c:if test="${itemWater.er_lei=='����ˮ'}">selected</c:if>>����ˮ</option>     
</select><select name="er_ji" id="er_ji" style="width:40%">
 <option value="����" <c:if test="${itemWater.er_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.er_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.er_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.er_ji=='����'}">selected</c:if>>����</option>
 <option value="V��" <c:if test="${itemWater.er_ji=='V��'}">selected</c:if>>V��</option>
 <option value="��V��" <c:if test="${itemWater.er_ji=='��V��'}">selected</c:if>>��V��</option>	   
</select>	  
	  <input type="hidden" name="sid" value="" /></td>
    </tr>
	  
    <tr>
      <td class="myInputTitle">ˮԴ������</td>
      <td><input name="san_ming" type="text" id="san_ming" value="${itemWater.san_ming}"  /></td>
      <td class="myInputTitle">ˮԴ������</td>
      <td><select name="san_lei" id="san_lei" style="width:40%">	  
 <option value="�ر�ˮ" <c:if test="${itemWater.san_lei=='�ر�ˮ'}">selected</c:if>>�ر�ˮ</option>     
 <option value="����ˮ" <c:if test="${itemWater.san_lei=='����ˮ'}">selected</c:if>>����ˮ</option>     
</select><select name="san_ji" id="san_ji" style="width:40%">
 <option value="����" <c:if test="${itemWater.san_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.san_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.san_ji=='����'}">selected</c:if>>����</option>
 <option value="����" <c:if test="${itemWater.san_ji=='����'}">selected</c:if>>����</option>
 <option value="V��" <c:if test="${itemWater.san_ji=='V��'}">selected</c:if>>V��</option>
 <option value="��V��" <c:if test="${itemWater.san_ji=='��V��'}">selected</c:if>>��V��</option>	   
</select>	  
	  <input type="hidden" name="sid" value="" /></td>
    </tr>	 	
   <tr>
      <td colspan="4" align="center" class="myInputTitle"><strong>====ˮԴ��ˮ��75����������ˮ�ܵ����====</strong></td>
    </tr>
    <tr>
      
      <td class="myInputTitle">��ī�����ܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ss_qiu" type="text" id="ss_qiu" value="${itemWater.ss_qiu}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      <td class="myInputTitle">�ֹܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ss_gang" type="text" id="ss_gang" value="${itemWater.ss_gang}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>
    
    <tr>
      <td class="myInputTitle">�����ܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ss_zhu" type="text" id="ss_zhu" value="${itemWater.ss_zhu}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      <td class="myInputTitle">ԤӦ���ֽ�������ܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ss_hun" type="text" id="ss_hun" value="${itemWater.ss_hun}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">���Ϲܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ss_suliao" type="text" id="ss_suliao" value="${itemWater.ss_suliao}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      
      <td class="myInputTitle">�����ܲģ�<span class="STYLE1">����</span>��</td>
      <td><input name="ss_qita" type="text" id="ss_qita" value="${itemWater.ss_qita}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>   
    <tr>
      
      <td class="myInputTitle">��ˮ�ܵ����Ⱥϼƣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ss_zong" type="text" id="ss_zong" value="${itemWater.ss_zong}" require="false" datatype="Double" msg="����" /></td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td colspan="4" align="center" class="myInputTitle"><strong>====ˮ�����û�75�������Ϲ���ˮ�ܵ����====</strong></td>
    </tr>
    <tr>
      <td class="myInputTitle">��ī�����ܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ps_qiu" type="text" id="ps_qiu" value="${itemWater.ps_qiu}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      <td class="myInputTitle">�ֹܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ps_gang" type="text" id="ps_gang" value="${itemWater.ps_gang}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>
    
    <tr>
      <td class="myInputTitle">�����ܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ps_zhu" type="text" id="ps_zhu" value="${itemWater.ps_zhu}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      <td class="myInputTitle">ԤӦ���ֽ�������ܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ps_hun" type="text" id="ps_hun" value="${itemWater.ps_hun}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">���Ϲܣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ps_suliao" type="text" id="ps_suliao" value="${itemWater.ps_suliao}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      
      <td class="myInputTitle">�����ܲģ�<span class="STYLE1">����</span>��</td>
      <td><input name="ps_qita" type="text" id="ps_qita" value="${itemWater.ps_qita}" require="false" datatype="Double" msg="����" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>   
    <tr>
      <td class="myInputTitle">����ˮ�ܵ����Ⱥϼƣ�<span class="STYLE1">����</span>��</td>
      <td><input name="ps_zong" type="text" id="ps_zong" value="${itemWater.ps_zong}" require="false" datatype="Double" msg="����" /></td>
      <td colspan="2"></td>
    </tr>
  <TR>
    <TD class="myInputTitle">��ע</TD>
    <TD height=50 colSpan=3><TEXTAREA id="remark" rows="3" name="remark" style="width:88%">${itemWater.remark}</TEXTAREA></TD></TR>
  <TR>
    <TD height=30 colSpan=4 align=center><INPUT onClick="return mySubmit();" name=button value="   ��   ��   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   ��   ��   " type=reset> </TD></TR></TABLE></FORM>
<c:if test="${info=='success'}">
  <script language="JavaScript">
     alert("�����ɹ���");
  </script>
</c:if>
</BODY>
</HTML>
