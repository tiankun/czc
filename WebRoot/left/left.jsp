<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<link href="navbar.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript" src="navbar.js"></script>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style></head>
<body topMargin=0 marginwidth="0" marginheight="0" leftmargin="0" rightmargin="0"> 
<script language="JavaScript" type="text/JavaScript">
var show = true;
var hide = false;
//�޸Ĳ˵������¼�ͷ����
function my_on(head,body)
{
	var tag_a;
	for(var i=0;i<head.childNodes.length;i++)
	{
		if (head.childNodes[i].nodeName=="A")
		{
			tag_a=head.childNodes[i];
			break;
		}
	}
	tag_a.className="on";
}
function my_off(head,body)
{
	var tag_a;
	for(var i=0;i<head.childNodes.length;i++)
	{
		if (head.childNodes[i].nodeName=="A")
		{
			tag_a=head.childNodes[i];
			break;
		}
	}
	tag_a.className="off";
}
//��Ӳ˵�	
window.onload=function()
{  
	m1 =new Menu("menu1",'menu1_child','dtu','100',show,my_on,my_off);
	m1.init();
	m2 =new Menu("menu2",'menu2_child','dtu','100',show,my_on,my_off);
	m2.init();		
}
</script>
<noscript title="ϵͳ��ʾ">
<div class="tit" id="menu0" ><a href="" class="on"  title="�۵��˵�" name="nojs" id="nojs" >ϵͳ��ʾ</a> </div>
<div class="list" id="menu0_child">
	<p><strong>�����豸��֧��js,����ʹ�ò˵��۵�����</strong></p>
</div>
</noscript>
<IMG src="${pageContext.request.contextPath}/images/menu-top.gif">
<table width="156" border="0" align="center" cellSpacing=1 cellPadding=4 bgColor=#dddddf>
					<tr valign="middle" align="right" bgColor=#ffffff> 
						<td height="18" width="30%" bgColor=#f8f8f8 valign="top">
							�û���</td>
						<td width="70%" align="left">${user.user_name}</td>
					</tr>
</table>
<div id="menu">
	<div class="tit" id="menu1" title="��Ϫ��" >
		<div class="titpic" id="pc1"></div>
		<a href="#nojs" title="��Ϫ��" target="" class="on" id="menu1_a" tabindex="1">��Ϫ��</a> </div>
	<div class="list" id="menu1_child" title="��Ϫ��������Ȼ��">
		<ul>
            <li id="m1_1" ><a href="${pageContext.request.contextPath}/admin/Economy!edit.do?unit_id=3" target="list">������</a></li>		
			<li id="m1_2" ><a href="${pageContext.request.contextPath}/admin/JZC!edit.do?unit_id=1" target="list">��Ϫ��</a></li>
			<li id="m1_3" ><a href="${pageContext.request.contextPath}/admin/ZRC!edit.do?unit_id=2" target="list">��Ϫ��</a></li>				
		</ul>
	</div>		
	<div class="tit" id="menu2" title="�û�����">
		<div class="titpic" id="pc2"></div>
		<a href="#nojs" title="�û�����" target="" class="on" id="menu2_a" tabindex="2" >�û�����</a> </div>	
	<div class="list" id="menu2_child" title="�û�������" >
		<ul>		
		    <li id="m2_1" ><a href="${pageContext.request.contextPath}/admin/Myuser!list.do" target="list">�û�����</a></li>		    
			<li id="m2_2" ><a href="${pageContext.request.contextPath}/admin/Myuser!modifyPass.do" target="list">�޸�����</a></li>
			<li id="m2_3" ><a href="${pageContext.request.contextPath}/admin/Myuser!logout.do" target="_top">�˳�ϵͳ</a></li>
		</ul>
	</div>		
</div>
</body>
</html>
