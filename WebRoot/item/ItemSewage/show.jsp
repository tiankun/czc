<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<META content="text/html; charset=gbk" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<STYLE type=text/css>
.STYLE1 {
	COLOR: #ff0000
}
</STYLE>
</head>
<body>
<%@ include file="../top.jsp"%>	
<TABLE class=myInput border=1 width="100%" align=center>
		<TR class="myInputTitle">
			<TD colSpan=4>
				<STRONG>��ˮ�����������</STRONG>
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle" width="15%">
				����滮��ģ��<SPAN class=STYLE1>��������/��</SPAN>��
			</TD>
			<TD width="35%">${itemSewage.guimo}
			</TD>
			<TD class="myInputTitle" width="15%">
				���׹����ܳ�(<SPAN class=STYLE1>����</SPAN>)
			</TD>
			<TD width="35%">${itemSewage.guanwang}
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				������ˮ�����ܳ���<SPAN class=STYLE1>����</SPAN>��
			</TD>
			<TD>${itemSewage.yushui}
			</TD>
			<TD class="myInputTitle">
				������ˮ�����ܳ���<SPAN class=STYLE1>����</SPAN>��
			</TD>
			<TD>${itemSewage.wushui}
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				�ŷű�׼
			</TD>
			<TD>${itemSewage.paifang}
			</TD>
			<TD class="myInputTitle">
				��ˮȥ������
			</TD>
			<TD>${itemSewage.ps_qx}
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				������ʩ
			</TD>
			<TD>${itemSewage.xiaodu}
			</TD>
			<TD class="myInputTitle">
				��ˮ����
			</TD>
			<TD>${itemSewage.ps_tz}
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				����ˮ��ƹ�ģ��<SPAN class=STYLE1>��������/��</SPAN>��
			</TD>
			<TD>${itemSewage.zs_guimo}
			</TD>
			<TD class="myInputTitle">
				����ˮ��Ҫ��;
			</TD>
			<TD>${itemSewage.zs_yongtu}
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				��ˮ����������
			</TD>
			<TD>${itemSewage.wsgy_leixing}
			</TD>
			<TD class="myInputTitle">
				��ˮ�����շ�ʽ
			</TD>
			<TD>${itemSewage.wsgy_fangshi}
			</TD>
		</TR>
		<TR>
			<TD height=30 class="myInputTitle">
				��ˮ���߼��ָ��
			</TD>
			<TD colSpan=3>${itemSewage.wszx_zhibiao}
			</TD>
		</TR>
</TABLE>		
<TABLE class=myInput border=1 width="100%" align=center>		
		<TR class="myInputTitle">
			<TD colSpan=6>
				<STRONG>��ˮ�������ˮ��</STRONG>
			</TD>
		</TR>
	<tr>		
		<td width="16%" ></td>
		<td width="16%" class="myInputTitle" align="center">��ˮ��<SPAN class=STYLE1>mg/L</SPAN>��</td>
		<td width="16%" class="myInputTitle" align="center">��ˮ��<SPAN class=STYLE1>mg/L</SPAN>��</td>
		<td width="16%"></td>
		<td width="16%" class="myInputTitle" align="center">��ˮ��<SPAN class=STYLE1>mg/L</SPAN>��</td>
		<td width="16%" class="myInputTitle" align="center">��ˮ��<SPAN class=STYLE1>mg/L</SPAN>��</td>			
	</tr>		
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">		
		<td align="center" class="myInputTitle">COD</td>	
		<td align="center">${itemSewage.wj_cod}</td>
		<td align="center">${itemSewage.wc_cod}</td>
		<td align="center" class="myInputTitle">BOD</td>
		<td align="center">${itemSewage.wj_bod}</td>
		<td align="center">${itemSewage.wc_bod}</td>							
	</tr>
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
		<td align="center" class="myInputTitle">SS</td>	
		<td align="center">${itemSewage.wj_ss}</td>
		<td align="center">${itemSewage.wc_ss}</td>
		<td align="center" class="myInputTitle">����</td>	
		<td align="center">${itemSewage.wj_ad}</td>
		<td align="center">${itemSewage.wc_ss}</td>				
	</tr>
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
		<td align="center" class="myInputTitle">TP</td>	
		<td align="center">${itemSewage.wj_tp}</td>
		<td align="center">${itemSewage.wc_tp}</td>
		<td align="center" class="myInputTitle">TN</td>	
		<td align="center">${itemSewage.wj_tn}</td>
		<td align="center">${itemSewage.wc_tn}</td>
	</tr>		
</TABLE>		
<TABLE class=myInput border=1 width="100%" align=center>		
		<TR class="myInputTitle">
			<TD colSpan=4>
				<STRONG>���ദ�������</STRONG>
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle" width="15%">
				����Ũ��
			</TD>
			<TD width="35%">${itemSewage.wnns}
			</TD>
			<TD class="myInputTitle" width="15%">
				��������
			</TD>
			<TD width="35%">${itemSewage.wnxh}
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				������ˮ
			</TD>
			<TD>${itemSewage.wnss}
			</TD>
			<TD class="myInputTitle">
				���ദ�÷�ʽ
			</TD>
			<TD>${itemSewage.wncl_fangshi}
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				��ע
			</TD>
			<TD colSpan="3">${itemSewage.remark}
			</TD>
		</TR>
</TABLE>
</body>
</html>
