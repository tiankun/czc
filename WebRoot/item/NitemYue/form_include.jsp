<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
	<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
	<input type="hidden" Id="id" name="id" value="${nitem_yue.id}"/>
	<input type="hidden" Id="type" name="type" value="${type}"/>
	<input type="hidden" Id="item_id" name="item_id" value="${item_id}"/>
	<input type="hidden" Id="create_date" name="create_date" value="${nitem_yue.create_date}"/>
	<input type="hidden" Id="statu" name="statu" value="${nitem_yue.statu}"/>
<table border="1" width="100%" class="myInput">
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>月报基本信息</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目名称</td>	
		<td width="35%">${nitem_yue.name}
		</td>
		<td width="15%" class="myInputTitle">项目编号</td>	
		<td width="35%">
		${nitem_yue.num}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目建设进度</td>	
		<td width="35%">
			<select id="jindu" name="jindu" style="width: 150px;">
				<option value="方案论证" <c:if test="${nitem_yue.jindu=='方案论证'}">selected</c:if>>方案论证</option>
				<option value="可研批复" <c:if test="${nitem_yue.jindu=='可研批复'}">selected</c:if>>可研批复</option>
				<option value="初步设计" <c:if test="${nitem_yue.jindu=='初步设计'}">selected</c:if>>初步设计</option>
				<option value="施工图设计" <c:if test="${nitem_yue.jindu=='施工图设计'}">selected</c:if>>施工图设计</option>
				<option value="三通一平" <c:if test="${nitem_yue.jindu=='三通一平'}">selected</c:if>>三通一平</option>
				<option value="基础工程" <c:if test="${nitem_yue.jindu=='基础工程'}">selected</c:if>>基础工程</option>
				<option value="构筑物浇筑" <c:if test="${nitem_yue.jindu=='构筑物浇筑'}">selected</c:if>>构筑物浇筑</option>
				<option value="土建完工" <c:if test="${nitem_yue.jindu=='土建完工'}">selected</c:if>>土建完工</option>
				<option value="设备安装" <c:if test="${nitem_yue.jindu=='设备安装'}">selected</c:if>>设备安装</option>
				<option value="单机调试" <c:if test="${nitem_yue.jindu=='单机调试'}">selected</c:if>>单机调试</option>
				<option value="联合试车" <c:if test="${nitem_yue.jindu=='联合试车'}">selected</c:if>>联合试车</option>
			</select>
		</td>
		<td width="15%" class="myInputTitle">月报时间</td>	
		<td width="35%" colspan="3">
			<select id="year" name="year" style="width: 100px;">
				<option value="2014" <c:if test="${nitem_yue.year=='2014'}">selected</c:if>>2014</option>
				<option value="2015" <c:if test="${nitem_yue.year=='2015'}">selected</c:if>>2015</option>
				<option value="2016" <c:if test="${nitem_yue.year=='2016'}">selected</c:if>>2016</option>
				<option value="2017" <c:if test="${nitem_yue.year=='2017'}">selected</c:if>>2017</option>
				<option value="2018" <c:if test="${nitem_yue.year=='2018'}">selected</c:if>>2018</option>
			</select>-
			<select id="month" name="month" style="width: 100px;">
				<option value="01" <c:if test="${nitem_yue.month=='01'}">selected</c:if>>01</option>
				<option value="02" <c:if test="${nitem_yue.month=='02'}">selected</c:if>>02</option>
				<option value="03" <c:if test="${nitem_yue.month=='03'}">selected</c:if>>03</option>
				<option value="04" <c:if test="${nitem_yue.month=='04'}">selected</c:if>>04</option>
				<option value="05" <c:if test="${nitem_yue.month=='05'}">selected</c:if>>05</option>
				<option value="06" <c:if test="${nitem_yue.month=='06'}">selected</c:if>>06</option>
				<option value="07" <c:if test="${nitem_yue.month=='07'}">selected</c:if>>07</option>
				<option value="08" <c:if test="${nitem_yue.month=='08'}">selected</c:if>>08</option>
				<option value="09" <c:if test="${nitem_yue.month=='09'}">selected</c:if>>09</option>
				<option value="10" <c:if test="${nitem_yue.month=='10'}">selected</c:if>>10</option>
				<option value="11" <c:if test="${nitem_yue.month=='11'}">selected</c:if>>11</option>
				<option value="12" <c:if test="${nitem_yue.month=='12'}">selected</c:if>>12</option>
			</select>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>上传图片</strong></td>	
		<td colspan="3">
		<input type="file" name="uploadify" id="uploadify"/><font color="red"><strong>至少上传两张照片（1张全景照片，1张局部特写照片）</strong></font><br/>
		<table width="100%" border="1">
		<tr><td><label id="sf">
		<c:forEach items="${pics}" var="pic" varStatus="i">
		<div style="float:left;width:480px" id="div${2000+i.index}"><table width="100%" border="1"><tr><td width="400px">
		<input type="hidden" name="pic" value="${pic.path}"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic.path}" target="_blank">
		<img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic.path}" border=0/></a></td><td rowspan="2" align="center">
		<a href="javascript:mydel(div${2000+i.index})">删除</a></td></tr>
		<tr><td>类型：<select name="pic_type" style="width:75px"><option value="全景照" <c:if test="${pic.pic_type=='全景照'}">selected</c:if>>全景照</option><option value="局部特写" <c:if test="${pic.pic_type=='局部特写'}">selected</c:if>>局部特写</option></select>说明：<input type="text" name="remark" style="width:230px" value="${pic.remark}"/></td></tr></table></div>
		</c:forEach>
		</label></td></tr> 
		</table>		
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">本月度实际到位资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="dao_zijin" name="dao_zijin" maxlength="22" require="false" dataType="Double" value="${nitem_yue.dao_zijin}" style="width: 200px;"/>
		</td>
	</tr>
	    <tr>
	        <td colspan="4" class="myInputTitle"><strong>其中：</strong></td>
	    </tr>
	<tr>
		<td width="15%" class="myInputTitle">国家资金补助（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="zhong_zijin" name="zhong_zijin" maxlength="22" require="false" dataType="Double" value="${nitem_yue.zhong_zijin}" style="width: 200px"/>
		</td>
		<td width="15%" class="myInputTitle">到位时间</td>	
		<td width="35%">
		<input type="text" Id="zhong_date" name="zhong_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_yue.zhong_date}" style="width: 200px"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">省级资金补助（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="sheng_zijin" name="sheng_zijin" maxlength="22" require="false" dataType="Double" value="${nitem_yue.sheng_zijin}" style="width: 200px"/>
		</td>
		<td width="15%" class="myInputTitle">到位时间</td>	
		<td width="35%">
		<input type="text" Id="sheng_date" name="sheng_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_yue.sheng_date}" style="width: 200px"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">州市资金补助（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="shi_zijin" name="shi_zijin" maxlength="22" require="false" dataType="Double" value="${nitem_yue.shi_zijin}" style="width: 200px"/>
		</td>
		<td width="15%" class="myInputTitle">到位时间</td>	
		<td width="35%">
		<input type="text" Id="shi_date" name="shi_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_yue.shi_date}" style="width: 200px"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">县级资金补助（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="xian_zijin" name="xian_zijin" maxlength="22" require="false" dataType="Double" value="${nitem_yue.xian_zijin}" style="width: 200px"/>
		</td>
		<td width="15%" class="myInputTitle">到位时间</td>	
		<td width="35%">
		<input type="text" Id="xian_date" name="xian_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_yue.xian_date}" style="width: 200px"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">自筹资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="zi_zijin" name="zi_zijin" maxlength="22" require="false" dataType="Double" value="${nitem_yue.zi_zijin}" style="width: 200px"/>
		</td>
		<td width="15%" class="myInputTitle">到位时间</td>	
		<td width="35%">
		<input type="text" Id="zi_date" name="zi_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_yue.zi_date}" style="width: 200px"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">本月度管网增加长度（<span class="STYLE1">公里</span>）</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="zeng_guan" name="zeng_guan" maxlength="22" require="false" dataType="Double" value="${nitem_yue.zeng_guan}" style="width: 200px"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">存在主要问题</td>	
		<td width="35%" colspan="3">
		<textarea Id="wenti" name="wenti" style="width: 90%;">${nitem_yue.wenti}</textarea>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">建议意见</td>	
		<td width="35%" colspan="3">
		<textarea Id="yijian" name="yijian" style="width: 90%;">${nitem_yue.yijian}</textarea>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">下月建设计划</td>	
		<td width="35%" colspan="3">
		<textarea Id="plan" name="plan" style="width: 90%;">${nitem_yue.plan}</textarea>
		</td>
	</tr>
	<!-- 
	<tr>
		<td width="15%" class="myInputTitle">状态</td>	
		<td width="35%">
		<input type="text" Id="statu" name="statu" maxlength="25" dataType="Require" value="${nitem_yue.statu}"/>
		</td>
     <tr>
      -->	
		<td colspan="4" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=${type}&item_id=${item_id}'"/>
	    </td>	
	</tr>
</table>