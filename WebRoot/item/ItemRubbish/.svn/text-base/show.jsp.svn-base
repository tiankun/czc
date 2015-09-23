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
					垃圾处理厂基本情况
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle" width="15%">
					垃圾处理厂设计总规模
					<BR>
					（<SPAN class=STYLE1>吨/日</SPAN>）
				</TD>
				<TD width="35%">${itemRubbish.ljc_guimo}
				</TD>
				<TD class="myInputTitle" width="15%">
					其中：本期建设规划（
					<SPAN class=STYLE1>吨/日</SPAN>）
				</TD>
				<TD width="35%">${itemRubbish.bq_guimo}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					中转站设计规模（
					<SPAN class=STYLE1>吨/日</SPAN>）
				</TD>
				<TD>${itemRubbish.zz_guimo}
				</TD>
				<TD class="myInputTitle">
					垃圾处理方式
				</TD>
				<TD>${itemRubbish.lj_chuli}
				</TD>
			</TR>
			<TR class="myInputTitle">
				<TD colSpan=4>
					<STRONG>处理结果及相关措施</STRONG>
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					垃圾成分中含有机物（
					<SPAN class=STYLE1>%</SPAN>）
				</TD>
				<TD>${itemRubbish.lj_youji}
				</TD>
				<TD class="myInputTitle">
					垃圾成分中含无机物（
					<SPAN class=STYLE1>%</SPAN>）
				</TD>
				<TD>${itemRubbish.lj_wuji}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					垃圾成分中含水率（
					<SPAN class=STYLE1>%</SPAN>）
				</TD>
				<TD>${itemRubbish.lj_shui}
				</TD>
				<TD class="myInputTitle">
					防渗措施
				</TD>
				<TD>${itemRubbish.fangsen}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					渗滤液处理措施
				</TD>
				<TD>${itemRubbish.sl_cuoshi}
				</TD>
				<TD class="myInputTitle">
					渗滤液设计排放标准
				</TD>
				<TD>${itemRubbish.sl_paifang}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					实际排放水质
					<STRONG>COD</STRONG>含量（
					<STRONG class=STYLE1>mg/L</STRONG>）
				</TD>
				<TD>${itemRubbish.sj_cod}
				</TD>
				<TD class="myInputTitle">
					实际排放水质
					<STRONG>BOD5</STRONG>含量（
					<STRONG class=STYLE1>mg/L</STRONG>）
				</TD>
				<TD>${itemRubbish.sj_bod5}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					实际排放水质
					<STRONG>氨氮</STRONG>含量（
					<STRONG class=STYLE1>mg/L</STRONG>）
				</TD>
				<TD>${itemRubbish.sj_ad}
				</TD>
				<TD class="myInputTitle">
					实际排放水质
					<STRONG>SS</STRONG>含量（
					<STRONG class=STYLE1>mg/L</STRONG>）
				</TD>
				<TD>${itemRubbish.sj_ss}
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					渗滤液产生量（
					<SPAN class=STYLE1>吨/日</SPAN>）
				</TD>
				<TD>${itemRubbish.sl_liang}
				</TD>
				<TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;
					
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					备注
				</TD>
				<TD colSpan=3>${itemRubbish.remark}
				</TD>
			</TR>
	</TABLE>
</BODY>
</HTML>
