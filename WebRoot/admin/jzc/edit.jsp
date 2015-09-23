<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>    
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/uploadify.css" rel="stylesheet" type="text/css" /> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.uploadify.min.js"></script>     
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/swfobject.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/>      
<script language="JavaScript" type="text/JavaScript">
var size=1024*1024*5;//5M
var info='�ϴ��ļ������Գ�������';//�ļ�������Ϣ
$(document).ready(function(){
$("#uploadify").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp',
'cancelImg': '${pageContext.request.contextPath}/images/cancel.png',
'queueID': 'fileQueue',
'sizeLimit':size,
'auto': true,
'multi': false,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);}else{document.getElementById('myshow').click();}},
'onCancel': function(event,queueId,fileObj,data){tb_remove();},
'onComplete': function(event,queueId,fileObj,response,data){
document.getElementById('sf0').innerHTML='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" Id="cheng_guo" name="cheng_guo" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/'+response+'" target="_blank">�鿴</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel(\'sf0\',\'cheng_guo\')">ɾ��</a>';
tb_remove();}
});
}
);
function mydel(id,hid){
if(confirm('�Ƿ�ȷ��ɾ�����ļ���'))
document.getElementById(id).innerHTML='<input type="hidden" Id="'+hid+'" name="'+hid+'"/>';
}
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>   
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>

