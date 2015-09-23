<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.ztree-2.6.min.js"></script>
<script src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js" type=text/javascript></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/>
<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
	<input type="hidden" Id="id" name="id" value="${fu_ze.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${fu_ze.unit_id}"/>
	<input type="hidden" Id="type" name="type" value="${fu_ze.type}"/>
 <table width="100%" border="1" cellspacing="1" cellpadding="1" class="myInput">
      <tr class="tHead">
        <td align="center" colspan="4"><strong>市政项目信息上报相关责任信息</strong></td>
      </tr>
      <tr>
        <td width="15%" class="myInputTitle">信息员姓名</td>
		<td width="35%"><input type="text" Id="fz_ren" name="fz_ren" dataType="Require" value="${fu_ze.fz_ren}"/></td>
		<td width="15%" class="myInputTitle">分管责任人姓名</td>
		<td width="35%"><input type="text" Id="zr_ren" name="zr_ren" dataType="Require" value="${fu_ze.zr_ren}"/></td>
      </tr>	
      <tr>
        <td class="myInputTitle">信息员单位</td>
		<td><input type="text" Id="fz_danwei" name="fz_danwei" dataType="" value="${fu_ze.fz_danwei}"/></td>
		<td class="myInputTitle">责任人单位</td>
		<td><input type="text" Id="zr_danwei" name="zr_danwei" dataType="" value="${fu_ze.zr_danwei}"/></td>
      </tr>
      <tr>
        <td class="myInputTitle">信息员职务</td>
		<td>
		    <select Id="fz_zhiwu" name="fz_zhiwu">
		       <option value="信息填报员" <c:if test="${fu_ze.fz_zhiwu=='信息填报员'}">selected</c:if>>信息填报员</option>
		       <option value="科（处、股）长" <c:if test="${fu_ze.fz_zhiwu=='科（处、股）长'}">selected</c:if>>科（处、股）长</option>
		       <option value="分管领导" <c:if test="${fu_ze.fz_zhiwu=='分管领导'}">selected</c:if>>分管领导</option>
		    </select>
		</td>
		<td class="myInputTitle">责任人职务</td>
		<td><input type="text" Id="zr_zhiwu" name="zr_zhiwu" dataType="" value="${fu_ze.zr_zhiwu}"/></td>
      </tr>	  
      <tr>
        <td class="myInputTitle">信息员电话（座机）</td>
		<td><input type="text" Id="fz_dianhua" name="fz_dianhua" dataType="Require" value="${fu_ze.fz_dianhua}"/></td>
		<td class="myInputTitle">责任人电话（座机）</td>
		<td><input type="text" Id="zr_dianhua" name="zr_dianhua" dataType="Require" value="${fu_ze.zr_dianhua}"/></td>
      </tr>	  
      <tr>
        <td class="myInputTitle">信息员电话（手机）</td>
		<td><input type="text" Id="fz_phone" name="fz_phone" dataType="Require" value="${fu_ze.fz_phone}"/></td>
		<td class="myInputTitle">责任人电话（手机）</td>
		<td><input type="text" Id="zr_phone" name="zr_phone" dataType="Require" value="${fu_ze.zr_phone}"/></td>
      </tr>	  
      <tr>
        <td class="myInputTitle">信息员邮箱</td>
		<td><input type="text" Id="fz_email" name="fz_email" dataType="Require" value="${fu_ze.fz_email}"/></td>
		<td class="myInputTitle">责任人邮箱</td>
		<td><input type="text" Id="zr_email" name="zr_email" dataType="Require" value="${fu_ze.zr_email}"/></td>
      </tr>	  
      <tr>
        <td class="myInputTitle">信息员QQ号</td>
		<td><input type="text" Id="fz_qq" name="fz_qq" dataType="Require" value="${fu_ze.fz_qq}"/></td>
		<td class="myInputTitle">责任人QQ号</td>
		<td><input type="text" Id="zr_qq" name="zr_qq" dataType="Require" value="${fu_ze.zr_qq}"/></td>
      </tr>
      <tr>
        <td width="15%" class="myInputTitle">信息员填报工作</td>
		<td colspan="3">
             农村危房改造<input type="checkbox" id="fz_work" name="fz_work" value="农村危房改造" dataType="Group"
					<c:if test="${fn:contains(fu_ze.fz_work,';农村危房改造;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
             供水<input type="checkbox" id="fz_work" name="fz_work" value="供水"
					<c:if test="${fn:contains(fu_ze.fz_work,';供水;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
             污水<input type="checkbox" id="fz_work" name="fz_work" value="污水"
					<c:if test="${fn:contains(fu_ze.fz_work,';污水;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
            垃圾<input type="checkbox" id="fz_work" name="fz_work" value="垃圾"
					<c:if test="${fn:contains(fu_ze.fz_work,';垃圾;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
             传统村落<input type="checkbox" id="fz_work" name="fz_work" value="传统村落"
					<c:if test="${fn:contains(fu_ze.fz_work,';传统村落;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
            新型城镇化<input type="checkbox" id="fz_work" name="fz_work" value="新型城镇化"
					<c:if test="${fn:contains(fu_ze.fz_work,';农村危房改造;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
            古树名木古建筑<input type="checkbox" id="fz_work" name="fz_work" value="古树名木古建筑"
					<c:if test="${fn:contains(fu_ze.fz_work,';古树名木古建筑;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
            特色小镇<input type="checkbox" id="fz_work" name="fz_work" value="特色小镇"
					<c:if test="${fn:contains(fu_ze.fz_work,';特色小镇;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
           村镇规划建设<input type="checkbox" id="fz_work" name="fz_work" value="村镇规划建设"
					<c:if test="${fn:contains(fu_ze.fz_work,';村镇规划建设;')}">checked</c:if>>
        </td>
      </tr>	 
      <tr>
        <td width="15%" class="myInputTitle">其它说明</td>
		<td colspan="3"><input type="text" Id="remark" name="remark" dataType="" value="${fu_ze.remark}"/></td>
      </tr>	  	  	  	    		
      <tr>
        <td colspan="4" align="center" valign="middle" style="height:40px"><input type="button" name="Submit" value=" 提 交 " onClick="return mySubmit();"/></td>
      </tr>	  
    </table>