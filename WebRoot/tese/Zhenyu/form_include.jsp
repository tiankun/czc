<%@ page contentType="text/html;charset=GBK" %>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/calendar.js"></script>
<table border="1" width="100%" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>��ɫС��������Ϣ������Ϣ</strong></td>	
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�ص�</td>	
		<td width="35%">
		<input type="text" Id="unit_id" name="unit_id" maxlength="22" dataType="Number" value="${zhenyu.unit_id}"/>
		</td>
		<td width="15%" class="myInputTitle">���</td>	
		<td width="35%">
		<input type="text" Id="year" name="year" maxlength="22" dataType="Number" value="${zhenyu.year}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�������˿ڣ�	���ˣ�</td>	
		<td width="35%">
		<input type="text" Id="zhen_yu" name="zhen_yu" maxlength="22" dataType="Number" value="${zhenyu.zhen_yu}"/>
		</td>
		<td width="15%" class="myInputTitle">�����˿�	�����ˣ�</td>	
		<td width="35%">
		<input type="text" Id="cheng_zhen" name="cheng_zhen" maxlength="22" dataType="Number" value="${zhenyu.cheng_zhen}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����ˮƽ��	%��</td>	
		<td width="35%">
		<input type="text" Id="chengz_hua" name="chengz_hua" maxlength="22" dataType="Number" value="${zhenyu.chengz_hua}"/>
		</td>
		<td width="15%" class="myInputTitle">ũҵ�˿�	����</td>	
		<td width="35%">
		<input type="text" Id="nong_ye" name="nong_ye" maxlength="22" dataType="Number" value="${zhenyu.nong_ye}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ũҵ�˿�	����</td>	
		<td width="35%">
		<input type="text" Id="fei_nong" name="fei_nong" maxlength="22" dataType="Number" value="${zhenyu.fei_nong}"/>
		</td>
		<td width="15%" class="myInputTitle">���������	k�O</td>	
		<td width="35%">
		<input type="text" Id="zheny_mianji" name="zheny_mianji" maxlength="22" dataType="Number" value="${zhenyu.zheny_mianji}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�������	k�O</td>	
		<td width="35%">
		<input type="text" Id="gengdi_mianji" name="gengdi_mianji" maxlength="22" dataType="Number" value="${zhenyu.gengdi_mianji}"/>
		</td>
		<td width="15%" class="myInputTitle">����ũ�����	k�O</td>	
		<td width="35%">
		<input type="text" Id="jb_nongtian" name="jb_nongtian" maxlength="22" dataType="Number" value="${zhenyu.jb_nongtian}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�ֵ����	k�O</td>	
		<td width="35%">
		<input type="text" Id="sl_mianji" name="sl_mianji" maxlength="22" dataType="Number" value="${zhenyu.sl_mianji}"/>
		</td>
		<td width="15%" class="myInputTitle">GDP����	��Ԫ</td>	
		<td width="35%">
		<input type="text" Id="gdp" name="gdp" maxlength="22" dataType="Number" value="${zhenyu.gdp}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��һ��ҵ�ܲ�ֵ	��Ԫ</td>	
		<td width="35%">
		<input type="text" Id="dy_chanye" name="dy_chanye" maxlength="22" dataType="Number" value="${zhenyu.dy_chanye}"/>
		</td>
		<td width="15%" class="myInputTitle">�ڶ���ҵ�ܲ�ֵ	��Ԫ</td>	
		<td width="35%">
		<input type="text" Id="de_chanye" name="de_chanye" maxlength="22" dataType="Number" value="${zhenyu.de_chanye}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������ҵ�ܲ�ֵ	��Ԫ</td>	
		<td width="35%">
		<input type="text" Id="ds_chanye" name="ds_chanye" maxlength="22" dataType="Number" value="${zhenyu.ds_chanye}"/>
		</td>
		<td width="15%" class="myInputTitle">ת��ũ�帻���Ͷ���	��</td>	
		<td width="35%">
		<input type="text" Id="zy_fuyu" name="zy_fuyu" maxlength="22" dataType="Number" value="${zhenyu.zy_fuyu}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ũ��ҵ������ҵ��λ	��</td>	
		<td width="35%">
		<input type="text" Id="fn_jiuye" name="fn_jiuye" maxlength="22" dataType="Number" value="${zhenyu.fn_jiuye}"/>
		</td>
		<td width="15%" class="myInputTitle">�˾���֧���������ˮƽ	Ԫ</td>	
		<td width="35%">
		<input type="text" Id="rj_shouru" name="rj_shouru" maxlength="22" dataType="Number" value="${zhenyu.rj_shouru}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ׯ����	��</td>	
		<td width="35%">
		<input type="text" Id="cun_zhuang" name="cun_zhuang" maxlength="22" dataType="Number" value="${zhenyu.cun_zhuang}"/>
		</td>
		<td width="15%" class="myInputTitle">�ش��ׯ	��</td>	
		<td width="35%">
		<input type="text" Id="td_cunzhuang" name="td_cunzhuang" maxlength="22" dataType="Number" value="${zhenyu.td_cunzhuang}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���ʹ�ׯ	��</td>	
		<td width="35%">
		<input type="text" Id="dx_cunzhuang" name="dx_cunzhuang" maxlength="22" dataType="Number" value="${zhenyu.dx_cunzhuang}"/>
		</td>
		<td width="15%" class="myInputTitle">���ʹ�ׯ	��</td>	
		<td width="35%">
		<input type="text" Id="zx_cunzhuang" name="zx_cunzhuang" maxlength="22" dataType="Number" value="${zhenyu.zx_cunzhuang}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">С�ʹ�ׯ	��</td>	
		<td width="35%">
		<input type="text" Id="xx_cunzhuang" name="xx_cunzhuang" maxlength="22" dataType="Number" value="${zhenyu.xx_cunzhuang}"/>
		</td>
		<td width="15%" class="myInputTitle">ɭ�ָ�����	%</td>	
		<td width="35%">
		<input type="text" Id="sl_fugai" name="sl_fugai" maxlength="22" dataType="Number" value="${zhenyu.sl_fugai}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�ʱ��</td>	
		<td width="35%">
		<input onFocus="date(this)" id="input" name="input" maxlength="11" dataType="Date" value="${zhenyu.input}" style="ime-mode:disabled;width:60%"/><a onClick="date(document.form1.input)" style="cursor:hand"><img src="${pageContext.request.contextPath}/images/calbtn.gif" border="0" align="absbottom" ></a>
		</td>
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" �� �� " onClick="return mySubmit();"/>
	<input type="button" value="�����б�" onclick="window.location='${pageContext.request.contextPath}/tese/Zhenyu!list.do'"/>	
	    </td>	
	</tr>
</table>