<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/scripts/css/main-in.css" type="text/css"></link>    
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/scripts/css/default.css"></link>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/scripts/easyui/themes/icon.css"></link>
  
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/jscript/themes/default/easyui.css"></link>
	<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/jscript/themes/icon.css"></link>
	<script type="text/javascript" src="<%= request.getContextPath() %>/jscript/jquery.min.js"></script>
	<script type="text/javascript" src="<%= request.getContextPath() %>/jscript/jquery.easyui.min.js"></script>
<script type="text/javascript">

$(function(){
var tab = $('#tt').tabs('getSelected'); 
$('#tt').tabs({
    border:false,
    onSelect:function(){	   
    var tab = $('#tt').tabs('getSelected'); 
    var index=$('#tt').tabs('getTabIndex',tab);
    
if(index=='1'){
           var content = '<iframe scrolling="auto" frameborder="0"  src="${pageContext.request.contextPath}/village/Village_base!list.do?fid=${fid}&biao_shi=${biao_shi}" style="width:100%;height:100%;"></iframe>';  
           }else if(index=='2'){
            var content = '<iframe scrolling="auto" frameborder="0"  src="${pageContext.request.contextPath}/village/Village_cr!list.do?fid=${fid}&biao_shi=${biao_shi}" style="width:100%;height:100%;"></iframe>';  
           }else if(index==3){
            var content = '<iframe scrolling="auto" frameborder="0"  src="${pageContext.request.contextPath}/village/Village_hr!list.do?fid=${fid}&biao_shi=${biao_shi}" style="width:100%;height:100%;"></iframe>';  
           }else if(index==4){
            var content = '<iframe scrolling="auto" frameborder="0"  src="${pageContext.request.contextPath}/village/Village_mode!list.do?fid=${fid}&biao_shi=${biao_shi}" style="width:100%;height:100%;"></iframe>';  
           }else if(index==5){
            var content = '<iframe scrolling="auto" frameborder="0"  src="${pageContext.request.contextPath}/village/Village_prom!list.do?fid=${fid}&biao_shi=${biao_shi}" style="width:100%;height:100%;"></iframe>';  
           }else if(index==6){
            var content = '<iframe scrolling="auto" frameborder="0"  src="${pageContext.request.contextPath}/village/Village_safe!list.do?fid=${fid}&biao_shi=${biao_shi}" style="width:100%;height:100%;"></iframe>';  
           }
$('#tt').tabs('update', {
	tab: tab,
	options: {
		content: content
	}
});
    }
});
});

</script>  
<head>
</head>
<body style="padding: 0px ;margin:0px;">
 
    <div id="tt" class="easyui-tabs" style="width:100%;height:900px;fit:ture"> 
     <div title="���������Ϣ"> 
    
 <table width="100%" border="1" class="myInput">
  <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>���������Ϣ</STRONG></TD>
        
  </TR>
	    <tr>
			<td width="20%" class="myInputTitle">��������</td>	
			<td width="30%">${village_info.name}</td>
			<td width="20%" class="myInputTitle">�������<a style="color:#FF0000">(ƽ����)</a></td>	
			<td width="30%">${village_info.area}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">��ס�˿�<a style="color:#FF0000">(��)</a></td>	
			<td width="30%">${village_info.permenent_residents}</td>
			<td width="20%" class="myInputTitle">�弯��������<a style="color:#FF0000">(Ԫ)</a></td>	
			<td width="30%">${village_info.revenue}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">�������С�������������</td>	
			<td width="30%">${village_info.shudi}</td>
			<td width="20%" class="myInputTitle">��ׯռ�����<a style="color:#FF0000">(ƽ����)</a></td>	
			<td width="30%">${village_info.space}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">��Ҫ����</td>	
			<td width="30%">${village_info.national}</td>
			<td width="20%" class="myInputTitle">��ͳ��������</td>	
			<td width="30%">${village_info.traditional_village_groups}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">�����ʽ�����</td>	
			<td width="30%">${village_info.request_money_groups}</td>
			<td width="20%" class="myInputTitle">�ܽ������<a style="color:#FF0000">(%)</td>	
			<td width="30%">${village_info.total_progress}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">�����˾�������<a style="color:#FF0000">(Ԫ)</a></td>	
			<td width="30%">${village_info.ave_income}</td>
			<td colspan="2"></td>
		</tr>
		<tr align="center" style="height: 50px">
		   <td align="center" colspan="4"> 
	          <input type="button" value="�����б�" onclick="window.location='${pageContext.request.contextPath}/village/Village_info!list.do?biao_shi=${biao_shi}'"/>		
		   </td>
		
		</tr>
		<table align="center">
		
		
		</table>
	</table>

     </div> 
      <div title="������ʩ�ͻ�������"   style="overflow:auto;" >    
      </div> 
      <div title="����ͷ������Ļ��Ų���������"   >   
          </div> 
          <div title="��ʷ����Ҫ���޸�"   > 
       
          </div> 
          <div title="��ͳ������������ʾ��"   > 
   
          </div> 
          <div title="������Ŀ�ʽ����"   > 

          </div> 
          <div title="���ְ�ȫ����"   > 
  
          </div> 
     </div> 
</body>
</html>