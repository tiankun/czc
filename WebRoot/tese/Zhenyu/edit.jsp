<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">	
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>	
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" type="text/JavaScript">
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>   
</head>

<body>

<form action="${pageContext.request.contextPath}/tese/Zhenyu!save.do" method="post" name="form1">
    <table width="100%" border="1" cellspacing="1" cellpadding="1" class="myInput">
      <tr class="tHead">
        <td align="center" colspan="8"><strong>镇(乡)域规划和建设情况</strong></td>
      </tr>		
      <tr class="tHead">
        <td width="12%" align="center"><strong>类别</strong></td>
        <td width="4%" align="center"><strong>序号</strong></td>
        <td colspan="2" align="center"><strong>名称</strong></td>
        <td width="7%" align="center"><strong>单位</strong></td>
        <td width="20%" align="center"><strong>现状</strong></td>
        <td width="20%" align="center"><p align="center"><strong>近期-</strong><strong>2015年</strong></p>        </td>
        <td width="20%" align="center"><p align="center"><strong>远期-</strong><strong>2030年</strong></p>        </td>
      </tr>
      <tr>
        <td rowspan="5" align="center"><strong>人口规模</strong></td>
        <td align="center">1</td>
        <td colspan="2" align="center">镇域总人口</td>
        <td align="center">万人</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zhen_yu" type="text" id="zhen_yu" value="${zhenyu.zhen_yu}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zhen_yuj" type="text" id="zhen_yuj" value="${zhenyuj.zhen_yu}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zhen_yuy" type="text" id="zhen_yuy" value="${zhenyuy.zhen_yu}"/></td>
      </tr>
      <tr>
        <td align="center">2</td>
        <td colspan="2" align="center">城镇人口</td>
        <td align="center">万人</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="cheng_zhen" type="text" id="cheng_zhen" value="${zhenyu.cheng_zhen}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="cheng_zhenj" type="text" id="cheng_zhenj" value="${zhenyuj.cheng_zhen}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="cheng_zheny" type="text" id="cheng_zheny" value="${zhenyuy.cheng_zhen}"/></td>
      </tr>
      <tr>
        <td align="center">3</td>
        <td colspan="2" align="center">城镇化水平</td>
        <td align="center">%</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="chengz_hua" type="text" id="chengz_hua" value="${zhenyu.chengz_hua}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="chengz_huaj" type="text" id="chengz_huaj" value="${zhenyuj.chengz_hua}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="chengz_huay" type="text" id="chengz_huay" value="${zhenyuy.chengz_hua}"/></td>
      </tr>
      <tr>
        <td align="center">4</td>
        <td colspan="2" align="center">农业人口</td>
        <td align="center">万人</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="nong_ye" type="text" id="nong_ye" value="${zhenyu.nong_ye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="nong_yej" type="text" id="nong_yej" value="${zhenyuj.nong_ye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="nong_yey" type="text" id="nong_yey" value="${zhenyuy.nong_ye}"/></td>
      </tr>
      <tr>
        <td align="center">5</td>
        <td colspan="2" align="center">非农业人口</td>
        <td align="center">万人</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="fei_nong" type="text" id="fei_nong" value="${zhenyu.fei_nong}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="fei_nongj" type="text" id="fei_nongj" value="${zhenyuj.fei_nong}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="fei_nongy" type="text" id="fei_nongy" value="${zhenyuy.fei_nong}"/></td>
      </tr>
      <tr>
        <td rowspan="4" align="center"><strong>用地规模</strong></td>
        <td align="center">6</td>
        <td colspan="2" align="center">镇域总面积</td>
        <td align="center">平方公里</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zheny_mianji" type="text" id="zheny_mianji" value="${zhenyu.zheny_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zheny_mianjij" type="text" id="zheny_mianjij" value="${zhenyuj.zheny_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zheny_mianjiy" type="text" id="zheny_mianjiy" value="${zhenyuy.zheny_mianji}"/></td>
      </tr>
      <tr>
        <td align="center">7</td>
        <td colspan="2" align="center">耕地面积</td>
        <td align="center">平方公里</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="gengdi_mianji" type="text" id="gengdi_mianji" value="${zhenyu.gengdi_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="gengdi_mianjij" type="text" id="gengdi_mianjij" value="${zhenyuj.gengdi_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="gengdi_mianjiy" type="text" id="gengdi_mianjiy" value="${zhenyuy.gengdi_mianji}"/></td>
      </tr>
      <tr>
        <td align="center">8</td>
        <td colspan="2" align="center">基本农田面积</td>
        <td align="center">平方公里</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="jb_nongtian" type="text" id="jb_nongtian" value="${zhenyu.jb_nongtian}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="jb_nongtianj" type="text" id="jb_nongtianj" value="${zhenyuj.jb_nongtian}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="jb_nongtiany" type="text" id="jb_nongtiany" value="${zhenyuy.jb_nongtian}"/></td>
      </tr>
      <tr>
        <td align="center">9</td>
        <td colspan="2" align="center">林地面积</td>
        <td align="center">平方公里</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="sl_mianji" type="text" id="sl_mianji" value="${zhenyu.sl_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="sl_mianjij" type="text" id="sl_mianjij" value="${zhenyuj.sl_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="sl_mianjiy" type="text" id="sl_mianjiy" value="${zhenyuy.sl_mianji}"/></td>
      </tr>
      <tr>
        <td rowspan="7" align="center"><strong>经济发展指标</strong></td>
        <td align="center">10</td>
        <td colspan="2" align="center">GDP总量</td>
        <td align="center">万元</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="gdp" type="text" id="gdp" value="${zhenyu.gdp}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="gdpj" type="text" id="gdpj" value="${zhenyuj.gdp}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="gdpy" type="text" id="gdpy" value="${zhenyuy.gdp}"/></td>
      </tr>
      <tr>
        <td align="center">11</td>
        <td colspan="2" align="center">第一产业总产值</td>
        <td align="center">万元</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="dy_chanye" type="text" id="dy_chanye" value="${zhenyu.dy_chanye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="dy_chanyej" type="text" id="dy_chanyej" value="${zhenyuj.dy_chanye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="dy_chanyey" type="text" id="dy_chanyey" value="${zhenyuy.dy_chanye}"/></td>
      </tr>
      <tr>
        <td align="center">12</td>
        <td colspan="2" align="center">第二产业总产值</td>
        <td align="center">万元</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="de_chanye" type="text" id="de_chanye" value="${zhenyu.de_chanye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="de_chanyej" type="text" id="de_chanyej" value="${zhenyuj.de_chanye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="de_chanyey" type="text" id="de_chanyey" value="${zhenyuy.de_chanye}"/></td>
      </tr>
      <tr>
        <td align="center">13</td>
        <td colspan="2" align="center">第三产业总产值</td>
        <td align="center">万元</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="ds_chanye" type="text" id="ds_chanye" value="${zhenyu.ds_chanye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="ds_chanyej" type="text" id="ds_chanyej" value="${zhenyuj.ds_chanye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="ds_chanyey" type="text" id="ds_chanyey" value="${zhenyuy.ds_chanye}"/></td>
      </tr>
      <tr>
        <td align="center">14</td>
        <td colspan="2" align="center">转移农村富余劳动力</td>
        <td align="center">人</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zy_fuyu" type="text" id="zy_fuyu" value="${zhenyu.zy_fuyu}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zy_fuyuj" type="text" id="zy_fuyuj" value="${zhenyuj.zy_fuyu}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zy_fuyuy" type="text" id="zy_fuyuy" value="${zhenyuy.zy_fuyu}"/></td>
      </tr>
      <tr>
        <td align="center">15</td>
        <td colspan="2" align="center">非农产业新增就业岗位</td>
        <td align="center">人</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="fn_jiuye" type="text" id="fn_jiuye" value="${zhenyu.fn_jiuye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="fn_jiuyej" type="text" id="fn_jiuyej" value="${zhenyuj.fn_jiuye}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="fn_jiuyey" type="text" id="fn_jiuyey" value="${zhenyuy.fn_jiuye}"/></td>
      </tr>
      <tr>
        <td align="center">16</td>
        <td colspan="2" align="center">人均可支配财政收入水平</td>
        <td align="center">元/人</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="rj_shouru" type="text" id="rj_shouru" value="${zhenyu.rj_shouru}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="rj_shouruj" type="text" id="rj_shouruj" value="${zhenyuj.rj_shouru}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="rj_shouruy" type="text" id="rj_shouruy" value="${zhenyuy.rj_shouru}"/></td>
      </tr>
      <tr>
        <td rowspan="5" align="center"><strong>居民点体系与布局</strong></td>
        <td align="center">17</td>
        <td colspan="2" align="center">村庄数量</td>
        <td align="center">个</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="cun_zhuang" type="text" id="cun_zhuang" value="${zhenyu.cun_zhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="cun_zhuangj" type="text" id="cun_zhuangj" value="${zhenyuj.cun_zhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="cun_zhuangy" type="text" id="cun_zhuangy" value="${zhenyuy.cun_zhuang}"/></td>
      </tr>
      <tr>
        <td rowspan="4" align="center">18</td>
        <td width="6%" rowspan="4" align="center">规模等级</td>
        <td width="11%" align="center">特大村庄</td>
        <td align="center">个</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="td_cunzhuang" type="text" id="td_cunzhuang" value="${zhenyu.td_cunzhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="td_cunzhuangj" type="text" id="td_cunzhuangj" value="${zhenyuj.td_cunzhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="td_cunzhuangy" type="text" id="td_cunzhuangy" value="${zhenyuy.td_cunzhuang}"/></td>
      </tr>
      <tr>
        <td align="center">大型村庄</td>
        <td align="center">个</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="dx_cunzhuang" type="text" id="dx_cunzhuang" value="${zhenyu.dx_cunzhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="dx_cunzhuangj" type="text" id="dx_cunzhuangj" value="${zhenyuj.dx_cunzhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="dx_cunzhuangy" type="text" id="dx_cunzhuangy" value="${zhenyuy.dx_cunzhuang}"/></td>
      </tr>
      <tr>
        <td align="center">中型村庄</td>
        <td align="center">个</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zx_cunzhuang" type="text" id="zx_cunzhuang" value="${zhenyu.zx_cunzhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zx_cunzhuangj" type="text" id="zx_cunzhuangj" value="${zhenyuj.zx_cunzhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="zx_cunzhuangy" type="text" id="zx_cunzhuangy" value="${zhenyuy.zx_cunzhuang}"/></td>
      </tr>
      <tr>
        <td align="center">小型村庄</td>
        <td align="center">个</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="xx_cunzhuang" type="text" id="xx_cunzhuang" value="${zhenyu.xx_cunzhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="xx_cunzhuangj" type="text" id="xx_cunzhuangj" value="${zhenyuj.xx_cunzhuang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="xx_cunzhuangy" type="text" id="xx_cunzhuangy" value="${zhenyuy.xx_cunzhuang}"/></td>
      </tr>
      <tr>
        <td align="center"><strong>自然资源</strong></td>
        <td align="center">19</td>
        <td colspan="2" align="center">森林覆盖率</td>
        <td align="center">%</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="sl_fugai" type="text" id="sl_fugai" value="${zhenyu.sl_fugai}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="sl_fugaij" type="text" id="sl_fugaij" value="${zhenyuj.sl_fugai}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input name="sl_fugaiy" type="text" id="sl_fugaiy" value="${zhenyuy.sl_fugai}"/></td>
      </tr>
      <tr>
        <td colspan="8" align="center" valign="middle" style="height:40px" onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="submit" name="Submit" value=" 提 交 " /></td>
      </tr>	  
    </table>
</form>
<c:if test="${suss=='suss'}">
<script type='text/javascript'>
alert('====保存数据成功！====');
</script>
</c:if>
</body>

</html>