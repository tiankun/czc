<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />   
 <script language="JavaScript" >
 //查询
 function mySubmit(){
	 var biao_shi = parent.document.getElementById("biao_shi").value;
	 document.form1.action="${pageContext.request.contextPath}/item/Nitem_rubbish!list.do?biao_shi="+biao_shi+"";
     document.form1.submit();
 }
 //删除
 function del(id){
	 var biao_shi = parent.document.getElementById("biao_shi").value;
	 if(confirm('确定删除吗？')){
	   window.location="${pageContext.request.contextPath}/item/Nitem_rubbish!delete.do?id="+id+"&biao_shi="+biao_shi+"";
	 }
 }
 </script>   
</head>

<body>
<form action="${pageContext.request.contextPath}/item/Nitem_rubbish!list.do" method="post" name="form1">
     <table border="1" width="100%" class="myInput">
         <tr>
            <td class="myInputTitle" width="10%">项目名称</td>
            <td width="20%">
                <input type="text" Id="name" name="name" maxlength="500" dataType="Require" value="${searchMap.name}" />
            </td>
            <td class="myInputTitle" width="10%">建设性质</td>
            <td width="20%">
			   <select id="xingzhi" name="xingzhi" style="width: 100px;" >
				  <option value="" <c:if test="${searchMap.xingzhi=='未选择'}">selected</c:if>>未选择</option>
				  <option value="新建" <c:if test="${searchMap.xingzhi=='新建'}">selected</c:if>>新建</option>
				  <option value="改建" <c:if test="${searchMap.xingzhi=='改建'}">selected</c:if>>改建</option>
				  <option value="扩建" <c:if test="${searchMap.xingzhi=='扩建'}">selected</c:if>>扩建</option>
			   </select>
			</td>
            <td class="myInputTitle" width="12%">设计规模（<span class="STYLE1">立方米/日</span>）</td>
            <td width="25%">近期：
                <input type="text" Id="clgm_jinqi" name="clgm_jinqi" style="width: 100px;" maxlength="22" require="false" dataType="Double" value="${searchMap.clgm_jinqi}"/>
                                          远期：
                <input type="text" Id="clgm_yuanqi" name="clgm_yuanqi" style="width: 100px;" maxlength="22" require="false" dataType="Double" value="${searchMap.clgm_yuanqi}"/>
            </td>
         </tr>
         <tr>
            <td class="myInputTitle" width="10%">工程开工时间</td>
            <td width="20%">
                <input id="item_begin" name="item_begin" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${searchMap.item_begin}" style="ime-mode:disabled;width: 100px;"/>
                --
                <input id="item_end" name="item_end" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${searchMap.item_end}" style="ime-mode:disabled;width: 100px;"/>
            </td>
            <td class="myInputTitle" width="10%">是否竣工</td>
            <td width="20%">
		                   是<input type="radio" Id="jungong" name="jungong" onclick="allowInput('jungong_date')" value="是" <c:if test="${searchMap.jungong=='是'}">checked</c:if>>
		                   否<input type="radio" Id="jungong" name="jungong" onclick="stopInput('jungong_date')" value="否" <c:if test="${searchMap.jungong=='否'}">checked</c:if>>
			</td>
            <td class="myInputTitle" width="12%">竣工日期</td>
            <td width="25%">
                <input id="jungong_date" name="jungong_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${searchMap.jungong_date}" style="ime-mode:disabled;width: 100px;"/>
                --
                <input id="jungong_end" name="jungong_end" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${searchMap.jungong_end}" style="ime-mode:disabled;width: 100px;"/>
            </td>
         </tr>
         <c:if test="${fn:length(fn:split(user.biao_shi,'_'))==1}">
         <tr>
         	<td class="myInputTitle" width="10%">是否已读</td>
            <td width="20%">
		                   是<input type="radio" Id="biaoshi" name="biaoshi" value="已读" <c:if test="${searchMap.biaoshi=='已读'}">checked</c:if>>
		                   否<input type="radio" Id="biaoshi" name="biaoshi" value="未读" <c:if test="${searchMap.biaoshi=='未读'}">checked</c:if>>
			</td>
			<td class="myInputTitle" width="10%"></td>
            <td width="20%"></td>
            <td class="myInputTitle" width="10%"></td>
            <td width="20%"></td>
         </tr>
         </c:if>
         <tr>
            <td colspan="6" align="center">
                 <input type="button" onClick="return mySubmit();" value=" 查 询 "/>&nbsp;&nbsp;&nbsp;<input type="reset" value=" 重 置 "/>
            </td>
         </tr>
     </table>
<c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/item/Nitem_rubbish!createAdmin.do'"/>
	<!--<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/item/Nitem_rubbish!delete.do','items',document.forms.ec)"/>-->
</c:if>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" filterable="false"
	action="${pageContext.request.contextPath}/item/Nitem_rubbish!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	<!--
		<ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
	-->
		<ec:column property="name" title="项目名称"/>
		<ec:column property="xingzhi" title="建设性质"/>
		<ec:column property="clgm_jinqi" title="设计规模（近期）"/>
		<ec:column property="clgm_yuanqi" title="设计规模（远期）"/>
		<ec:column property="zhong_mo" title="中转站设计规模（吨/日）"/>
		<ec:column property="zong_touzi" title="项目总投资（万元）"/>
		<ec:column property="pi_touzi" title="批复投资（万元）"/>
		<ec:column property="jungong" title="是否竣工"/>
<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==1}">
		<ec:column property="biaoshi" title="标识" width="50px">
			<c:choose>
				<c:when test="${item.biaoshi=='未读'}">
					<font color="red">${item.biaoshi}</font>
				</c:when>
				<c:otherwise>
					<font color="#2ccf00">${item.biaoshi}</font>
				</c:otherwise>
			</c:choose>
		</ec:column> 
		<ec:column property="nianfen" title="项目年份"/> 
</c:if>
		<ec:column property="月份" title="月报情况">
			  <c:choose>
			      <c:when test="${!empty item.year&&!empty item.month}">
			           ${item.year}年${item.month}月
			          <!--  img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">按期完成-->
			      </c:when>
			      <c:otherwise>
			         <font color="red">未填报</font>
			      </c:otherwise>
			  </c:choose>
		</ec:column>
		<ec:column property="jindu" title="月报进度"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/item/Nitem_rubbish!show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;
			<c:if test="${item.guan_li==user.guan_li}">
			<a href="${pageContext.request.contextPath}/item/Nitem_rubbish!edit.do?id=${item.id}&">修改</a>&nbsp;&nbsp;
			<a href="#" onClick="del('${item.id}');">删除</a>&nbsp;&nbsp;
			</c:if>
			<a href="${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=3&item_id=${item.id}">月报</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