<form action="${pageContext.request.contextPath}/admin/JZC!save.do" method="post" name="form1">	
  <table width="100%" border="1" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>������Ϣ</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /></td>
    </tr> 
    <tr>
      <td class="myInputTitle">����ίԱ������</td>
      <td><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td class="myInputTitle">����</td>
      <td><c:if test="${base_info.lei_xing=='����ίԱ��'}">
        <input type="radio" name="lei_xing" value="����ίԱ��" checked="checked"/>
      </c:if>
          <c:if test="${base_info.lei_xing!='����ίԱ��'}">
            <input type="radio" name="lei_xing" value="����ίԱ��"/>
          </c:if>
        ����ίԱ��
  <c:if test="${base_info.lei_xing=='����ίԱ��'}">
    <input type="radio" name="lei_xing" value="����ίԱ��" checked="checked"/>
  </c:if>
  <c:if test="${base_info.lei_xing!='����ίԱ��'}">
    <input type="radio" name="lei_xing" value="����ίԱ��"/>
  </c:if>
        ����ίԱ��</td>
    </tr>
    <tr>
      <td class="myInputTitle">��֧��</td>
      <td><input name="ling_dao" type="text" id="ling_dao" value="${contact.ling_dao}"/></td>
      <td class="myInputTitle">��ϵ��</td>
      <td><input name="lian_xi" type="text" id="lian_xi" value="${contact.lian_xi}"/></td>
    </tr>	
    <tr>
      <td class="myInputTitle">��ϵ�绰</td>
      <td><input name="lianx_dianhua" type="text" id="lianx_dianhua" value="${contact.lianx_dianhua}"/></td>
      <td class="myInputTitle">����</td>
      <td><input name="fax" type="text" id="fax" value="${contact.fax}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">�ʱ�</td>
      <td><input name="you_bian" type="text" id="you_bian" value="${contact.you_bian}"/></td>
      <td class="myInputTitle">E_mail</td>
      <td><input name="email" type="text" id="email" value="${contact.email}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">��ϵ��ַ</td>
      <td colspan="3"><input name="di_zhi" type="text" id="di_zhi" value="${contact.di_zhi}"/></td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>��������</strong></td>
    </tr>  
    <tr>
      <td colspan="4"><textarea name="jie_shao" rows="6" style="width:100%"><c:out value="${base_info.jie_shao}" escapeXml="true"/></textarea></td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>��ᾭ�����</strong>
      <input type="hidden" name="economy_id" value="${economy.id}" /></td>
    </tr>	
    <tr>
      <td class="myInputTitle" width="15%">���˿ڣ�<span class="STYLE1">����</span>��</td>
      <td width="35%"><input name="zong_ren" type="text" id="zong_ren"  value="${economy.zong_ren}"/></td>
      <td class="myInputTitle" width="15%">ũҵ�˿ڣ�<span class="STYLE1">����</span>��</td>
      <td width="35%"><input name="nong" type="text" id="nong" value="${economy.nong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">ũ������<span class="STYLE1">��</span>��</td>
      <td><input name="nong_hu" type="text" id="nong_hu" value="${economy.nong_hu}"/></td>
      <td class="myInputTitle">ũ���Ͷ�����<span class="STYLE1">����</span>��</td>
      <td><input name="lao_dong" type="text" id="lao_dong" value="${economy.lao_dong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">�������<span class="STYLE1">��ƽ������</span>��</td>
      <td><input name="zong_mianj" type="text" id="zong_mianj" value="${economy.zong_mianj}"/></td>
      <td class="myInputTitle">���������<span class="STYLE1">��ƽ������</span>��</td>
      <td><input name="geng_di" type="text" id="geng_di" value="${economy.geng_di}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">ũ�徭�������루<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="jingj_zong" type="text" id="jingj_zong" value="${economy.jingj_zong}"/></td>
      <td class="myInputTitle">ũ���˾������루<span class="STYLE1">Ԫ</span>��</td>
      <td><input name="nongm_jun" type="text" id="nongm_jun" value="${economy.nongm_jun}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">��һ��ҵ��ֵ��<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="yi" type="text" id="yi" value="${economy.yi}"/></td>
      <td class="myInputTitle">�ڶ���ҵ��ֵ��<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="er" type="text" id="er" value="${economy.er}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">������ҵ��ֵ��<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="san" type="text" id="san" value="${economy.san}"/></td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>�滮�������</strong>
      <input type="hidden" name="plan_id" value="${plan.id}" /></td>
    </tr>	
    <tr>
      <td class="myInputTitle">��ׯ�滮�������</td>
      <td><select name="zhuang_kuang" id="zhuang_kuang">
        <option value="��" <c:if test="${plan.zhuang_kuang=='��'}">selected</c:if>>��</option>
        <option value="��" <c:if test="${plan.zhuang_kuang=='��'}">selected</c:if>>��</option>
        <option value="�ڱ�" <c:if test="${plan.zhuang_kuang=='�ڱ�'}">selected</c:if>>�ڱ�</option>
        <option value="����" <c:if test="${plan.zhuang_kuang=='����'}">selected</c:if>>����</option>
      </select>      </td>
      <td class="myInputTitle">�滮����</td>
      <td><input name="begin" type="text" id="begin" value="${plan.begin}" style="width:50px"/>
        ��----<input name="end" type="text" id="end" value="${plan.end}" style="width:50px"/>
		��</td>
    </tr>
    <tr>
      <td class="myInputTitle">�滮���Ƶ�λ</td>
      <td><input name="bian_zhi" type="text" id="bian_zhi" value="${plan.bian_zhi}"/></td>
      <td class="myInputTitle">�滮��������</td>
      <td><input name="shen_pi" type="text" id="shen_pi" value="${plan.shen_pi}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">�滮�ɹ�</td>
      <td colspan="3">
<table width="300px" border="0">
  <tr>
    <td id="sf0" width="200px"><c:if test="${plan.cheng_guo!=null}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/upFile/${plan.cheng_guo}" target="_blank">�鿴</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel('sf0','cheng_guo')">ɾ��</c:if><input type="hidden" Id="cheng_guo" name="cheng_guo" value="${plan.cheng_guo}"/></td>
    <td width="100px" align="center"><input type="file" name="uploadify" id="uploadify"/></td>
  </tr>
