<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML><HEAD>
<META content="text/html; charset=GBK" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>

<SCRIPT language=JavaScript>
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

</HEAD>
<BODY>
<%@ include file="gs_top.jsp" %>
<FORM method=post name=form1 action=#>
<TABLE class=myInput border=1 width="100%">
  <TBODY>
  <TR>
    <TD colSpan=4 align=center class="tHead">��Ŀ�������</TD>
  </TR>
  <TR>
    <TD width="15%" class="myInputTitle"><strong>��Ŀ����:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=name name=name value=�ٶ��������������������̣����������������շ��糧�� 
      msg="����" dataType="Require"></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>����ص�:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=address name=address 
  value=" �������ÿ���������������������"></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>���������ල��λ:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=quality name=quality value=�Ĵ��������̽�������������ι�˾></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>��Ŀ���:</strong></TD>
    <TD colSpan=3><SELECT id=leibie name=leibie> <OPTION 
        value=2010��9��30��ǰӦ����Ͷ����Ŀ>2010��9��30��ǰӦ����Ͷ����Ŀ��</OPTION> <OPTION selected 
        value=2010��12��31��ǰӦ����Ͷ����Ŀ>2010��12��31��ǰӦ����Ͷ����Ŀ</OPTION> <OPTION 
        value=2010���迪����Ŀ>2010���迪����Ŀ</OPTION></SELECT></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>������Ӫģʽ:</strong></TD>
    <TD><SELECT id=moshi name=moshi> <OPTION selected value=BOT>BOT</OPTION> 
        <OPTION value=BT>BT</OPTION> <OPTION value=TOT>TOT</OPTION> <OPTION 
        value=�й�>�й�</OPTION> <OPTION value=����>����</OPTION></SELECT> </TD>
    <TD width="15%" class="myInputTitle"><strong>��������:</strong></TD>
    <TD width="35%"><SELECT id=xingzhi name=xingzhi> <OPTION selected 
        value=�½�>�½�</OPTION> <OPTION value=�Ľ�>�Ľ�</OPTION> <OPTION 
        value=����>����</OPTION></SELECT></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><strong>��Ŀ�ʽ���ƻ��������</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>��Ŀ�ʽ���ƻ���<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=invest name=invest value=45000.0></TD>
    <TD class="myInputTitle"><strong>���У�����ϵͳ�ƻ�Ͷ�ʣ�<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=syTouzi name=syTouzi value=0.0></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4><strong>���У�</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>���Ҳ�����<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=gujia name=gujia value=0.0></TD>
    <TD class="myInputTitle"><strong>ʡ��������<SPAN class=STYLE1>��Ԫ</SPAN>��:</strong></TD>
    <TD><INPUT type="text" id=sheng name=sheng value=0.0></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>�ط�������<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=difang name=difang value=0.0></TD>
    <TD class="myInputTitle"><strong>������<SPAN class=STYLE1>��Ԫ</SPAN>��:</strong></TD>
    <TD><INPUT type="text" id=qiye name=qiye value=0.0></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><strong>��Ŀ�������о��׶�</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>���б��Ƶ�λ</strong></TD>
    <TD><INPUT type="text" id=kyUnit name=kyUnit value=�㽭��ѧ��Դ��������о�Ժ></TD>
    <TD class="myInputTitle"><strong>����������λ���ĺ�</strong></TD>
    <TD><INPUT type="text" id=kyNum name=kyNum value=����ʡ����ί���Ʒ������ʣ�2006��704��></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>�������������ģ��<SPAN class=STYLE1>��/��</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=kyGuimo name=kyGuimo value=1600.0></TD>
    <TD class="myInputTitle">
      <P><strong>��תվ��<SPAN class=STYLE1>��</SPAN>��</strong></P></TD>
    <TD><INPUT type="text" id=kyZhan name=kyZhan value=1></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>��Ŀ��Ͷ�ʣ�<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=kyTouzi name=kyTouzi value=45000.0></TD>
    <TD class="myInputTitle"><strong>����������</strong></TD>
    <TD><INPUT type="text" id=kyGongyi name=kyGongyi value=���ض�ѭ�����������������������չ���></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><strong>��Ŀ������ƽ׶�</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>������Ƶ�λ</strong></TD>
    <TD><INPUT type="text" id=csUnit name=csUnit value=�й��Ṥҵ������ƹ������޹�˾></TD>
    <TD class="myInputTitle"><strong>���������ĺ�</strong></TD>
    <TD><INPUT type="text" id=csNum name=csNum></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>�������������ģ��<SPAN class=STYLE1>��/��</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=csGuimo name=csGuimo value=1600.0></TD>
    <TD class="myInputTitle">
      <P><strong>��תվ��<SPAN class=STYLE1>��</SPAN>��</strong></P></TD>
    <TD><INPUT type="text" id=csZhan name=csZhan value=0></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>��Ŀ��Ͷ�ʣ�<SPAN class=STYLE1>��Ԫ</SPAN>��</strong></TD>
    <TD><INPUT type="text" id=csTouzi name=csTouzi value=45000.0></TD>
    <TD class="myInputTitle"><strong>����������</strong></TD>
    <TD><INPUT type="text" id=csGongyi name=csGongyi value=���ض�ѭ�����������������������չ���></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><strong>��Ŀʩ��ͼ��ƽ׶�</strong></TD>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>��Ŀʩ����λ</strong></td>
    <td><input type="text" id="sgUnit" name="sgUnit" value="���ϴ��������������޹�˾" /></td>
    <td align="center" class="myInputTitle"><p><strong>���̼���λ</strong></p></td>
    <td><input type="text" id="sgJianli" name="sgJianli" value="������������������޹�˾" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>�ƻ�����ʱ��</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="sgBegin" class="Wdate" onClick="WdatePicker()" name="sgBegin" 
      value="2010-12-28" />    </td>
    <td align="center" class="myInputTitle"><strong>�ƻ�����ʱ��</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="sgEnd"  class="Wdate" onClick="WdatePicker()" name="sgEnd" 
      value="2011-08-01" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>ʵ�ʿ���ʱ��</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="begin"  class="Wdate" onClick="WdatePicker()" name="begin" 
      value="2011-01-28" />    </td>
    <td align="center" class="myInputTitle"><strong>ʵ�ʿ���ʱ��</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="end"  class="Wdate" onClick="WdatePicker()" name="end" />    </td>
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
    <TD colSpan=4 align=center><strong>���������</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>��Ŀҵ����λ</strong></TD>
    <TD colSpan=3><INPUT type="text" id=owner name=owner value=" ����˫����ɫ��Դ���޹�˾"></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>����������</strong></TD>
    <TD><INPUT type="text" id=faren name=faren value=�ܹ�Ȩ></TD>
    <TD class="myInputTitle"><strong>��λ����</strong></TD>
    <TD><SELECT id=yzXingzhi name=yzXingzhi> <OPTION selected 
        value=����>����</OPTION> <OPTION value=��Ӫ>��Ӫ</OPTION> <OPTION 
        value=����>����</OPTION> <OPTION value=����>����</OPTION> <OPTION 
        value=����>����</OPTION> <OPTION value=˽Ӫ>˽Ӫ</OPTION> <OPTION 
        value=����>����</OPTION> <OPTION value=����>����</OPTION> <OPTION 
        value=����>����</OPTION></SELECT> </TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>��һ������</strong></TD>
    <TD><INPUT type="text" id=yzYiper name=yzYiper value=�ܹ�Ȩ></TD>
    <TD class="myInputTitle"><strong>ְ��</strong></TD>
    <TD><INPUT type="text" id=yzYizhiwu name=yzYizhiwu value=�ܾ���></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>��ϵ�绰</strong></TD>
    <TD><INPUT type="text" id=yzYidianhua name=yzYidianhua value=02152585282></TD>
    <TD class="myInputTitle"><strong>�ֻ�</strong></TD>
    <TD><INPUT type="text" id=yzYishouji name=yzYishouji></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>���帺����</strong></TD>
    <TD><INPUT type="text" id=yzJtper name=yzJtper value=�ƽ�></TD>
    <TD class="myInputTitle"><strong>ְ��</strong></TD>
    <TD><INPUT type="text" id=yzJtzhiwu name=yzJtzhiwu value=�ܾ�������></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>��ϵ�绰</strong></TD>
    <TD><INPUT type="text" id=yzJtdianhua name=yzJtdianhua value=6358850></TD>
    <TD class="myInputTitle"><strong>�ֻ�</strong></TD>
    <TD><INPUT type="text" id=yzJtshouji name=yzJtshouji value=></TD></TR>
