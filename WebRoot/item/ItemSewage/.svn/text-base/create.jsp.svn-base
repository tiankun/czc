<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<META content="text/html; charset=gbk" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<script type="text/javascript" language="javascript">
function mySubmit() {
	if (Validator.Validate(document.form1, 3)) {
		document.form1.submit();
	}
}
function update_GyFangshi(CatID1, subTypeForm) {
	var wsgy_fangshi = ${itemSewage.wsgy_fangshi};
	subTypeForm.length = 0;
	switch (CatID1) {
	case 0://物理处理法
		subTypeForm.options[0] = new Option("过滤", "过滤");
		subTypeForm.options[1] = new Option("离心", "离心");
		subTypeForm.options[2] = new Option("沉淀分离", "沉淀分离");
		subTypeForm.options[3] = new Option("上浮分离", "上浮分离");
		subTypeForm.options[4] = new Option("其他", "其他");
		subTypeForm.options[0].selected = true;
		switch (wsgy_fangshi) {
	    case "过滤":
	    	subTypeForm.options[0].selected = true;
		    break;
	    case "离心":
	    	subTypeForm.options[1].selected = true;
		    break;
	    case "沉淀分离":
	    	subTypeForm.options[2].selected = true;
		    break;
	    case "上浮分离":
	    	subTypeForm.options[3].selected = true;
		    break;
	    case "其他":
	    	subTypeForm.options[4].selected = true;
		    break;
	    }
		break;
	case 1://化学处理法
		subTypeForm.options[0] = new Option("化学混凝法", "化学混凝法");
		subTypeForm.options[1] = new Option("化学混凝沉淀法", "化学混凝沉淀法");
		subTypeForm.options[2] = new Option("化学混凝气浮法", "化学混凝气浮法");
		subTypeForm.options[3] = new Option("中和法", "中和法");
		subTypeForm.options[4] = new Option("化学沉淀法", "化学沉淀法");
		subTypeForm.options[5] = new Option("氧化还原法", "氧化还原法");
		subTypeForm.options[6] = new Option("其它", "其它");
		subTypeForm.options[0].selected = true;
		switch (wsgy_fangshi) {
	    case "化学混凝法":
	    	subTypeForm.options[0].selected = true;
		    break;
	    case "化学混凝沉淀法":
	    	subTypeForm.options[1].selected = true;
		    break;
	    case "化学混凝气浮法":
	    	subTypeForm.options[2].selected = true;
		    break;
	    case "中和法":
	    	subTypeForm.options[3].selected = true;
		    break;
	    case "化学沉淀法":
	    	subTypeForm.options[4].selected = true;
		    break;
	    case "氧化还原法":
	    	subTypeForm.options[5].selected = true;
		    break;
	    case "其他":
	    	subTypeForm.options[6].selected = true;
		    break;
	    }
		break;
	case 2://物理化学处理法
		subTypeForm.options[0] = new Option("吸附", "吸附");
		subTypeForm.options[1] = new Option("离子交换", "离子交换");
		subTypeForm.options[2] = new Option("反渗透", "反渗透");
		subTypeForm.options[3] = new Option("超过滤", "超过滤");
		subTypeForm.options[4] = new Option("其它", "其它");
		subTypeForm.options[0].selected = true;
		switch (wsgy_fangshi) {
	    case "吸附":
	    	subTypeForm.options[0].selected = true;
		    break;
	    case "离子交换":
	    	subTypeForm.options[1].selected = true;
		    break;
	    case "反渗透":
	    	subTypeForm.options[2].selected = true;
		    break;
	    case "超过滤":
	    	subTypeForm.options[3].selected = true;
		    break;
	    case "其它":
	    	subTypeForm.options[4].selected = true;
		    break;
	    }
		break;
	case 3://生物处理法
		subTypeForm.options[0] = new Option("传统活性污泥法", "传统活性污泥法");
		subTypeForm.options[1] = new Option("高浓度活性污泥法", "高浓度活性污泥法");
		subTypeForm.options[2] = new Option("接触稳定法", "接触稳定法");
		subTypeForm.options[3] = new Option("氧化沟", "氧化沟");
		subTypeForm.options[4] = new Option("SBR", "SBR");
		subTypeForm.options[5] = new Option("生物膜法", "生物膜法");
		subTypeForm.options[6] = new Option("普通生物滤池", "普通生物滤池");
		subTypeForm.options[7] = new Option("生物转盘", "生物转盘");
		subTypeForm.options[8] = new Option("生物接触氧化法", "生物接触氧化法");
		subTypeForm.options[9] = new Option("厌氧折流板反应器工艺", "厌氧折流板反应器工艺");
		subTypeForm.options[10] = new Option("A/O工艺", "A/O工艺");
		subTypeForm.options[11] = new Option("A2/O工艺", "A2/O工艺");
		subTypeForm.options[12] = new Option("A/O2工艺", "A/O2工艺");
		subTypeForm.options[13] = new Option("其他", "其他");
		subTypeForm.options[0].selected = true;
		switch (wsgy_fangshi) {
	    case "传统活性污泥法":
	    	subTypeForm.options[0].selected = true;
		    break;
	    case "高浓度活性污泥法":
	    	subTypeForm.options[1].selected = true;
		    break;
	    case "接触稳定法":
	    	subTypeForm.options[2].selected = true;
		    break;
	    case "氧化沟":
	    	subTypeForm.options[3].selected = true;
		    break;
	    case "SBR":
	    	subTypeForm.options[4].selected = true;
		    break;
	    case "生物膜法":
	    	subTypeForm.options[5].selected = true;
		    break;
	    case "普通生物滤池":
	    	subTypeForm.options[6].selected = true;
		    break;
	    case "生物转盘":
	    	subTypeForm.options[7].selected = true;
		    break;
	    case "生物接触氧化法":
	    	subTypeForm.options[8].selected = true;
		    break;
	    case "厌氧折流板反应器工艺":
	    	subTypeForm.options[9].selected = true;
		    break;
	    case "A/O工艺":
	    	subTypeForm.options[10].selected = true;
		    break;
	    case "A2/O工艺":
	    	subTypeForm.options[11].selected = true;
		    break;
	    case "A/O2工艺":
	    	subTypeForm.options[12].selected = true;
		    break;
	    case "其他":
	    	subTypeForm.options[13].selected = true;
		    break;
	    }
		break;
	}
}
function SetGyFangshi() {
	p = document.getElementById("wsgy_leixing");
	c = document.getElementById("wsgy_fangshi");
	update_GyFangshi(p.options.selectedIndex, c);
	return;
}
</SCRIPT>
<STYLE type=text/css>
.STYLE1 {
	COLOR: #ff0000
}
</STYLE>
</head>
<body onload="SetGyFangshi();">
<%@ include file="../top.jsp"%>	
<FORM method="post" name="form1" action="${pageContext.request.contextPath}/item/Item_sewage!save.do" style="margin:0px">
<input type="hidden" name="id" id="id" value="${item}">
<TABLE class=myInput border=1 width="100%" align=center>
		<TR class="myInputTitle">
			<TD colSpan=4>
				<STRONG>污水处理厂基本情况</STRONG>
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle" width="15%">
				建设规划规模（<SPAN class=STYLE1>万立方米/日</SPAN>）
			</TD>
			<TD width="35%">
				<INPUT type="text" id="guimo" name="guimo" dataType="Double" value="${itemSewage.guimo}">
			</TD>
			<TD class="myInputTitle" width="15%">
				配套管网总长(<SPAN class=STYLE1>公里</SPAN>)
			</TD>
			<TD width="35%">
				<INPUT type="text" id="guanwang" name="guanwang" dataType="Double" value="${itemSewage.guanwang}">
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				其中雨水管网总长（<SPAN class=STYLE1>公里</SPAN>）
			</TD>
			<TD>
				<INPUT type="text" id="yushui" name="yushui" dataType="Double" value="${itemSewage.yushui}">
			</TD>
			<TD class="myInputTitle">
				其中污水管网总长（<SPAN class=STYLE1>公里</SPAN>）
			</TD>
			<TD>
				<INPUT type="text" id="wushui" name="wushui" dataType="Double" value="${itemSewage.wushui}">
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				排放标准
			</TD>
			<TD>
				<SELECT id="paifang" name="paifang">
					<OPTION value="一级A" <c:if test="${itemSewage.paifang=='一级A'}">selected</c:if>>一级A</OPTION>
					<OPTION value="一级B" <c:if test="${itemSewage.paifang=='一级B'}">selected</c:if>>一级B</OPTION>
					<OPTION value="二级" <c:if test="${itemSewage.paifang=='二级'}">selected</c:if>>二级</OPTION>
					<OPTION value="三级" <c:if test="${itemSewage.paifang=='三级'}">selected</c:if>>三级</OPTION>
					<OPTION value="其他" <c:if test="${itemSewage.paifang=='其他'}">selected</c:if>>其他</OPTION>
				</SELECT>
			</TD>
			<TD class="myInputTitle">
				排水去向类型
			</TD>
			<TD>
				<SELECT id="ps_qx" name="ps_qx">
					<OPTION value="直接进入海域" <c:if test="${itemSewage.ps_qx=='直接进入海域'}">selected</c:if>>直接进入海域</OPTION>
					<OPTION selected value="直接进入江河湖、库等水环境" <c:if test="${itemSewage.ps_qx=='直接进入江河湖、库等水环境'}">selected</c:if>>直接进入江河湖、库等水环境</OPTION>
					<OPTION value="直接进入污灌农田" <c:if test="${itemSewage.ps_qx=='直接进入污灌农田'}">selected</c:if>>直接进入污灌农田</OPTION>
					<OPTION value="进入地渗或蒸发地" <c:if test="${itemSewage.ps_qx=='进入地渗或蒸发地'}">selected</c:if>>进入地渗或蒸发地</OPTION>
					<OPTION value="进入其他单位" <c:if test="${itemSewage.ps_qx=='进入其他单位'}">selected</c:if>>进入其他单位</OPTION>
					<OPTION value="其它" <c:if test="${itemSewage.ps_qx=='其它'}">selected</c:if>>其它</OPTION>
				</SELECT>
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				消毒措施
			</TD>
			<TD>
				<SELECT id="xiaodu" name="xiaodu">
					<OPTION value="石灰消毒" <c:if test="${itemSewage.xiaodu=='石灰消毒'}">selected</c:if>>石灰消毒</OPTION>
					<OPTION value="臭氧消毒" <c:if test="${itemSewage.xiaodu=='臭氧消毒'}">selected</c:if>>臭氧消毒</OPTION>
					<OPTION value="紫外消毒" <c:if test="${itemSewage.xiaodu=='紫外消毒'}">selected</c:if>>紫外消毒</OPTION>
					<OPTION value="二氧化氯消毒" <c:if test="${itemSewage.xiaodu=='二氧化氯消毒'}">selected</c:if>>二氧化氯消毒</OPTION>
					<OPTION value="次氯酸钠消毒" <c:if test="${itemSewage.xiaodu=='次氯酸钠消毒'}">selected</c:if>>次氯酸钠消毒</OPTION>
					<OPTION value="夜氯消毒" <c:if test="${itemSewage.xiaodu=='夜氯消毒'}">selected</c:if>>夜氯消毒</OPTION>
					<OPTION value="次氯酸钠消毒" <c:if test="${itemSewage.xiaodu=='次氯酸钠消毒'}">selected</c:if>>次氯酸钠消毒</OPTION>
					<OPTION value="组合方式" <c:if test="${itemSewage.xiaodu=='组合方式'}">selected</c:if>>组合方式</OPTION>
					<OPTION value="其他" <c:if test="${itemSewage.xiaodu=='其他'}">selected</c:if>>其他</OPTION>
					<OPTION value="无" <c:if test="${itemSewage.xiaodu=='无'}">selected</c:if>>无</OPTION>
				</SELECT>
			</TD>
			<TD class="myInputTitle">
				排水体制
			</TD>
			<TD>
				<SELECT id="ps_tz" name="ps_tz">
					<OPTION value="雨污分流" <c:if test="${itemSewage.ps_tz=='雨污分流'}">selected</c:if>>雨污分流</OPTION>
					<OPTION value="雨污合流" <c:if test="${itemSewage.ps_tz=='雨污合流'}">selected</c:if>>雨污合流</OPTION>
					<OPTION value="混流" <c:if test="${itemSewage.ps_tz=='混流'}">selected</c:if>>混流</OPTION>
				</SELECT>
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				再生水设计规模（<SPAN class=STYLE1>万立方米/日</SPAN>）
			</TD>
			<TD>
				<INPUT type="text" id="zs_guimo" name="zs_guimo" dataType="Double" value="${itemSewage.zs_guimo}">
			</TD>
			<TD class="myInputTitle">
				再生水主要用途
			</TD>
			<TD>
				<INPUT type="text" id="zs_yongtu" name="zs_yongtu" value="${itemSewage.zs_yongtu}">
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				污水处理工艺类型
			</TD>
			<TD>
				<SELECT id="wsgy_leixing" onchange="javascript:SetGyFangshi();" name="wsgy_leixing">
					<OPTION value="物理处理法" <c:if test="${itemSewage.wsgy_leixing=='物理处理法'}">selected</c:if>>物理处理法</OPTION>
					<OPTION value="化学处理法" <c:if test="${itemSewage.wsgy_leixing=='化学处理法'}">selected</c:if>>化学处理法</OPTION>
					<OPTION value="物理化学处理法" <c:if test="${itemSewage.wsgy_leixing=='物理化学处理法'}">selected</c:if>>物理化学处理法</OPTION>
					<OPTION value="生物处理法" <c:if test="${itemSewage.wsgy_leixing=='生物处理法'}">selected</c:if>>生物处理法</OPTION>
				</SELECT>
			</TD>
			<TD class="myInputTitle">
				污水处理工艺方式
			</TD>
			<TD>
				<SELECT id="wsgy_fangshi" name="wsgy_fangshi">
					<OPTION value="吸附" <c:if test="${itemSewage.wsgy_fangshi=='吸附'}">selected</c:if>>吸附</OPTION>
					<OPTION value="离子交换" <c:if test="${itemSewage.wsgy_fangshi=='离子交换'}">selected</c:if>>离子交换</OPTION>
					<OPTION value="反渗透" <c:if test="${itemSewage.wsgy_fangshi=='反渗透'}">selected</c:if>>反渗透</OPTION>
					<OPTION value="超过滤" <c:if test="${itemSewage.wsgy_fangshi=='超过滤'}">selected</c:if>>超过滤</OPTION>
					<OPTION value="其它" <c:if test="${itemSewage.wsgy_fangshi=='其它'}">selected</c:if>>其它</OPTION>
				</SELECT>
			</TD>
		</TR>
		<TR>
			<TD height=30 class="myInputTitle">
				污水在线监测指标
			</TD>
			<TD colSpan=3>
				<TABLE border=0 cellSpacing=0 borderColor=#008489 cellPadding=0 style="width:500px">
						<TR>
							<TD style="BACKGROUND-COLOR: #ffffff">
								<INPUT id="wszx_zhibiao" name="wszx_zhibiao" value="流量" type="checkbox" <c:if test="${fn:contains(itemSewage.wszx_zhibiao, '流量;')}">CHECKED</c:if>>流量
							</TD>
							<TD>
								<INPUT id="wszx_zhibiao" name="wszx_zhibiao" value="COD" type="checkbox" <c:if test="${fn:contains(itemSewage.wszx_zhibiao, 'COD;')}">CHECKED</c:if>>COD</TD>
							<TD style="BACKGROUND-COLOR: #ffffff">
								<INPUT id="wszx_zhibiao" name="wszx_zhibiao" value="氨氮" type="checkbox" <c:if test="${fn:contains(itemSewage.wszx_zhibiao, '氨氮;')}">CHECKED</c:if>>氨氮
							</TD>
							<TD>
								<INPUT id="wszx_zhibiao" name="wszx_zhibiao" value="TN" type="checkbox" <c:if test="${fn:contains(itemSewage.wszx_zhibiao, 'TN;')}">CHECKED</c:if>>TN
							</TD>
							<TD style="BACKGROUND-COLOR: #ffffff">
								<INPUT id="wszx_zhibiao" name="wszx_zhibiao" value="TP" type="checkbox" <c:if test="${fn:contains(itemSewage.wszx_zhibiao, 'TP;')}">CHECKED</c:if>>TP
							</TD>
							<TD>
								<INPUT id="wszx_zhibiao" name="wszx_zhibiao" value="PH仪" type="checkbox" <c:if test="${fn:contains(itemSewage.wszx_zhibiao, 'PH仪;')}">CHECKED</c:if>>PH仪
							</TD>
							<TD style="BACKGROUND-COLOR: #ffffff">
								<INPUT id="wszx_zhibiao" name="wszx_zhibiao" value="其它" type="checkbox" <c:if test="${fn:contains(itemSewage.wszx_zhibiao, '其它;')}">CHECKED</c:if>>其它
							</TD>
						</TR>
				</TABLE>
			</TD>
		</TR>
