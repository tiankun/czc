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
				<TD width="35%">${itemRubbish.ljc_guimo}
				</TD>
				<TD class="myInputTitle" width="15%">
					���У����ڽ���滮��
					<SPAN class=STYLE1>��/��</SPAN>��
				</TD>
				<TD width="35%">${itemRubbish.bq_guimo}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					��תվ��ƹ�ģ��
					<SPAN class=STYLE1>��/��</SPAN>��
				</TD>
				<TD>${itemRubbish.zz_guimo}
				</TD>
				<TD class="myInputTitle">
					��������ʽ
				</TD>
				<TD>${itemRubbish.lj_chuli}
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
				<TD>${itemRubbish.lj_youji}
				</TD>
				<TD class="myInputTitle">
					�����ɷ��к��޻��
					<SPAN class=STYLE1>%</SPAN>��
				</TD>
				<TD>${itemRubbish.lj_wuji}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					�����ɷ��к�ˮ�ʣ�
					<SPAN class=STYLE1>%</SPAN>��
				</TD>
				<TD>${itemRubbish.lj_shui}
				</TD>
				<TD class="myInputTitle">
					������ʩ
				</TD>
				<TD>${itemRubbish.fangsen}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					����Һ�����ʩ
				</TD>
				<TD>${itemRubbish.sl_cuoshi}
				</TD>
				<TD class="myInputTitle">
					����Һ����ŷű�׼
				</TD>
				<TD>${itemRubbish.sl_paifang}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					ʵ���ŷ�ˮ��
					<STRONG>COD</STRONG>������
					<STRONG class=STYLE1>mg/L</STRONG>��
				</TD>
				<TD>${itemRubbish.sj_cod}
				</TD>
				<TD class="myInputTitle">
					ʵ���ŷ�ˮ��
					<STRONG>BOD5</STRONG>������
					<STRONG class=STYLE1>mg/L</STRONG>��
				</TD>
				<TD>${itemRubbish.sj_bod5}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					ʵ���ŷ�ˮ��
					<STRONG>����</STRONG>������
					<STRONG class=STYLE1>mg/L</STRONG>��
				</TD>
				<TD>${itemRubbish.sj_ad}
				</TD>
				<TD class="myInputTitle">
					ʵ���ŷ�ˮ��
					<STRONG>SS</STRONG>������
					<STRONG class=STYLE1>mg/L</STRONG>��
				</TD>
				<TD>${itemRubbish.sj_ss}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					����Һ��������
					<SPAN class=STYLE1>��/��</SPAN>��
				</TD>
				<TD>${itemRubbish.sl_liang}
				</TD>
				<TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;
					
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					��ע
				</TD>
				<TD colSpan=3>${itemRubbish.remark}
				</TD>
			</TR>
	</TABLE>
</BODY>
</HTML>
