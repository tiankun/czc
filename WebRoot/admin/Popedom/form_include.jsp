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
		<td width="20%" class="myInputTitle">Ȩ���� &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="name" name="name" maxlength="25" dataType="Require" value="${popedom.name}"/>
		</td>
		<td width="20%" class="myInputTitle">����·�� &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="path" name="path" maxlength="50" dataType="" value="${popedom.path}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">���ڵ� &nbsp;</td>	
	  <td width="30%">
		<select name="father">
		  <option value="0">����Ŀ¼</option>
	<c:forEach items="${fatherList}" var="fathers">
          <option value="${fathers.id}" <c:if test="${popedom.father==fathers.id}">selected</c:if>>${fathers.name}</option>
    </c:forEach>
    </select>
	    </select>
		</td>
		<td width="20%" class="myInputTitle">Ŀ�� &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="target" name="target" maxlength="5" dataType="" value="${popedom.target}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">Ȩ������ &nbsp;</td>	
	  <td width="30%">
		<select name="type">
		  <option value="1" <c:if test="${popedom.type==1}">selected</c:if>>Ȩ��+�˵�</option>
		  <option value="2" <c:if test="${popedom.type==2}">selected</c:if>>Ȩ��</option>
		  <option value="3" <c:if test="${popedom.type==3}">selected</c:if>>�˵�</option>
	    </select>
		</td>
		<td width="20%" class="myInputTitle">�Ƿ���Ҫ��֤ &nbsp;</td>	
	  <td width="30%">
		<select name="check_up">
		  <option value="true" <c:if test="${popedom.check_up=='true'}">selected</c:if>>��</option>
		  <option value="false" <c:if test="${popedom.check_up=='false'}">selected</c:if>>��</option>
	    </select>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">��ע &nbsp;</td>	
		<td width="80%" colspan="3">
		<input type="text" Id="remark" name="remark" maxlength="100" dataType="" value="${popedom.remark}"/>
		</td>
	</tr>
