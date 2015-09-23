<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/calendar.js"></script>
<table border="1" width="100%" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>镇（乡）近期建设项目情况基本信息</strong></td>	
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目名称</td>	
		<td colspan="3">
		<input type="text" Id="ming_cheng" name="ming_cheng" maxlength="250" dataType="" value="${zhen_xiangmu.ming_cheng}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目分类</td>	
		<td width="35%">
              <select name="fen_lei"> 
                <option value="居住项目" <c:if test="${zhen_xiangmu.fen_lei=='居住项目'}">selected</c:if>>居住项目</option>
                <option value="市政公用设施项目" <c:if test="${zhen_xiangmu.fen_lei=='市政公用设施项目'}">selected</c:if>>市政公用设施项目</option>
                <option value="工业及仓储项目" <c:if test="${zhen_xiangmu.fen_lei=='工业及仓储项目'}">selected</c:if>>工业及仓储项目</option>
                <option value="道路及广场项目" <c:if test="${zhen_xiangmu.fen_lei=='道路及广场项目'}">selected</c:if>>道路及广场项目</option>
                <option value="公园及绿化项目" <c:if test="${zhen_xiangmu.fen_lei=='公园及绿化项目'}">selected</c:if>>公园及绿化项目</option>
                <option value="工程设施项目" <c:if test="${zhen_xiangmu.fen_lei=='工程设施项目'}">selected</c:if>>工程设施项目</option>
                <option value="其他项目" <c:if test="${zhen_xiangmu.fen_lei=='其他项目'}">selected</c:if>>其他项目</option>
              </select>	
	  </td>		
		<td width="15%" class="myInputTitle">建设性质</td>	
		<td width="35%">
		<input type="text" Id="xing_zhi" name="xing_zhi" maxlength="100" dataType="" value="${zhen_xiangmu.xing_zhi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">建设规模(平方米)</td>	
		<td width="35%">
		<input type="text" Id="gui_mo" name="gui_mo" maxlength="250" dataType="" value="${zhen_xiangmu.gui_mo}"/>
		</td>
		<td width="15%" class="myInputTitle">总投资（万元）</td>	
		<td width="35%">
		<input type="text" Id="zong_touzi" name="zong_touzi" maxlength="22" dataType="Number" value="${zhen_xiangmu.zong_touzi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">建设年限(年)</td>	
		<td width="35%">
		<input type="text" Id="nian_xian" name="nian_xian" maxlength="22" dataType="Number" value="${zhen_xiangmu.nian_xian}"/>
		</td>
		<td width="15%" class="myInputTitle">类别（用途）</td>	
		<td width="35%">
		<input type="text" Id="lei_bie" name="lei_bie" maxlength="50" dataType="" value="${zhen_xiangmu.lei_bie}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">用地规模(平方米)</td>	
		<td width="35%">
		<input type="text" Id="yong_di" name="yong_di" maxlength="22" dataType="Number" value="${zhen_xiangmu.yong_di}"/>
		</td>
		<td width="15%" class="myInputTitle">用地使用年限（年）</td>	
		<td width="35%">
		<input type="text" Id="yongdi_nianxian" name="yongdi_nianxian" maxlength="22" dataType="Number" value="${zhen_xiangmu.yongdi_nianxian}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">新增建设用地规模</td>	
		<td width="35%">
		<input type="text" Id="xinzeng_yongdi" name="xinzeng_yongdi" maxlength="22" dataType="Number" value="${zhen_xiangmu.xinzeng_yongdi}"/>
		</td>
		<td width="15%" class="myInputTitle">添加时间</td>	
		<td width="35%">
		<input class="Wdate" onClick="WdatePicker()" id="input" name="input" dataType="Date" value="${zhen_xiangmu.input}" style="ime-mode:disabled;width:70%"/>
		</td>
	</tr>
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/tese/Zhen_xiangmu!list.do'"/>	
	    </td>	
	</tr>
</table>