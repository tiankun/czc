<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
<head>
<style type="text/css">
 .title {
	font-size: 28px;
	font-weight: bold;
	background-color:#EFF6FE;
	text-align:center;
}
 </style>
</head>
<body>
<%@ include file="/archive/top.jsp" %>
<form action="${pageContext.request.contextPath}/archive/Zrc_ghys!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${zrc_ghys.id}"/>
	<table  border="1" width="100%" class="myInput">
	<input type="hidden" Id="biao_shi" name="biao_shi" value="${biao_shi}"/>
	<input type="hidden" Id="flag" name="flag" value="${flag}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<input type="hidden" Id="length" name="length" value="${length}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${zrc_ghys.unit_id}"/>
	<input type="hidden" Id="year" name="year" value="${zrc_ghys.year}"/>
	<input type="hidden" Id="ys_shijian" name="ys_shijian" value="${zrc_ghys.ys_shijian}"/>
	<input type="hidden" Id="ys_ren" name="ys_ren" value="${zrc_ghys.ys_ren}"/>
	<input type="hidden" Id="qz_zhuanjia" name="ys_shijian" value="${zrc_ghys.qz_zhuanjia}"/>
	<input type="hidden" Id="remark" name="remark" value="${zrc_ghys.remark}"/>
	<input type="hidden" Id="user_length" name="user_length" value="${user_length}"/>
  <tr>
    <td class="title" colspan="8">��Ȼ���ׯ�滮�������ֱ�</td>
  </tr>
  <tr>
    <td colspan="3" align="center" class="myInputTitle"><strong>���ձ�׼</strong></td>
    <td align="center" class="myInputTitle"><strong>��׼��</strong></td>
    <td align="center" class="myInputTitle"><strong>���յ÷�</strong></td>
	<c:if test="${user_length<2}">
      <td align="center" class="myInputTitle"><strong>�ݼ�����</strong></td>
	</c:if>
    <td align="center" class="myInputTitle"><strong>�ؼ�����</strong></td>
    <td align="center" class="myInputTitle"><strong>���ձ�׼</strong></td>
  </tr>
  <tr>
    <td rowspan="13" align="center" width="13%"><p align="center">�滮�ɹ����� </p>
    ��60�֣�</td>
    <td rowspan="4" align="center" width="13%">��Ȼ����״����ͼ</td>
    <td align="center" width="20%">������Ϊ1:500~1:3000</td>
    <td align="center" width="6%">4</td>
    <td width="12%" align="center">${zrc_ghys.yuan_blili}</td>
    <c:if test="${user_length<2}">
        <td width="6%" align="center">${zrc_ghys_zhou.yuan_blili}</td>
    </c:if>
    <td width="6%" align="center">${zrc_ghys_xian.yuan_blili}</td>
    <td rowspan="13" align="center" width="30%"><p align="center">���ֱ�׼�� <br />
      5��4���֣�����������ͼֽ�ϱ��������˵���������������淶׼ȷ�� <br />
      3��2���֣�����������ͼֽ�ϱ��Ƿ������˵��������Ƿ�����淶�� <br />
    0�֣�����������ͼֽ��δ��� </p></td>
  </tr>
  <tr>
    <td align="center">����������״</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.jz_xianzhuang}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jz_xianzhuang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jz_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center">��·������״</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.jt_xianzhuang}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jt_xianzhuang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jt_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center">������ʩ�͹���������ʩ��״</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.jc_gg_xz}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jc_gg_xz}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jc_gg_xz}</td>
  </tr>
  <tr>
    <td rowspan="5" align="center">��Ȼ�彨��滮ͼ</td>
    <td align="center">������Ϊ1:500~1:3000</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.xian_bili}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_bili}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_bili}</td>
  </tr>
  <tr>
    <td align="center">�����õؽ���</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.yd_jiexian}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.yd_jiexian}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.yd_jiexian}</td>
  </tr>
  <tr>
    <td align="center">��·���򡢺���λ�á�����棬ͣ����λ��</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.dl_zuxiang}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.dl_zuxiang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.dl_zuxiang}</td>
  </tr>
  <tr>
    <td align="center">�̵�λ�ú͹�����ռ侰���������</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.ld_weizhi}</td>
   <c:if test="${user_length<2}">
         <td align="center">${zrc_ghys_zhou.ld_weizhi}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.ld_weizhi}</td>
  </tr>
  <tr>
    <td align="center">��������������ʩ������������Ҫ���Ƶ��� </td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.sz_yongdi}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.sz_yongdi}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.sz_yongdi}</td>
  </tr>
  <tr>
    <td rowspan="3" align="center">ס����������ͼ</td>
    <td align="center">��ƽ�沼�ã�Ժ�䲼�֡�������ϵȣ�</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.zf_pingmian}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_pingmian}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_pingmian}</td>
  </tr>
  <tr>
    <td align="center">����ƽ����ͼ</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.zf_pingli}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_pingli}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_pingli}</td>
  </tr>
  <tr>
    <td align="center">��ɫЧ��ͼ</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.zf_caise}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_caise}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_caise}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">˵����</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.shuoming}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.shuoming}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.shuoming}</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="5" align="center"><p align="center">�滮�ɹ����� </p>
    ��15�֣�</td>
    <td align="center">���������������������ͨ��</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.jing_tong}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jing_tong}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jing_tong}</td>
    <td rowspan="5" align="center"><p align="center">���ֱ�׼�� <br />
      3�֣���ɸ����������� </p>
    0�֣�δ��ɸ�����������</td>
  </tr>
  <tr>
    <td align="center">����ίԱ�����</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.xiang_shen}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xiang_shen}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xiang_shen}</td>
  </tr>
  <tr>
    <td align="center">�磨��������������</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.xian_shen}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_shen}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_shen}</td>
  </tr>
  <tr>
    <td align="center">�滮�ɹ��������</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.yj_zhengji}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.yj_zhengji}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.yj_zhengji}</td>
  </tr>
  <tr>
    <td align="center">�滮�ɹ���ʾ���ƽ�</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.cheng_guo}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.cheng_guo}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.cheng_guo}</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2" align="center"><p align="center">�滮�ɹ����� </p>
    ��10�֣�</td>
    <td align="center">�滮�ɹ���Ҫ���ϱ����ܲ���</td>
    <td align="center">2</td>
    <td align="center">${zrc_ghys.cg_shangbao}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.cg_shangbao}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.cg_shangbao}</td>
    <td rowspan="2" align="center"><p align="center">���ֱ�׼�� 8��2���֣���ɸ�������� </p>
    0�֣�δ��ɸ��������</td>
  </tr>
  <tr>
    <td align="center">�滮�ɹ�ʵ�е���������</td>
    <td align="center">8</td>
    <td align="center">${zrc_ghys.cg_guidang}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.cg_guidang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.cg_guidang}</td>
  </tr>
  <tr>
    <td rowspan="3" align="center"><p align="center">�滮���Ʋ����ʽ� </p>
    ��10�֣�</td>
    <td rowspan="2" align="center">�滮���Ʋ����ʽ�Ͷ��</td>
    <td align="center">�ݣ��У��������ʽ�Ͷ��</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.zs_buzhu}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zs_buzhu}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zs_buzhu}</td>
    <td rowspan="3" align="center">���ֱ�׼�� <br />
      �����ʽ�Ͷ�룺
      4�֣������ݣ��У������У�����������1000Ԫ <br />
      0�֣�δ���涨��Ŀ�����ʽ�����  <br />
     �����ʽ�ʹ�ã�
    2�֣��ʽ�ʹ��  ���Ϲ涨����Ŀ֧����Ԥ�����  <br />
    0�֣��ʽ�ʹ��Υ�棬��Ŀ֧����Ԥ�㲻��</td>
  </tr>
  <tr>
    <td align="center">�أ��С������������ʽ�Ͷ��</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.xian_buzhu}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_buzhu}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_buzhu}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">�滮���Ʋ����ʽ�ʹ��</td>
    <td align="center">2</td>
    <td align="center">${zrc_ghys.gh_bzshiyong}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.gh_bzshiyong}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.gh_bzshiyong}</td>
  </tr>
  <tr>
    <td colspan="3" align="center">�� ����</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.jiangli}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jiangli}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jiangli}</td>
    <td rowspan="2" align="center">��������:${zrc_ghys.beizhu}</td>
  </tr>
  <tr>
    <td colspan="3" align="center">�ܵ÷�</td>
    <td colspan="2" align="center">${zrc_ghys.zong}</td>
    <c:if test="${user_length<2}">
	<td align="center">${zrc_ghys_zhou.zong}</td>
    </c:if>
	<td align="center">${zrc_ghys_xian.zong}</td>
	</tr>
     <tr>	
		<td colspan="8" align="center" style="height: 30px">
	      <input type="submit" value=" �� �� "/>	    </td>	
	</tr>
</table>

</form>
</body>
</html>