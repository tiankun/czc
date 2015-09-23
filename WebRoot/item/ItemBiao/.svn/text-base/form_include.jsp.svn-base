<%@ page contentType="text/html;charset=GBK" %>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
	<input type="hidden" Id="id" name="id" value="${item_biao.id}"/>
	<input type="hidden" Id="item" name="item" value="${item_biao.id==null?item:item_biao.item}"/>	
<TABLE class=myInput border=1 width="100%">
  <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>====项目招投标情况====</STRONG></TD>
  </TR>
  <TR>
    <TD class="myInputTitle">标段</TD>
    <TD><INPUT type="text" id="biao_duan" name="biao_duan" maxLength=50 datatype="Require" value="${item_biao.biao_duan}"></TD>
    <TD width="15%" class="myInputTitle">招标单位</TD>
    <TD width="35%" ><INPUT type="text" id="zb_unit" name="zb_unit" maxLength=250 datatype="" value="${item_biao.zb_unit}"></TD></TR>
  <TR>
    <TD class="myInputTitle">报名日期</TD>
    <TD><INPUT type="text" id="baoming"  name="baoming"  datatype="Date" onClick="WdatePicker()" class="Wdate" require="false" value="${item_biao.baoming}"> </TD>
    <TD width="15%" class="myInputTitle">资审日期</TD>
    <TD width="35%"><INPUT type="text" id="zishen" name="zishen" datatype="Date" onClick="WdatePicker()" class="Wdate" require="false" value="${item_biao.zishen}"> </TD></TR>
  <TR>
    <TD class="myInputTitle">发售日期</TD>
    <TD><INPUT type="text" id="fashou" name="fashou" datatype="Date" onClick="WdatePicker()" class="Wdate" require="false" value="${item_biao.fashou}"> </TD>
    <TD width="15%" class="myInputTitle">开标日期</TD>
    <TD width="35%"><INPUT type="text" id="kaobiao" name="kaobiao" datatype="Date" onClick="WdatePicker()" class="Wdate" require="false" value="${item_biao.kaobiao}"> </TD></TR>
  <TR>
    <TD class="myInputTitle">备案日期</TD>
    <TD><INPUT type="text" id="beian" name="beian" datatype="Date" onClick="WdatePicker()" class="Wdate" require="false" value="${item_biao.beian}"> </TD>
    <TD width="15%" class="myInputTitle">标段金额（<FONT color=#ff0000>万元</FONT>）</TD>
    <TD width="35%"><INPUT type="text" id="biaojia" name="biaojia" maxLength=22 datatype="Double" value="${item_biao.biaojia}"> </TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">招标文号</TD>
    <TD width="35%"><INPUT type="text" id="zhaobiao" name="zhaobiao" maxLength=300 dataType="" value="${item_biao.zhaobiao}"> </TD>
    <TD width="15%" class="myInputTitle">中标公示文号</TD>
    <TD width="35%"><INPUT type="text" id="zb_gongshi" name="zb_gongshi" maxLength=300 datatype="" value="${item_biao.zb_gongshi}"> </TD></TR>
  <TR>
    <TD class="myInputTitle">中标单位</TD>
    <TD><INPUT type="text" id="zb_danwei" name="zb_danwei" maxLength=250 datatype="Require" value="${item_biao.zb_danwei}"></TD>
    <TD class="myInputTitle">监理单位</TD>
    <TD><INPUT type="text" id="zb_jianli" name="zb_jianli" maxLength=250 datatype="" value="${item_biao.zb_jianli}"></TD>
</TR>
  <TR>
    <TD class="myInputTitle">标段内容 </TD>
    <TD colSpan=3><TEXTAREA style="WIDTH: 89%" id="bd_miaoshu" rows=4 name="bd_miaoshu" dataType="Limit" min="10" max="2000" msg="10-2000字描述">${item_biao.bd_miaoshu}</TEXTAREA></TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">备注</TD>
    <TD width="85%" colSpan=3><TEXTAREA style="WIDTH: 89%" id="remark" rows=4 name="remark">${item_biao.remark}</TEXTAREA> 
  </TD></TR>
  <TR>
    <TD height=38 colSpan=4 align=center>
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Item_biao!list.do?item=${item_biao.id==null?item:item_biao.item}'"/>
	</TD>
	</TR>
</table>
