<%@ page contentType="text/html;charset=GBK" %>
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
<form action="${pageContext.request.contextPath}/archive/Xzc_ghys!edit.do" method="post">
	
<table  border="1" width="100%" class="myInput">
	<input type="hidden" Id="id" name="id" value="${xzc_ghys.id}"/>
	<input type="hidden" Id="biao_shi" name="biao_shi" value="${biao_shi}"/>
	<input type="hidden" Id="flag" name="flag" value="${flag}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<input type="hidden" Id="length" name="length" value="${length}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${xzc_ghys.unit_id}"/>
	<input type="hidden" Id="year" name="year" value="${xzc_ghys.year}"/>
	<input type="hidden" Id="ys_shijian" name="ys_shijian" value="${xzc_ghys.ys_shijian}"/>
	<input type="hidden" Id="ys_ren" name="ys_ren" value="${xzc_ghys.ys_ren}"/>
	<input type="hidden" Id="qz_zhuanjia" name="ys_shijian" value="${xzc_ghys.qz_zhuanjia}"/>
	<input type="hidden" Id="remark" name="remark" value="${xzc_ghys.remark}"/>
	<input type="hidden" Id="user_length" name="user_length" value="${user_length}"/>
  <tr>
    <td class="title" colspan="8">�������ׯ�滮�������ֱ�</td>
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
    <td rowspan="11" align="center" width="13%"><p align="center">�滮�ɹ����� </p>
    ��60�֣�</td>
    <td rowspan="5" align="center" width="13%">��������״����ͼ</td>
    <td align="center" width="20%" height="22">������Ϊ1:5000-1:10000</td>
    <td align="center" width="6%">5</td>
    <td width="12%" align="center">${xzc_ghys.yuan_blili}</td>
    <c:if test="${user_length<2}">
      <td width="6%" align="center">${xzc_ghys_zhou.yuan_blili}</td>
     </c:if>
    <td width="6%" align="center">${xzc_ghys_xian.yuan_blili}</td>
    <td rowspan="11" align="center" width="30%"><p>���ֱ�׼�� <br />
      6��5���֣�����������ͼֽ�ϱ��������˵���������������淶׼ȷ�� <br />
      3�֣�����������ͼֽ�ϱ��Ƿ������˵��������Ƿ�����淶�� <br />
    0�֣�����������ͼֽ��δ��� </p>    </td>
  </tr>
  <tr>
    <td align="center" height="22">��Ȼ��ֲ���״</td>
    <td align="center">5</td>
    <td align="center">${xzc_ghys.fen_bu}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.fen_bu}</td>
    </c:if>
     <td align="center">${xzc_ghys_xian.fen_bu}</td>
  </tr>
  <tr>
    <td align="center" height="22">�õ���״</td>
    <td align="center">5</td>
    <td align="center">${xzc_ghys.yd_xianzhuang}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.yd_xianzhuang}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.yd_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center" height="22">���⽻ͨ��״</td>
    <td align="center">5</td>
    <td align="center">${xzc_ghys.jt_xianzhuang}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jt_xianzhuang}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.jt_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center" height="22">������ʩ�͹�����ʩ��״</td>
    <td align="center">5</td>
    <td align="center">${xzc_ghys.jc_gg_xz}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jc_gg_xz}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.jc_gg_xz}</td>
  </tr>
  <tr>
    <td rowspan="5" align="center">����������滮ͼ</td>
    <td align="center" height="22">������Ϊ1:5000-1:10000 </td>
    <td align="center">6</td>
    <td align="center">${xzc_ghys.xian_bili}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.xian_bili}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.xian_bili}</td>
  </tr>
  <tr>
    <td align="center" height="22">�����õط�չ����</td>
    <td align="center">6</td>
    <td align="center">${xzc_ghys.jj_fangxiang}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jj_fangxiang}</td>
    </c:if>
     <td align="center">${xzc_ghys_xian.jj_fangxiang}</td>
  </tr>
  <tr>
    <td align="center" height="22">����Ȼ����������</td>
    <td align="center">6</td>
    <td align="center">${xzc_ghys.zhengzhi}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.zhengzhi}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.zhengzhi}</td>
  </tr>
  <tr>
    <td align="center" height="22">�弶������ʩ�͹�����ʩ����</td>
    <td align="center">6</td>
    <td align="center">${xzc_ghys.cj_gonggong}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.cj_gonggong}</td>
    </c:if>
     <td align="center">${xzc_ghys_xian.cj_gonggong}</td>
  </tr>
  <tr>
    <td align="center" height="22">�ص㽨����Ŀ����</td>
    <td align="center">6</td>
    <td align="center">${xzc_ghys.zd_buju}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.zd_buju}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.zd_buju}</td>
  </tr>
  <tr>
    <td colspan="2" align="center" height="22">˵����</td>
    <td align="center">5</td>
    <td align="center">${xzc_ghys.shuoming}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.shuoming}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.shuoming}</td>
  </tr>
  
  <tr>
    <td colspan="2" rowspan="5" align="center"><p align="center">�滮�ɹ����� </p>
    ��15�֣�</td>
    <td align="center" height="22">���������������������ͨ��</td>
    <td align="center">3</td>
    <td align="center">${xzc_ghys.jing_tong}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jing_tong}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.jing_tong}</td>
    <td rowspan="5" align="center"><p>���ֱ�׼�� <br />
      3�֣���ɸ����������� </p>
      0�֣�δ��ɸ�����������      <p align="center">&nbsp;</p>    </td>
  </tr>
  <tr>
    <td align="center" height="22">�磨�������������</td>
    <td align="center">3</td>
    <td align="center">${xzc_ghys.xiang_shen}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.xiang_shen}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.xiang_shen}</td>
  </tr>
  <tr>
    <td align="center" height="22">�أ��С�����������������</td>
    <td align="center">3</td>
    <td align="center">${xzc_ghys.xian_shen}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.xian_shen}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.xian_shen}</td>
  </tr>
  <tr>
    <td align="center" height="22">�滮�ɹ��������</td>
    <td align="center">3</td>
    <td align="center">${xzc_ghys.yj_zhengji}</td>
   <c:if test="${user_length<2}">
       <td align="center">${xzc_ghys_zhou.yj_zhengji}</td>
    </c:if>
     <td align="center">${xzc_ghys_xian.yj_zhengji}</td>
  </tr>
  <tr>
    <td align="center" height="22">�滮�ɹ���ʾ���ƽ�</td>
    <td align="center">3</td>
    <td align="center">${xzc_ghys.cheng_guo}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.cheng_guo}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.cheng_guo}</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2" align="center">�滮�ɹ����� <br />
    ��10�֣�</td>
    <td align="center" height="22">�滮�ɹ���Ҫ���ϱ����ܲ���</td>
    <td align="center">2</td>
    <td align="center">${xzc_ghys.cg_shangbao}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.cg_shangbao}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.cg_shangbao}</td>
    <td rowspan="2" align="center">���ֱ�׼�� <br />
      8��2���֣���ɸ�������� <br />
      0�֣�δ��ɸ��������    </td>
  </tr>
  <tr>
    <td align="center" height="22">�滮�ɹ�ʵ�е���������</td>
    <td align="center">8</td>
    <td align="center">${xzc_ghys.cg_guidang}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.cg_guidang}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.cg_guidang}</td>
  </tr>
  <tr>
    <td rowspan="3" align="center"><p align="center">�滮���Ʋ����ʽ� </p>
    ��10�֣�</td>
    <td rowspan="2" align="center">�滮���Ʋ����ʽ�Ͷ��</td>
    <td align="center">�ݣ��У��������ʽ�Ͷ��</td>
    <td align="center">4</td>
    <td align="center">${xzc_ghys.zs_buzhu}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.zs_buzhu}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.zs_buzhu}</td>
    <td rowspan="3" align="center">���ֱ�׼�� <br />
      �����ʽ�Ͷ�룺
      4�֣������ݣ��У������У�����������1000Ԫ <br />
        0�֣�δ���涨��Ŀ�����ʽ����� <br />
        �����ʽ�ʹ�ã�
        2�֣��ʽ�ʹ�÷��Ϲ涨����Ŀ֧����Ԥ�����
      0�֣��ʽ�ʹ��Υ�棬��Ŀ֧����Ԥ�㲻��    </td>
  </tr>
  <tr>
    <td align="center">�أ��С������������ʽ�Ͷ��</td>
    <td align="center">4</td>
    <td align="center">${xzc_ghys.xian_buzhu}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.xian_buzhu}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.xian_buzhu}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">�滮���Ʋ����ʽ�ʹ��</td>
    <td align="center">2</td>
    <td align="center">${xzc_ghys.gh_bzshiyong}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.gh_bzshiyong}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.gh_bzshiyong}</td>
  </tr>
  <tr>
    <td colspan="3" align="center">�� �� ��</td>
    <td align="center">5</td>
    <td align="center">${xzc_ghys.jiangli}</td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jiangli}</td>
    </c:if>
    <td align="center">${xzc_ghys_xian.jiangli}</td>
    <td rowspan="2" align="center">ע����������:${xzc_ghys.beizhu}</td>
  </tr>
  <tr>
    <td colspan="3" align="center">�� �� ��</td>
    <td colspan="2" align="center">${xzc_ghys.zong}</td>
	<c:if test="${user_length<2}">
	<td align="center">${xzc_ghys_zhou.zong}</td>
	</c:if>
	<td align="center">${xzc_ghys_xian.zong}</td>
	</tr>
     <tr>	
		<td colspan="8" align="center" style="height: 30px">
	      <input type="submit" value=" �� �� "/>	    </td>	
	</tr>
</table>
</form>
</body>
</html>