</table>
</td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>������ʩ��״</strong>
      <input type="hidden" name="facility_id" value="${facility.id}" /></td>
    </tr>	
    <tr>
      <td rowspan="3" class="myInputTitle">��ˮ��ʩ</td>
      <td rowspan="2"><c:if test="${facility.zilai=='��'}"><input name="zilai" type="radio" value="��" checked/></c:if><c:if test="${facility.zilai!='��'}"><input name="zilai" type="radio" value="��"/></c:if>      
      ��ͨ����ˮ</td>
      <td colspan="2"><c:if test="${facility.zilai_remark=='���Գ��С��س�����ˮ��'}"><input type="radio" name="zilai_remark" value="���Գ��С��س�����ˮ��" checked/></c:if><c:if test="${facility.zilai_remark!='���Գ��С��س�����ˮ��'}"><input type="radio" name="zilai_remark" value="���Գ��С��س�����ˮ��"/></c:if>
        ���Գ��С��س�����ˮ��
<c:if test="${facility.zilai_remark=='������������ˮ��'}"><input type="radio" name="zilai_remark" value="������������ˮ��" checked/></c:if><c:if test="${facility.zilai_remark!='������������ˮ��'}"><input type="radio" name="zilai_remark" value="������������ˮ��"/></c:if>		
        ������������ˮ��</td>
    </tr>
    <tr>
      <td colspan="2"><c:if test="${facility.zilai_remark=='���й�ˮ��ʩ'}"><input type="radio" name="zilai_remark" value="���й�ˮ��ʩ" checked/></c:if><c:if test="${facility.zilai_remark!='���й�ˮ��ʩ'}"><input type="radio" name="zilai_remark" value="���й�ˮ��ʩ"/></c:if>
        ���й�ˮ��ʩ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���й�ˮ��ʩ��ģ<input name="zl_guimo" type="text" id="zl_guimo" style="width:50px" value="${facility.zl_guimo}"/>
        ������/��</td>
    </tr>
    <tr>
      <td colspan="3"><c:if test="${facility.zilai!='��'}"><input type="radio" name="zilai" value="��" checked/></c:if><c:if test="${facility.zilai=='��'}"><input type="radio" name="zilai" value="��"/></c:if>
        δͨ����ˮ</td>
    </tr>
    <tr>
      <td rowspan="3" class="myInputTitle">��ˮ������ʩ</td>
      <td rowspan="2"><c:if test="${facility.ws_qingkuang=='��'}"><input type="radio" name="ws_qingkuang" value="��" checked/></c:if><c:if test="${facility.ws_qingkuang!='��'}"><input type="radio" name="ws_qingkuang" value="��"/></c:if>
      ����ˮ����/�ܵ�        </td>
      <td colspan="2"><c:if test="${facility.ws_remark=='�����С��س���ˮ����'}"><input type="radio" name="ws_remark" value="�����С��س���ˮ����" checked/></c:if><c:if test="${facility.ws_remark!='�����С��س���ˮ����'}"><input type="radio" name="ws_remark" value="�����С��س���ˮ����"/></c:if>
        �����С��س���ˮ����
<c:if test="${facility.ws_remark=='��������ˮ����'}"><input type="radio" name="ws_remark" value="��������ˮ����" checked/></c:if><c:if test="${facility.ws_remark!='��������ˮ����'}"><input type="radio" name="ws_remark" value="��������ˮ����"/></c:if>
        ��������ˮ����
<c:if test="${facility.ws_remark=='�����ŷ�'}"><input type="radio" name="ws_remark" value="�����ŷ�" checked/></c:if><c:if test="${facility.ws_remark!='�����ŷ�'}"><input type="radio" name="ws_remark" value="�����ŷ�"/></c:if>
        �����ŷ�</td>
    </tr>
    <tr>
      <td colspan="2"><c:if test="${facility.ws_remark=='��������ˮ������ʩ'}"><input type="radio" name="ws_remark" value="��������ˮ������ʩ" checked/></c:if><c:if test="${facility.ws_remark!='��������ˮ������ʩ'}"><input type="radio" name="ws_remark" value="��������ˮ������ʩ"/></c:if>
        ��������ˮ������ʩ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������ˮ������ʩ��ģ
        <input name="ws_guimo" type="text" id="ws_guimo" style="width:50px" value="${facility.ws_guimo}"/>
        ������/��</td>
    </tr>
    <tr>
      <td colspan="3"><c:if test="${facility.ws_qingkuang!='��'}"><input type="radio" name="ws_qingkuang" value="��" checked/></c:if><c:if test="${facility.ws_qingkuang=='��'}"><input type="radio" name="ws_qingkuang" value="��"/></c:if>
        ����ˮ����/�ܵ�        </td>
    </tr>
    <tr>
      <td rowspan="3" class="myInputTitle">����������ʩ</td>
      <td rowspan="2"><c:if test="${facility.lj_qingkuang=='��'}"><input type="radio" name="lj_qingkuang" value="��" checked/></c:if><c:if test="${facility.lj_qingkuang!='��'}"><input type="radio" name="lj_qingkuang" value="��" /></c:if>
