<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
		document.form1.submit();
}
}	
</script>
</head>

<body>
<%@ include file="gs_top.jsp" %>

<FORM method=post name=form1 action="#"><INPUT 
name=id value=86 type=hidden> <INPUT name=year value=2010 type=hidden> <INPUT 
name=type value=��ˮ��+���� type=hidden> <INPUT name=city value=9 type=hidden> <INPUT 
name=county value=84 type=hidden> <INPUT name=attribute type=hidden> <INPUT 
name=state value=�豸��װ�׶� type=hidden> 
<TABLE class=myInput border=1 width="100%">
  <TBODY>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>��Ŀ�������</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��Ŀ����:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=name name=name value=��������ˮ���������׹������� msg="����" 
      dataType="Require"></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>����ص�:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=address name=address value=" ���������س�"></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��Ŀ���:</strong></TD>
    <TD colSpan=3><SELECT id=leibie name=leibie> <OPTION selected 
        value=2010��9��30��ǰӦ����Ͷ����Ŀ>2010��9��30��ǰӦ����Ͷ����Ŀ��</OPTION> <OPTION 
        value=2010��12��31��ǰӦ����Ͷ����Ŀ>2010��12��31��ǰӦ����Ͷ����Ŀ</OPTION> <OPTION 
        value=2010���迪����Ŀ>2010���迪����Ŀ</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="20%" align="center" class="myInputTitle"><strong>���������ල��λ:</strong></TD>
    <TD width="30%"><INPUT type="text" id=quality name=quality value=�������ʼ�վ></TD>
    <TD width="20%" align="center" class="myInputTitle"><strong>��������:</strong></TD>
    <TD width="30%"><SELECT id=xingzhi name=xingzhi> <OPTION selected 
        value=�½�>�½�</OPTION> <OPTION value=�Ľ�>�Ľ�</OPTION> <OPTION 
        value=����>����</OPTION></SELECT></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ˮ��������Ӫģʽ:</strong></TD>
    <TD><SELECT id=wsMoshi name=wsMoshi> <OPTION selected 
        value=BOT>BOT</OPTION> <OPTION value=BT>BT</OPTION> <OPTION 
        value=TOT>TOT</OPTION> <OPTION value=�й�>�й�</OPTION> <OPTION 
        value=����>����</OPTION></SELECT></TD>
    <TD align="center" class="myInputTitle"><strong>����������Ӫģʽ:</strong></TD>
    <TD><SELECT id=gdMoshi name=gdMoshi> <OPTION selected 
        value=BOT>BOT</OPTION> <OPTION value=BT>BT</OPTION> <OPTION 
        value=TOT>TOT</OPTION> <OPTION value=�й�>�й�</OPTION> <OPTION 
        value=����>����</OPTION></SELECT></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>��Ŀ�ʽ���ƻ��������</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��Ŀ�ʽ���ƻ���<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT id=invest name=invest value=2292.93></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>������ˮ���ƻ�Ͷ�ʣ�<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=wscTouzi name=wscTouzi value=723.19></TD>
    <TD align="center" class="myInputTitle"><strong>���׹����ƻ�Ͷ�ʣ�<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=gwTouzi name=gwTouzi value=1569.74></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4><strong>���У�</strong></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>���Ҳ�����<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=gujia name=gujia value=1600.0></TD>
    <TD align="center" class="myInputTitle"><strong>ʡ��������<SPAN class=STYLE1>��Ԫ</SPAN>��:</strong></TD>
    <TD><INPUT type="text" id=sheng name=sheng value=0.0></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>�ط�������<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=difang name=difang value=692.93></TD>
    <TD align="center" class="myInputTitle"><strong>������<SPAN class=STYLE1>��Ԫ</SPAN>��:</strong></TD>
    <TD><INPUT type="text" id=qiye name=qiye value=0.0></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>��Ŀ�������о��׶�</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>���б��Ƶ�λ</strong></TD>
    <TD><INPUT type="text" id=kyUnit name=kyUnit value=���н����о�Ժ></TD>
    <TD align="center" class="myInputTitle"><strong>����������λ���ĺ�</strong></TD>
    <TD><INPUT type="text" id=kyNum name=kyNum value=����ʡ��չ�͸ĸ�ίԱ��[2010]1773��></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ˮ���������ģ��<SPAN class=STYLE1>��������/��</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=kyCguimo name=kyCguimo value=0.3></TD>
    <TD align="center" class="myInputTitle">
      <P><strong>���׹��������ģ(<SPAN class=STYLE1>����</SPAN>)</strong></P></TD>
    <TD><INPUT type="text" id=kyGuan name=kyGuan value=8.27></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>����ˮ�������ģ��<SPAN class=STYLE1>��������/��</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=kyZsguimo name=kyZsguimo value=0.0></TD>
    <TD align="center" class="myInputTitle"><strong>����ˮ���׹��������ģ��<SPAN class=STYLE1>����</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=kyZsguan name=kyZsguan value=0.0></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��Ŀ��Ͷ�ʣ�<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=kyTou name=kyTou value=1825.0></TD>
    <TD align="center" class="myInputTitle"><strong>��ˮ������</strong></TD>
    <TD><INPUT type="text" id=kyGongyi name=kyGongyi value=ICEAS����></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>������������</strong></TD>
    <TD colSpan=3><INPUT type="text" id=kyOther name=kyOther></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>��Ŀ������ƽ׶�</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>������Ƶ�λ</strong></TD>
    <TD><INPUT type="text" id=csUnit name=csUnit value=����ʡ���Ժ></TD>
    <TD align="center" class="myInputTitle"><strong>���������ĺ�</strong></TD>
    <TD><INPUT type="text" id=csNum name=csNum value=�ƽ���[2010]652��></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ˮ���������ģ��<SPAN class=STYLE1>��������/��</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=csCguimo name=csCguimo value=0.3></TD>
    <TD align="center" class="myInputTitle">
      <P><strong>���׹��������ģ(<SPAN class=STYLE1>����</SPAN>)</strong></P></TD>
    <TD><INPUT type="text" id=csGuan name=csGuan value=8.27></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>����ˮ�������ģ��<SPAN class=STYLE1>��������/��</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=csZsguimo name=csZsguimo value=0.0></TD>
    <TD align="center" class="myInputTitle"><strong>����ˮ���׹��������ģ��<SPAN class=STYLE1>����</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=csZsguan name=csZsguan value=0.0></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��Ŀ��Ͷ�ʣ�<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=csTou name=csTou value=1918.54></TD>
    <TD align="center" class="myInputTitle"><strong>��ˮ������</strong></TD>
    <TD><INPUT type="text" id=csGongyi name=csGongyi value=ICEAS����></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>������������</strong></TD>
    <TD colSpan=3><INPUT type="text" id=csOther name=csOther></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>��Ŀʩ��ͼ��ƽ׶�</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>ʩ��ͼ���Ƶ�λ</strong></TD>
    <TD><INPUT type="text" id=sgtBianzhi name=sgtBianzhi value=����ʡ���Ժ></TD>
    <TD align="center" class="myInputTitle"><strong>ʩ��ͼ��ͼ��λ</strong></TD>
    <TD><INPUT type="text" id=sgtShenhe name=sgtShenhe value=����ʡ��̩���蹤��ʩ��ͼ����ļ��������></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>��Ŀʩ���׶�</STRONG></TD></TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>��Ŀʩ����λ</strong></td>
    <td><input type="text" id="sgUnit" name="sgUnit" value="���ϴ��������������޹�˾" /></td>
    <td align="center" class="myInputTitle"><p><strong>���̼���λ</strong></p></td>
    <td><input type="text" id="sgJianli" name="sgJianli" value="������������������޹�˾" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>�ƻ�����ʱ��</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="sgBegin" class="Wdate" onclick="WdatePicker()" name="sgBegin" 
      value="2010-12-28" />    </td>
    <td align="center" class="myInputTitle"><strong>�ƻ�����ʱ��</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="sgEnd"  class="Wdate" onclick="WdatePicker()" name="sgEnd" 
      value="2011-08-01" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>ʵ�ʿ���ʱ��</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="begin"  class="Wdate" onclick="WdatePicker()" name="begin" 
      value="2011-01-28" />    </td>
    <td align="center" class="myInputTitle"><strong>ʵ�ʿ���ʱ��</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="end"  class="Wdate" onclick="WdatePicker()" name="end" />    </td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>ʩ�����֤�ĺ�</strong></td>
    <td><input type="text" id="shiGong" name="shiGong" value="������201107" /></td>
    <td align="center" class="myInputTitle"><strong>��Ŀ�������ձ����ĺ�</strong></td>
    <td><input type="text" id="junGong" name="junGong" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>��Ŀ����Ͷ�ʣ���Ԫ��</strong></td>
    <td><input type="text" id="sgTou" name="sgTou" value="0.0" /></td>
    <td colspan="2" align="center" class="myInputTitle">&nbsp;</td>
    </TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>ҵ��������</STRONG></TD>
  </TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��Ŀҵ����λ</strong></TD>
    <TD colSpan=3><INPUT type="text" id=owner name=owner value=" ��������ˮ����"></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>����������</strong></TD>
    <TD><INPUT type="text" id=faren name=faren value=������></TD>
    <TD align="center" class="myInputTitle"><strong>��λ����</strong></TD>
    <TD><SELECT id=yzXingzhi name=yzXingzhi> <OPTION selected 
        value=����>����</OPTION> <OPTION value=��Ӫ>��Ӫ</OPTION> <OPTION 
        value=����>����</OPTION> <OPTION value=����>����</OPTION> <OPTION 
        value=����>����</OPTION> <OPTION value=˽Ӫ>˽Ӫ</OPTION> <OPTION 
        value=����>����</OPTION> <OPTION value=����>����</OPTION> <OPTION 
        value=����>����</OPTION></SELECT> </TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��һ������</strong></TD>
    <TD><INPUT type="text" id=yzYiper name=yzYiper value=����></TD>
    <TD align="center" class="myInputTitle"><strong>ְ��</strong></TD>
    <TD><INPUT type="text" id=yzYizhiwu name=yzYizhiwu value=������></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ϵ�绰</strong></TD>
    <TD><INPUT type="text" id=yzYidianhua name=yzYidianhua value=08798342293></TD>
    <TD align="center" class="myInputTitle"><strong>�ֻ�</strong></TD>
    <TD><INPUT type="text" id=yzYishouji name=yzYishouji></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>���帺����</strong></TD>
    <TD><INPUT type="text" id=yzJtper name=yzJtper></TD>
    <TD align="center" class="myInputTitle"><strong>ְ��</strong></TD>
    <TD><INPUT type="text" id=yzJtzhiwu name=yzJtzhiwu></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ϵ�绰</strong></TD>
    <TD><INPUT type="text" id=yzJtdianhua name=yzJtdianhua></TD>
    <TD align="center" class="myInputTitle"><strong>�ֻ�</strong></TD>
    <TD><INPUT type="text" id=yzJtshouji name=yzJtshouji></TD></TR>
