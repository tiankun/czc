<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%@ page import="java.util.Collection" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%Collection  popedoms=DataBaseControl.getInstance().getOutResultSet("select id,name from t_popedom where father=0 order by id", null);%>
<c:set var="popedoms" value="<%=popedoms%>"/>
<c:set var="fatherList" value="<%=popedoms%>"/>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
	<input type="hidden" Id="id" name="id" value="${popedom.id}"/>
	<tr>
		<td width="20%" class="myInputTitle">权限名 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="name" name="name" maxlength="25" dataType="Require" value="${popedom.name}"/>
		</td>
		<td width="20%" class="myInputTitle">程序路径 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="path" name="path" maxlength="50" dataType="" value="${popedom.path}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">父节点 &nbsp;</td>	
	  <td width="30%">
		<select name="father">
		  <option value="0">顶级目录</option>
	<c:forEach items="${fatherList}" var="fathers">
          <option value="${fathers.id}" <c:if test="${popedom.father==fathers.id}">selected</c:if>>${fathers.name}</option>
    </c:forEach>
    </select>
	    </select>
		</td>
		<td width="20%" class="myInputTitle">目标 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="target" name="target" maxlength="5" dataType="" value="${popedom.target}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">权限类型 &nbsp;</td>	
	  <td width="30%">
		<select name="type">
		  <option value="1" <c:if test="${popedom.type==1}">selected</c:if>>权限+菜单</option>
		  <option value="2" <c:if test="${popedom.type==2}">selected</c:if>>权限</option>
		  <option value="3" <c:if test="${popedom.type==3}">selected</c:if>>菜单</option>
	    </select>
		</td>
		<td width="20%" class="myInputTitle">是否需要验证 &nbsp;</td>	
	  <td width="30%">
		<select name="check_up">
		  <option value="true" <c:if test="${popedom.check_up=='true'}">selected</c:if>>是</option>
		  <option value="false" <c:if test="${popedom.check_up=='false'}">selected</c:if>>否</option>
	    </select>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">备注 &nbsp;</td>	
		<td width="80%" colspan="3">
		<input type="text" Id="remark" name="remark" maxlength="100" dataType="" value="${popedom.remark}"/>
		</td>
	</tr>
