<%@ page contentType="text/html;charset=GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/default.css">
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" language="javascript">
function mySubmit() {
	if (Validator.Validate(document.form1, 3)) {
		document.form1.submit();
	}
}
</script>
<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
</head>
<body>
<%@ include file="../top.jsp" %>
<form method="post" name="form1" action="${pageContext.request.contextPath}/item/Item_build!save.do" style="margin:0px">
<input type="hidden" name="area" id="area" value="${user.guan_li}"/>
<input type="hidden" name="id" id="id" value="${itemBuild.id}"/>
<input type="hidden" name="type" id="type" value="3"/>
	<table class="myInput" border="1" width="100%">
			<tr>
				<td colspan="4" align="center" class="myInputTitle">
					<strong>垃圾处理项目建设情况</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle" width="15%">
					<strong>项目名称:</strong>
				</td>
				<td colspan="3">
					<input type="text" id="name" name="name" value="${itemBuild.name}"
						msg="必填" datatype="Require">
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle" width="15%">
					<strong>建设地点:</strong>
				</td>
				<td colspan="3">
					<input type="text" id="dizhi" name="dizhi" value="${itemBuild.dizhi}">
				</td>
			</tr>
			<tr>
				<td width="15%" align="center" class="myInputTitle">
					<strong>工程质量监督单位:</strong>
				</td>
				<td width="35%">
					<input type="text" id="jiandu" name="jiandu" value="${itemBuild.jiandu}">
				</td>
				<td width="15%" align="center" class="myInputTitle">
					<strong>建设性质:</strong>
				</td>
				<td width="35%">
					<select id="xiangzhi" name="xiangzhi">
						<option value="新建" <c:if test="${itemBuild.xiangzhi=='新建'}">selected</c:if>>新建</option>
						<option value="改建" <c:if test="${itemBuild.xiangzhi=='改建'}">selected</c:if>>改建</option>
						<option value="扩建" <c:if test="${itemBuild.xiangzhi=='扩建'}">selected</c:if>>扩建</option>
					</select>
				</td>
			 </tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>垃圾处理厂及中转站建设运营模式:</strong>
				</td>
				<td>
					<select id="chang_mo" name="chang_mo">
						<option value="BOT" <c:if test="${itemBuild.chang_mo=='BOT'}">selected</c:if>>BOT</option>
						<option value="BT" <c:if test="${itemBuild.chang_mo=='BT'}">selected</c:if>>BT</option>
						<option value="TOT" <c:if test="${itemBuild.chang_mo=='TOT'}">selected</c:if>>TOT</option>
						<option value="托管" <c:if test="${itemBuild.chang_mo=='托管'}">selected</c:if>>托管</option>
						<option value="其他" <c:if test="${itemBuild.chang_mo=='其他'}">selected</c:if>>其他</option>
					</select>
				</td>
				<td align="center" class="myInputTitle">
					<strong>收运系统建设运营模式:</strong>
				</td>
				<td>
					<select id="guan_mo" name="guan_mo">
						<option value="BOT" <c:if test="${itemBuild.guan_mo=='BOT'}">selected</c:if>>BOT</option>
						<option value="BT" <c:if test="${itemBuild.guan_mo=='BT'}">selected</c:if>>BT</option>
						<option value="TOT" <c:if test="${itemBuild.guan_mo=='TOT'}">selected</c:if>>TOT</option>
						<option value="托管" <c:if test="${itemBuild.guan_mo=='托管'}">selected</c:if>>托管</option>
						<option value="其他" <c:if test="${itemBuild.guan_mo=='其他'}">selected</c:if>>其他</option>
					</select>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>其他建设内容</strong>
				</td>
				<td colspan="3">
					<input type="text" id="qita_neirong" name="qita_neirong" value="${itemBuild.qita_neirong}">
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center" class="myInputTitle">
					<strong>项目资金筹措计划构成情况</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>项目计划投资（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>
					<input type="text" id="yu_touzi" name="yu_touzi" require="false" dataType="Double" value="${itemBuild.yu_touzi}">
				</td>
				<td colspan="2"></td>
			</tr>			
			<tr>
				<td align="center" class="myInputTitle">
					<strong>垃圾处理厂及中转站计划投资（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>
					<input type="text" id="chang_touzi" name="chang_touzi" require="false" dataType="Double" value="${itemBuild.chang_touzi}">
				</td>			
				<td align="center" class="myInputTitle">
					<strong>收运系统计划投资（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>
					<input type="text" id="wang_touzi" name="wang_touzi" require="false" dataType="Double" value="${itemBuild.wang_touzi}">
				</td>
			</tr>
			<tr>
				<td colspan="4" class="myInputTitle">
					<strong>其中：</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>国家财政（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>
					<input type="text" id="guo_cai" name="guo_cai" require="false" dataType="Double" value="${itemBuild.guo_cai}">
				</td>
				<td align="center" class="myInputTitle">
					<strong>省级财政（<span class="STYLE1">万元</span>）:</strong>
				</td>
				<td>
					<input type="text" id="sheng_cai" name="sheng_cai" require="false" dataType="Double" value="${itemBuild.sheng_cai}">
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>地方财政（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>
					<input type="text" id="difang_cai" name="difang_cai" require="false" dataType="Double" value="${itemBuild.difang_cai}">
				</td>
				<td align="center" class="myInputTitle">
					<strong>其他（<span class="STYLE1">万元</span>）:</strong>
				</td>
				<td>
					<input type="text" id="qiata_cai" name="qiata_cai" require="false" dataType="Double" value="${itemBuild.qiata_cai}">
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center" class="myInputTitle">
					<strong>项目建设阶段相关信息</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>可研编制单位</strong>
				</td>
				<td>
					<input type="text" id="keyan_unit" name="keyan_unit" value="${itemBuild.keyan_unit}">
				</td>
				<td align="center" class="myInputTitle">
					<strong>可研批复单位及文号</strong>
				</td>
				<td>
					<input type="text" id="keyan_hao" name="keyan_hao"
						value="${itemBuild.keyan_hao}">
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>初设编制单位</strong>
				</td>
				<td>
					<input type="text" id="chushe_unit" name="chushe_unit" value="${itemBuild.chushe_unit}">
				</td>
				<td align="center" class="myInputTitle">
					<strong>初设批复文号</strong>
				</td>
				<td>
					<input type="text" id="chushe_hao" name="chushe_hao" value="${itemBuild.chushe_hao}">
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>施工图编制单位</strong>
				</td>
				<td>
					<input type="text" id="tu_bianzhi" name="tu_bianzhi" value="${itemBuild.tu_bianzhi}">
				</td>
				<td align="center" class="myInputTitle">
					<strong>施工图审图单位</strong>
				</td>
				<td>
					<input type="text" id="tu_shencha" name="tu_shencha" value="${itemBuild.tu_shencha}">
				</td>
			</tr>
			<TR>
				<td align="center" class="myInputTitle">
					<strong>项目施工单位</strong>
				</td>
				<td>
					<input type="text" id="shigong_unit" name="shigong_unit" value="${itemBuild.shigong_unit}" />
				</td>
				<td align="center" class="myInputTitle">
						<strong>施工监理单位</strong>
				</td>
				<td>
					<input type="text" id="jianli_unit" name="jianli_unit"
						value="${itemBuild.jianli_unit}" />
				</td>
			</TR>
			<TR>
				<td align="center" class="myInputTitle">
					<strong>实际开工时间</strong>
				</td>
				<td>
					<input type="text" style="WIDTH: 57%" id="kaishi" class="Wdate"
						onclick="WdatePicker()" name="kaishi" value="${itemBuild.kaishi}" />
				</td>
				<td align="center" class="myInputTitle">
					<strong>实际竣工时间</strong>
				</td>
				<td>
					<input type="text" style="WIDTH: 57%" id="jiesu" class="Wdate"
						onclick="WdatePicker()" name="jiesu" value="${itemBuild.jiesu}" />
				</td>
			</TR>
			<TR>
				<td align="center" class="myInputTitle">
					<strong>施工许可证文号</strong>
				</td>
				<td>
					<input type="text" id="shigong_hao" name="shigong_hao" value="${itemBuild.shigong_hao}" />
				</td>
				<td align="center" class="myInputTitle">
					<strong>项目竣工验收备案文号</strong>
				</td>
				<td>
					<input type="text" id="jungong_hao" name="jungong_hao" value="${itemBuild.jungong_hao}"/>
				</td>
			</TR>
			<TR>
				<td align="center" class="myInputTitle">
					<strong>项目结算投资（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>
					<input type="text" id="js_touzi" name="js_touzi" require="false" dataType="Double" value="${itemBuild.js_touzi}" />
				</td>
				<td colspan="2"></td>
			</TR>
	</table>		
	<table class="myInput" border="1" width="100%">		
			<tr>
				<td colspan="6" align="center" class="myInputTitle">
					<strong>业主单位及相关责任人</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle" width="10%">
					<strong>项目业主单位</strong>
				</td>
				<td colspan="5">
					<input type="text" id="yezhu" name="yezhu" value="${itemBuild.yezhu}">
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle" width="10%">
					<strong>法定代表人</strong>
				</td>
				<td width="15%">
					<input type="text" id="yz_faren" name="yz_faren" value="${itemBuild.yz_faren}">
				</td>
				<td align="center" class="myInputTitle" width="10%">
					<strong>单位性质</strong>
				</td>
				<td width="15%">
					<select id="yz_xingzhi" name="yz_xingzhi">
						<option value="国有" <c:if test="${itemBuild.xiangzhi=='国有'}">selected</c:if>>国有</option>
						<option value="民营" <c:if test="${itemBuild.xiangzhi=='民营'}">selected</c:if>>民营</option>
						<option value="独资" <c:if test="${itemBuild.xiangzhi=='独资'}">selected</c:if>>独资</option>
						<option value="其他" <c:if test="${itemBuild.yz_xingzhi=='其他'}">selected</c:if>>其他</option>
						<option value="合资" <c:if test="${itemBuild.yz_xingzhi=='合资'}">selected</c:if>>合资</option>
						<option value="私营" <c:if test="${itemBuild.yz_xingzhi=='私营'}">selected</c:if>>私营</option>
						<option value="集体" <c:if test="${itemBuild.yz_xingzhi=='集体'}">selected</c:if>>集体</option>
						<option value="合作" <c:if test="${itemBuild.yz_xingzhi=='合作'}">selected</c:if>>合作</option>
						<option value="报关" <c:if test="${itemBuild.yz_xingzhi=='报关'}">selected</c:if>>报关</option>
					</select>
				</td>
				<td align="center" class="myInputTitle" width="10%">
					<strong>单位联系电话</strong>
				</td>
				<td width="15%">
					<input type="text" id="yz_dianhua" name="yz_dianhua" value="${itemBuild.yz_dianhua}">
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>项目负责人</strong>
				</td>
				<td>
					<input type="text" id="fuze" name="fuze" value="${itemBuild.fuze}">
				</td>
				<td align="center" class="myInputTitle">
					<strong>职务</strong>
				</td>
				<td>
					<input type="text" id="fuze_zhiwu" name="fuze_zhiwu" value="${itemBuild.fuze_zhiwu}">
				</td>
				<td align="center" class="myInputTitle">
					<strong>联系电话</strong>
				</td>
				<td>
					<input type="text" id="fuze_dianhua" name="fuze_dianhua"
						value="${itemBuild.fuze_dianhua}">
				</td>
			</tr>
			<tr>
				<td height="30" colspan="6" align="center">
					<input onClick="return mySubmit();" name="button" value="   提   交   " type="button">
					&nbsp; &nbsp;
					<input name="reset" value="   重   置   " type="reset">
				</td>
			</tr>
	</table>
</form>
<c:if test="${info=='success'}">
<script language="JavaScript">
alert("操作成功！");
</script>
</c:if>
</body>
</html>