<!--	
  <TR>
    <TD align="center" class="myInputTitle"><strong>�磨�򣩽������ܲ���</strong></TD>
    <TD colSpan=3><INPUT type="text" id=cityDirector name=cityDirector></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��һ������</strong></TD>
    <TD><INPUT type="text" id=dzYiper name=dzYiper></TD>
    <TD align="center" class="myInputTitle"><strong>ְ��</strong></TD>
    <TD><INPUT type="text" id=dzYizhiwu name=dzYizhiwu></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ϵ�绰</strong></TD>
    <TD><INPUT type="text" id=dzYidianhua name=dzYidianhua></TD>
    <TD align="center" class="myInputTitle"><strong>�ֻ�</strong></TD>
    <TD><INPUT type="text" id=dzYishouji name=dzYishouji></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>���帺����</strong></TD>
    <TD><INPUT type="text" id=dzJtper name=dzJtper></TD>
    <TD align="center" class="myInputTitle"><strong>ְ��</strong></TD>
    <TD><INPUT type="text" id=dzJtzhiwu name=dzJtzhiwu></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ϵ�绰</strong></TD>
    <TD><INPUT type="text" id=dzJtdianhua name=dzJtdianhua></TD>
    <TD align="center" class="myInputTitle"><strong>�ֻ�</strong></TD>
    <TD><INPUT type="text" id=dzJtshouji name=dzJtshouji></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>�أ��С������������ܲ���</strong></TD>
    <TD colSpan=3><INPUT type="text" id=countyDirector name=countyDirector 
  value=�����ؽ����></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��һ������</strong></TD>
    <TD><INPUT type="text" id=xsYiper name=xsYiper value=���Ʒ�></TD>
    <TD align="center" class="myInputTitle"><strong>ְ��</strong></TD>
    <TD><INPUT type="text" id=xsYizhiwu name=xsYizhiwu value=�ֳ�></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ϵ�绰</strong></TD>
    <TD><INPUT type="text" id=xsYidianhua name=xsYidianhua value=08798342224></TD>
    <TD align="center" class="myInputTitle"><strong>�ֻ�</strong></TD>
    <TD><INPUT type="text" id=xsYishouji name=xsYishouji></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>���帺����</strong></TD>
    <TD><INPUT type="text" id=xsJtper name=xsJtper value=����></TD>
    <TD align="center" class="myInputTitle"><strong>ְ��</strong></TD>
    <TD><INPUT type="text" id=xsJtzhiwu name=xsJtzhiwu value=�ɳ�></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>��ϵ�绰</strong></TD>
    <TD><INPUT type="text" id=xsJtdianhua name=xsJtdianhua value=08798342293></TD>
    <TD align="center" class="myInputTitle"><strong>�ֻ�</strong></TD>
  <TD><INPUT type="text" id=xsJtshouji name=xsJtshouji></TD></TR>
-->  
  </TBODY></TABLE>
<BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   ��   ��   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   ��   ��   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--></TD></TR></TBODY></TABLE></FORM>
  </body>
</html>