</TABLE>		
<TABLE class=myInput border=1 width="100%" align=center>		
		<TR class="myInputTitle">
			<TD colSpan=6>
				<STRONG>污水处理厂设计水质</STRONG>
			</TD>
		</TR>
	<tr>		
		<td width="16%" ></td>
		<td width="16%" class="myInputTitle" align="center">进水（<SPAN class=STYLE1>mg/L</SPAN>）</td>
		<td width="16%" class="myInputTitle" align="center">出水（<SPAN class=STYLE1>mg/L</SPAN>）</td>
		<td width="16%"></td>
		<td width="16%" class="myInputTitle" align="center">进水（<SPAN class=STYLE1>mg/L</SPAN>）</td>
		<td width="16%" class="myInputTitle" align="center">出水（<SPAN class=STYLE1>mg/L</SPAN>）</td>			
	</tr>		
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">		
		<td align="center" class="myInputTitle">COD</td>	
		<td align="center"><INPUT type="text" id="wj_cod" name="wj_cod" value="${itemSewage.wj_cod}"></td>
		<td align="center"><INPUT type="text" id="wc_cod" name="wc_cod" value="${itemSewage.wc_cod}"></td>
		<td align="center" class="myInputTitle">BOD</td>
		<td align="center"><INPUT type="text" id="wj_bod" name="wj_bod" value="${itemSewage.wj_bod}"></td>
		<td align="center"><INPUT type="text" id="wc_bod" name="wc_bod" value="${itemSewage.wc_bod}"></td>							
	</tr>
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
		<td align="center" class="myInputTitle">SS</td>	
		<td align="center"><INPUT type="text" id="wj_ss" name="wj_ss" require="false" dataType="Double" value="${itemSewage.wj_ss}"></td>
		<td align="center"><INPUT type="text" id="wc_ss" name="wc_ss" require="false" dataType="Double" value="${itemSewage.wc_ss}"></td>
		<td align="center" class="myInputTitle">氨氮</td>	
		<td align="center"><INPUT type="text" id="wj_ad" name="wj_ad" require="false" dataType="Double" value="${itemSewage.wj_ad}"></td>
		<td align="center"><INPUT type="text" id="wc_ss" name="wc_ss" require="false" dataType="Double" value="${itemSewage.wc_ss}"></td>				
	</tr>
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
		<td align="center" class="myInputTitle">TP</td>	
		<td align="center"><INPUT type="text" id="wj_tp" name="wj_tp" require="false" dataType="Double" value="${itemSewage.wj_tp}"></td>
		<td align="center"><INPUT type="text" id="wc_tp" name="wc_tp" require="false" dataType="Double" value="${itemSewage.wc_tp}"></td>
		<td align="center" class="myInputTitle">TN</td>	
		<td align="center"><INPUT type="text" id="wj_tn" name="wj_tn" require="false" dataType="Double" value="${itemSewage.wj_tn}"></td>
		<td align="center"><INPUT type="text" id="wc_tn" name="wc_tn" require="false" dataType="Double" value="${itemSewage.wc_tn}"></td>
	</tr>		