��ʵ�������ռ�<span class="myInputTitle">��</span>����</td>
      <td colspan="2"><c:if test="${facility.lj_remark=='�����С��س�������������'}"><input type="radio" name="lj_remark" value="�����С��س�������������" checked/></c:if><c:if test="${facility.lj_remark!='�����С��س�������������'}"><input type="radio" name="lj_remark" value="�����С��س�������������"/></c:if>
      �����С��س�������������
<c:if test="${facility.lj_remark=='������������������'}"><input type="radio" name="lj_remark" value="������������������" checked/></c:if><c:if test="${facility.lj_remark!='������������������'}"><input type="radio" name="lj_remark" value="������������������"/></c:if>
        ������������������
<c:if test="${facility.lj_remark=='��������'}"><input type="radio" name="lj_remark" value="��������" checked/></c:if><c:if test="${facility.lj_remark!='��������'}"><input type="radio" name="lj_remark" value="��������"/></c:if>
        ��������</td>
    </tr>
    <tr>
      <td colspan="2"><c:if test="${facility.lj_remark=='��������������������ʩ'}"><input type="radio" name="lj_remark" value="��������������������ʩ" checked/></c:if><c:if test="${facility.lj_remark!='��������������������ʩ'}"><input type="radio" name="lj_remark" value="��������������������ʩ"/></c:if>
        ��������������������ʩ&nbsp;&nbsp;&nbsp;&nbsp;������������������ʩ��ģ
        <input name="lj_guimo" type="text" id="lj_guimo" style="width:50px" value="${facility.lj_guimo}"/>
        ������/��</td>
    </tr>
    <tr>
      <td colspan="3"><c:if test="${facility.lj_qingkuang!='��'}"><input type="radio" name="lj_qingkuang" value="��" checked/></c:if><c:if test="${facility.lj_qingkuang=='��'}"><input type="radio" name="lj_qingkuang" value="��"/></c:if>
        δʵ�������ռ�<span class="myInputTitle">��</span>����</td>
    </tr>		
    <tr>
      <td class="myInputTitle">�Ƿ���ͨ��·</td>
      <td><select name="gong_lu" id="gong_lu">
        <option value="��" <c:if test="${facility.gong_lu=='��'}">selected</c:if>>��</option>
        <option value="��" <c:if test="${facility.gong_lu=='��'}">selected</c:if>>��</option>	
      </select>      </td>
      <td class="myInputTitle">�Ƿ��м�ó�г�</td>
      <td><select name="jm_qingkuang" id="jm_qingkuang">
        <option value="��" <c:if test="${facility.jm_qingkuang=='��'}">selected</c:if>>��</option>
        <option value="��" <c:if test="${facility.jm_qingkuang=='��'}">selected</c:if>>��</option>	
      </select>      </td>
    </tr>			
    <tr>
      <td height="49" colspan="4" align="center"><input type="submit" name="Submit" value=" �� �� " />
        &nbsp;&nbsp;
      <input type="reset" name="Submit2" value=" �� �� " /><input type="hidden" name="unit_id" value="${unit_id}" /><input type="hidden" name="year" value="${year}" /></td>
    </tr>
  </table>
</form>
<input alt="#TB_inline?height=75&width=380&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:380px;height:70px;background:#FFFFEE;"></div>
</div>
</body>

</html>