<%@ page contentType="text/html;charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
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
<%@ include file="../top.jsp"%>
<FORM method=post name=form1 action="${pageContext.request.contextPath}/item/Item_rubbish!save.do" style="margin:0px">
<input type="hidden" name="id" id="id" value="${item}">
	<TABLE class=myInput border=1 width="100%" align="center">
			<TR>
				<TD colSpan=4 class="tHead">
					���������������
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle" width="15%">
					������������ܹ�ģ
					<BR>
					��<SPAN class=STYLE1>��/��</SPAN>��
				</TD>
				<TD width="35%">
					<INPUT type="text" id="ljc_guimo" name="ljc_guimo" require="false" dataType="Double" value="${itemRubbish.ljc_guimo}">
				</TD>
				<TD class="myInputTitle" width="15%">
					���У����ڽ���滮��
					<SPAN class=STYLE1>��/��</SPAN>��
				</TD>
				<TD width="35%">
					<INPUT type="text" id="bq_guimo" name="bq_guimo" require="false" dataType="Double" value="${itemRubbish.bq_guimo}">
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					��תվ��ƹ�ģ��
					<SPAN class=STYLE1>��/��</SPAN>��
				</TD>
				<TD>
					<INPUT type="text" id="zz_guimo" name="zz_guimo" require="false" dataType="Double" value="${itemRubbish.zz_guimo}">
				</TD>
				<TD class="myInputTitle">
					��������ʽ
				</TD>
				<TD>
					<SELECT id="lj_chuli" name="lj_chuli">
						<OPTION value="��������"  <c:if test="${itemRubbish.lj_chuli=='��������'}">selected</c:if>>��������</OPTION>
						<OPTION value="����" <c:if test="${itemRubbish.lj_chuli=='����'}">selected</c:if>>����</OPTION>
						<OPTION value="�ѷ�"  <c:if test="${itemRubbish.lj_chuli=='�ѷ�'}">selected</c:if>>�ѷ�</OPTION>
						<OPTION value="�ۺ� " <c:if test="${itemRubbish.lj_chuli=='�ۺ�'}">selected</c:if>>�ۺ�</OPTION>
						<OPTION value="����"  <c:if test="${itemRubbish.lj_chuli=='����'}">selected</c:if>>����</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR class="myInputTitle">
				<TD colSpan=4>
					<STRONG>����������ش�ʩ</STRONG>
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					�����ɷ��к��л��
					<SPAN class=STYLE1>%</SPAN>��
				</TD>
				<TD>
					<INPUT type="text" id="lj_youji" name="lj_youji" require="false" dataType="Double" value="${itemRubbish.lj_youji}">
				</TD>
				<TD class="myInputTitle">
					�����ɷ��к��޻��
					<SPAN class=STYLE1>%</SPAN>��
				</TD>
				<TD>
					<INPUT type="text" id="lj_wuji" name="lj_wuji" require="false" dataType="Double" value="${itemRubbish.lj_wuji}">
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					�����ɷ��к�ˮ�ʣ�
					<SPAN class=STYLE1>%</SPAN>��
				</TD>
				<TD>
					<INPUT type="text" id="lj_shui" name="lj_shui" require="false" dataType="Double" value="${itemRubbish.lj_shui}">
				</TD>
				<TD class="myInputTitle">
					������ʩ
				</TD>
				<TD>
					<SELECT id="fangsen" name="fangsen">
						<OPTION value="��"  <c:if test="${itemRubbish.fangsen=='��'}">selected</c:if>>��</OPTION>
						<OPTION value="���������ڹȿڴ����ô�ֱ����"  <c:if test="${itemRubbish.fangsen=='���������ڹȿڴ����ô�ֱ����'}">selected</c:if>>���������ڹȿڴ����ô�ֱ����</OPTION>
						<OPTION value="��Ȼճ���� " <c:if test="${itemRubbish.fangsen=='��Ȼճ����'}">selected</c:if>>��Ȼճ����</OPTION>
						<OPTION value="1.5~2mm��HDPEĤ"  <c:if test="${itemRubbish.fangsen=='1.5~2mm��HDPEĤ'}">selected</c:if>>1.5~2mm��HDPEĤ</OPTION>
						<OPTION value="����" <c:if test="${itemRubbish.fangsen=='����'}">selected</c:if>>����</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					����Һ�����ʩ
				</TD>
				<TD>
					<SELECT id="sl_cuoshi" name="sl_cuoshi">
						<OPTION value="�ֳ���������"  <c:if test="${itemRubbish.sl_cuoshi=='�ֳ���������'}">selected</c:if>>�ֳ���������</OPTION>
						<OPTION value="���״�������������ˮ���� " <c:if test="${itemRubbish.sl_cuoshi=='���״�������������ˮ����'}">selected</c:if>>���״�������������ˮ����</OPTION>
						<OPTION value="��"  <c:if test="${itemRubbish.sl_cuoshi=='��'}">selected</c:if>>��</OPTION>
					</SELECT>
				</TD>
				<TD class="myInputTitle">
					����Һ����ŷű�׼
				</TD>
				<TD>
					<SELECT id="sl_paifang" name="sl_paifang">
						<OPTION value="һ�� " <c:if test="${itemRubbish.sl_paifang=='һ��'}">selected</c:if>>һ��</OPTION>
						<OPTION value="���� " <c:if test="${itemRubbish.sl_paifang=='����'}">selected</c:if>>����</OPTION>
						<OPTION value="����" <c:if test="${itemRubbish.sl_paifang=='����'}">selected</c:if>>����</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					ʵ���ŷ�ˮ��
					<STRONG>COD</STRONG>������
					<STRONG class=STYLE1>mg/L</STRONG>��
				</TD>
				<TD>
					<INPUT type="text" id="sj_cod" name="sj_cod" require="false" dataType="Double" value="${itemRubbish.sj_cod}">
				</TD>
				<TD class="myInputTitle">
					ʵ���ŷ�ˮ��
					<STRONG>BOD5</STRONG>������
					<STRONG class=STYLE1>mg/L</STRONG>��
				</TD>
				<TD>
					<INPUT type="text" id="sj_bod5" name="sj_bod5" require="false" dataType="Double" value="${itemRubbish.sj_bod5}">
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					ʵ���ŷ�ˮ��
					<STRONG>����</STRONG>������
					<STRONG class=STYLE1>mg/L</STRONG>��
				</TD>
				<TD>
					<INPUT type="text" id="sj_ad" name="sj_ad" require="false" dataType="Double" value="${itemRubbish.sj_ad}">
				</TD>
				<TD class="myInputTitle">
					ʵ���ŷ�ˮ��
					<STRONG>SS</STRONG>������
					<STRONG class=STYLE1>mg/L</STRONG>��
				</TD>
				<TD>
					<INPUT type="text" id="sj_ss" name="sj_ss" require="false" dataType="Double" value="${itemRubbish.sj_ss}">
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					����Һ��������
					<SPAN class=STYLE1>��/��</SPAN>��
				</TD>
				<TD>
					<INPUT type="text" id="sl_liang" name="sl_liang" require="false" dataType="Double" value="${itemRubbish.sl_liang}">
				</TD>
				<TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;
					
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					��ע
				</TD>
				<TD colSpan=3>
					<TEXTAREA id="remark" style="width:88%" rows=3 name="remark">${itemRubbish.remark}</TEXTAREA>
				</TD>
			</TR>
			<TR>
				<TD height=30 colSpan=4 align=center>
					<INPUT onClick="return mySubmit();" name=button value="   ��   ��   " type=button>
					&nbsp; &nbsp;
					<INPUT name=reset value="   ��   ��   " type=reset>
				</TD>
			</TR>
	</TABLE>
</FORM>
<c:if test="${info=='success'}">
<script language="JavaScript">
 alert("�����ɹ���");
</script>
</c:if>
</BODY>
</HTML>