</TABLE>		
<TABLE class=myInput border=1 width="100%" align=center>		
		<TR class="myInputTitle">
			<TD colSpan=4>
				<STRONG>污泥处理处置情况</STRONG>
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle" width="15%">
				污泥浓缩
			</TD>
			<TD width="35%">
				<SELECT id="wnns" name="wnns">
					<OPTION value="无" <c:if test="${itemSewage.wnns=='无'}">selected</c:if>>无</OPTION>
					<OPTION value="重力浓缩" <c:if test="${itemSewage.wnns=='重力浓缩'}">selected</c:if>>重力浓缩</OPTION>
					<OPTION value="气浮浓缩" <c:if test="${itemSewage.wnns=='气浮浓缩'}">selected</c:if>>气浮浓缩</OPTION>
					<OPTION value="离心浓缩" <c:if test="${itemSewage.wnns=='离心浓缩'}">selected</c:if>>离心浓缩</OPTION>
					<OPTION value="浓缩脱水一体" <c:if test="${itemSewage.wnns=='浓缩脱水一体'}">selected</c:if>>浓缩脱水一体</OPTION>
					<OPTION value="其它" <c:if test="${itemSewage.wnns=='其它'}">selected</c:if>>其它</OPTION>
				</SELECT>
			</TD>
			<TD class="myInputTitle" width="15%">
				污泥消化
			</TD>
			<TD width="35%">
				<SELECT id="wnxh" name="wnxh">
					<OPTION value="无" <c:if test="${itemSewage.wnxh=='无'}">selected</c:if>>无</OPTION>
					<OPTION value="厌氧消化" <c:if test="${itemSewage.wnxh=='厌氧消化'}">selected</c:if>>厌氧消化</OPTION>
					<OPTION value="好氧消化" <c:if test="${itemSewage.wnxh=='好氧消化'}">selected</c:if>>好氧消化</OPTION>
					<OPTION value="其它" <c:if test="${itemSewage.wnxh=='其它'}">selected</c:if>>其它</OPTION>
				</SELECT>
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				污泥脱水
			</TD>
			<TD>
				<SELECT id="wnss" name="wnss">
					<OPTION value="板框压滤" <c:if test="${itemSewage.wnss=='板框压滤'}">selected</c:if>>板框压滤</OPTION>
					<OPTION value="带式压滤" <c:if test="${itemSewage.wnss=='带式压滤'}">selected</c:if>>带式压滤</OPTION>
					<OPTION value="离心脱水" <c:if test="${itemSewage.wnss=='离心脱水'}">selected</c:if>>离心脱水</OPTION>
					<OPTION value="自然干化" <c:if test="${itemSewage.wnss=='自然干化'}">selected</c:if>>自然干化</OPTION>
					<OPTION value="真空过滤" <c:if test="${itemSewage.wnss=='真空过滤'}">selected</c:if>>真空过滤</OPTION>
					<OPTION value="其它" <c:if test="${itemSewage.wnss=='其它'}">selected</c:if>>其它</OPTION>
				</SELECT>
			</TD>
			<TD class="myInputTitle">
				污泥处置方式
			</TD>
			<TD>
				<SELECT id="wncl_fangshi" name="wncl_fangshi">
					<OPTION value="堆肥" <c:if test="${itemSewage.wncl_fangshi=='堆肥'}">selected</c:if>>堆肥</OPTION>
					<OPTION value="卫生填埋" <c:if test="${itemSewage.wncl_fangshi=='卫生填埋'}">selected</c:if>>卫生填埋</OPTION>
					<OPTION value="建筑材料" <c:if test="${itemSewage.wncl_fangshi=='建筑材料'}">selected</c:if>>建筑材料</OPTION>
					<OPTION value="投海" <c:if test="${itemSewage.wncl_fangshi=='投海'}">selected</c:if>>投海</OPTION>
					<OPTION value="其它" <c:if test="${itemSewage.wncl_fangshi=='其它'}">selected</c:if>>其它</OPTION>
				</SELECT>
			</TD>
		</TR>
		<TR>
			<TD class="myInputTitle">
				备注
			</TD>
			<TD colSpan=3>
				<TEXTAREA id="remark" rows=3 name="remark" style="width:88%">${itemSewage.remark}</TEXTAREA>
			</TD>
		</TR>
		<TR>
			<TD style="height:40px" colSpan=4 align=center>
				<INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button>
				&nbsp; &nbsp;
				<INPUT name=reset value="   重   置   " type=reset>
			</TD>
		</TR>
</TABLE>
</FORM>
<script language="JavaScript">
<c:if test="${info=='success'}">
alert("操作成功！");
</c:if>
 SetGyFangshi();
</script>
</body>
</html>
