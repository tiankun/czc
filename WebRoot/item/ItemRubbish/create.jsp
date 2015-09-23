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
					垃圾处理厂基本情况
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle" width="15%">
					垃圾处理厂设计总规模
					<BR>
					（<SPAN class=STYLE1>吨/日</SPAN>）
				</TD>
				<TD width="35%">
					<INPUT type="text" id="ljc_guimo" name="ljc_guimo" require="false" dataType="Double" value="${itemRubbish.ljc_guimo}">
				</TD>
				<TD class="myInputTitle" width="15%">
					其中：本期建设规划（
					<SPAN class=STYLE1>吨/日</SPAN>）
				</TD>
				<TD width="35%">
					<INPUT type="text" id="bq_guimo" name="bq_guimo" require="false" dataType="Double" value="${itemRubbish.bq_guimo}">
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					中转站设计规模（
					<SPAN class=STYLE1>吨/日</SPAN>）
				</TD>
				<TD>
					<INPUT type="text" id="zz_guimo" name="zz_guimo" require="false" dataType="Double" value="${itemRubbish.zz_guimo}">
				</TD>
				<TD class="myInputTitle">
					垃圾处理方式
				</TD>
				<TD>
					<SELECT id="lj_chuli" name="lj_chuli">
						<OPTION value="卫生填埋"  <c:if test="${itemRubbish.lj_chuli=='卫生填埋'}">selected</c:if>>卫生填埋</OPTION>
						<OPTION value="焚烧" <c:if test="${itemRubbish.lj_chuli=='焚烧'}">selected</c:if>>焚烧</OPTION>
						<OPTION value="堆肥"  <c:if test="${itemRubbish.lj_chuli=='堆肥'}">selected</c:if>>堆肥</OPTION>
						<OPTION value="综合 " <c:if test="${itemRubbish.lj_chuli=='综合'}">selected</c:if>>综合</OPTION>
						<OPTION value="其他"  <c:if test="${itemRubbish.lj_chuli=='其他'}">selected</c:if>>其他</OPTION>
					</SELECT>
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
				<TD>
					<INPUT type="text" id="lj_youji" name="lj_youji" require="false" dataType="Double" value="${itemRubbish.lj_youji}">
				</TD>
				<TD class="myInputTitle">
					垃圾成分中含无机物（
					<SPAN class=STYLE1>%</SPAN>）
				</TD>
				<TD>
					<INPUT type="text" id="lj_wuji" name="lj_wuji" require="false" dataType="Double" value="${itemRubbish.lj_wuji}">
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					垃圾成分中含水率（
					<SPAN class=STYLE1>%</SPAN>）
				</TD>
				<TD>
					<INPUT type="text" id="lj_shui" name="lj_shui" require="false" dataType="Double" value="${itemRubbish.lj_shui}">
				</TD>
				<TD class="myInputTitle">
					防渗措施
				</TD>
				<TD>
					<SELECT id="fangsen" name="fangsen">
						<OPTION value="无"  <c:if test="${itemRubbish.fangsen=='无'}">selected</c:if>>无</OPTION>
						<OPTION value="依环境，在谷口处采用垂直防渗"  <c:if test="${itemRubbish.fangsen=='依环境，在谷口处采用垂直防渗'}">selected</c:if>>依环境，在谷口处采用垂直防渗</OPTION>
						<OPTION value="天然粘土层 " <c:if test="${itemRubbish.fangsen=='天然粘土层'}">selected</c:if>>天然粘土层</OPTION>
						<OPTION value="1.5~2mm厚HDPE膜"  <c:if test="${itemRubbish.fangsen=='1.5~2mm厚HDPE膜'}">selected</c:if>>1.5~2mm厚HDPE膜</OPTION>
						<OPTION value="其它" <c:if test="${itemRubbish.fangsen=='其它'}">selected</c:if>>其它</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					渗滤液处理措施
				</TD>
				<TD>
					<SELECT id="sl_cuoshi" name="sl_cuoshi">
						<OPTION value="现场单独处理"  <c:if test="${itemRubbish.sl_cuoshi=='现场单独处理'}">selected</c:if>>现场单独处理</OPTION>
						<OPTION value="简易处理后排入城市污水管网 " <c:if test="${itemRubbish.sl_cuoshi=='简易处理后排入城市污水管网'}">selected</c:if>>简易处理后排入城市污水管网</OPTION>
						<OPTION value="无"  <c:if test="${itemRubbish.sl_cuoshi=='无'}">selected</c:if>>无</OPTION>
					</SELECT>
				</TD>
				<TD class="myInputTitle">
					渗滤液设计排放标准
				</TD>
				<TD>
					<SELECT id="sl_paifang" name="sl_paifang">
						<OPTION value="一级 " <c:if test="${itemRubbish.sl_paifang=='一级'}">selected</c:if>>一级</OPTION>
						<OPTION value="二级 " <c:if test="${itemRubbish.sl_paifang=='二级'}">selected</c:if>>二级</OPTION>
						<OPTION value="三级" <c:if test="${itemRubbish.sl_paifang=='三级'}">selected</c:if>>三级</OPTION>
					</SELECT>
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					实际排放水质
					<STRONG>COD</STRONG>含量（
					<STRONG class=STYLE1>mg/L</STRONG>）
				</TD>
				<TD>
					<INPUT type="text" id="sj_cod" name="sj_cod" require="false" dataType="Double" value="${itemRubbish.sj_cod}">
				</TD>
				<TD class="myInputTitle">
					实际排放水质
					<STRONG>BOD5</STRONG>含量（
					<STRONG class=STYLE1>mg/L</STRONG>）
				</TD>
				<TD>
					<INPUT type="text" id="sj_bod5" name="sj_bod5" require="false" dataType="Double" value="${itemRubbish.sj_bod5}">
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					实际排放水质
					<STRONG>氨氮</STRONG>含量（
					<STRONG class=STYLE1>mg/L</STRONG>）
				</TD>
				<TD>
					<INPUT type="text" id="sj_ad" name="sj_ad" require="false" dataType="Double" value="${itemRubbish.sj_ad}">
				</TD>
				<TD class="myInputTitle">
					实际排放水质
					<STRONG>SS</STRONG>含量（
					<STRONG class=STYLE1>mg/L</STRONG>）
				</TD>
				<TD>
					<INPUT type="text" id="sj_ss" name="sj_ss" require="false" dataType="Double" value="${itemRubbish.sj_ss}">
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					渗滤液产生量（
					<SPAN class=STYLE1>吨/日</SPAN>）
				</TD>
				<TD>
					<INPUT type="text" id="sl_liang" name="sl_liang" require="false" dataType="Double" value="${itemRubbish.sl_liang}">
				</TD>
				<TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;
					
				</TD>
			</TR>
			<TR>
				<TD class="myInputTitle">
					备注
				</TD>
				<TD colSpan=3>
					<TEXTAREA id="remark" style="width:88%" rows=3 name="remark">${itemRubbish.remark}</TEXTAREA>
				</TD>
			</TR>
			<TR>
				<TD height=30 colSpan=4 align=center>
					<INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button>
					&nbsp; &nbsp;
					<INPUT name=reset value="   重   置   " type=reset>
				</TD>
			</TR>
	</TABLE>
</FORM>
<c:if test="${info=='success'}">
<script language="JavaScript">
 alert("操作成功！");
</script>
</c:if>
</BODY>
</HTML>