<!--	
  <TR>
    <TD class="myInputTitle"><STRONG>�磨�򣩽������ܲ���</STRONG></TD>
    <TD colSpan=3><INPUT type="text" id=cityDirector name=cityDirector 
  value=�����г��й����></TD></TR>
  <TR>
    <TD class="myInputTitle">��һ������</TD>
    <TD><INPUT type="text" id=dzYiper name=dzYiper value=������></TD>
    <TD class="myInputTitle">ְ��</TD>
    <TD><INPUT type="text" id=dzYizhiwu name=dzYizhiwu value=���ֳ�></TD></TR>
  <TR>
    <TD class="myInputTitle">��ϵ�绰</TD>
    <TD><INPUT type="text" id=dzYidianhua name=dzYidianhua value=3176086></TD>
    <TD class="myInputTitle">�ֻ�</TD>
    <TD><INPUT type="text" id=dzYishouji name=dzYishouji value=></TD></TR>
  <TR>
    <TD class="myInputTitle">���帺����</TD>
    <TD><INPUT type="text" id=dzJtper name=dzJtper value=���Ⱦ�></TD>
    <TD class="myInputTitle">ְ��</TD>
    <TD><INPUT type="text" id=dzJtzhiwu name=dzJtzhiwu value=����������></TD></TR>
  <TR>
    <TD class="myInputTitle">��ϵ�绰</TD>
    <TD><INPUT type="text" id=dzJtdianhua name=dzJtdianhua value=3184088></TD>
    <TD class="myInputTitle">�ֻ�</TD>
    <TD><INPUT type="text" id=dzJtshouji name=dzJtshouji value=></TD></TR>
  <TR>
    <TD class="myInputTitle"><STRONG>�أ��С������������ܲ���</STRONG></TD>
    <TD colSpan=3><INPUT type="text" id=countyDirector name=countyDirector></TD></TR>
  <TR>
    <TD class="myInputTitle">��һ������</TD>
    <TD><INPUT type="text" id=xsYiper name=xsYiper></TD>
    <TD class="myInputTitle">ְ��</TD>
    <TD><INPUT type="text" id=xsYizhiwu name=xsYizhiwu></TD></TR>
  <TR>
    <TD class="myInputTitle">��ϵ�绰</TD>
    <TD><INPUT type="text" id=xsYidianhua name=xsYidianhua></TD>
    <TD class="myInputTitle">�ֻ�</TD>
    <TD><INPUT type="text" id=xsYishouji name=xsYishouji></TD></TR>
  <TR>
    <TD class="myInputTitle">���帺����</TD>
    <TD><INPUT type="text" id=xsJtper name=xsJtper></TD>
    <TD class="myInputTitle">ְ��</TD>
    <TD><INPUT type="text" id=xsJtzhiwu name=xsJtzhiwu></TD></TR>
  <TR>
    <TD class="myInputTitle">��ϵ�绰</TD>
    <TD><INPUT type="text" id=xsJtdianhua name=xsJtdianhua></TD>
    <TD class="myInputTitle">�ֻ�</TD>
  <TD><INPUT type="text" id=xsJtshouji name=xsJtshouji></TD></TR>
-->  
  </TBODY></TABLE>
<BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   ��   ��   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   ��   ��   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--></TD></TR></TBODY></TABLE></FORM></BODY></HTML>
