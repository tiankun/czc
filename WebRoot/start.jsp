<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" language="java" 
 import="java.util.*,java.text.SimpleDateFormat,java.net.URLEncoder" %>
 <%List<Map> list10=(List<Map>)request.getAttribute("list10");
List<Map> list1=(List<Map>)request.getAttribute("list1");
List<Map> list2=(List<Map>)request.getAttribute("list2");
List<Map> list3=(List<Map>)request.getAttribute("list3");
//List list4=(List)request.getAttribute("list4");
List<Map> list5=(List<Map>)request.getAttribute("list5");
List<Map> list6=(List<Map>)request.getAttribute("list6");
List<Map> list7=(List<Map>)request.getAttribute("list7"); 
List<Map> list8=(List<Map>)request.getAttribute("list8");
List<Map> list9=(List<Map>)request.getAttribute("list9");
List<Map> list13=(List<Map>)request.getAttribute("list13"); 
List<Map> list11=(List<Map>)request.getAttribute("list11");
List<Map> list12=(List<Map>)request.getAttribute("list12");
List<Map> list14=(List<Map>)request.getAttribute("list14");
Integer check=null;
String img=null;
String url=null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>云南村镇规划建设网</TITLE>
<STYLE type=text/css>
<!--
.redlink  {
   color: #FFFFFF;
   
    }

A:link {
	COLOR: #006699; FONT-FAMILY: "Arial", "Helvetica", "sans-serif"; TEXT-DECORATION: none
}
A:visited {
	COLOR: #003399; FONT-FAMILY: "Arial", "Helvetica", "sans-serif"; TEXT-DECORATION: none
}
A:hover {
	COLOR: #ff0000; TEXT-DECORATION: none
}
A:active {
	COLOR: #006699; FONT-FAMILY: "Arial", "Helvetica", "sans-serif"; TEXT-DECORATION: none
}
.STYLE5 {
	color: #FFFFFF;
	font-family: "Courier New", Courier, monospace;
	font-weight: bold;
	font-size: large;
}
.STYLE11 {
	color: #FFFFFF;
	font-family: "Courier New", Courier, monospace;
	font-weight: bold;
	font-size: 16px;
}
.STYLE6 {color: #FFFFFF}
.STYLE8 {font-size: 12px}
.STYLE10 {
	font-size: 14px;
	color: #3399FF;
}
.STYLE12 {
	color: #336699;
	font-weight: bold;
}
-->
</STYLE>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</HEAD>
<BODY style="MARGIN: 0pt">
            <TABLE height=28 cellSpacing=0 cellPadding=0 width="1024" border=0 align="center">
              <TR align=left>
                <TD style="FONT-SIZE: 12px" width=55 background=<%=request.getContextPath()%>/image/b.jpg><IMG height=47 
                  src="<%=request.getContextPath()%>/image/time.jpg" width=55 border=0> </TD>
                <TD width=200 background=<%=request.getContextPath()%>/image/b.jpg><STRONG>
                  <SCRIPT language=JavaScript>         
							 today=new Date();
							 function initArray(){
							   this.length=initArray.arguments.length
							   for(var i=0;i<this.length;i++)
							   this[i+1]=initArray.arguments[i]  }
							   var d=new initArray(
								 "星期日",
								 "星期一",
								 "星期二",
								 "星期三",
								 "星期四",
								 "星期五",
								 "星期六");
							document.write(
								 "<font color='#ffffff' style='font-size:9pt;font-family: 宋体'> ",
								 today.getFullYear(),"年",
								 today.getMonth()+1,"月",
								 today.getDate(),"日   ",
								 d[today.getDay()+1],
								 "</font>" ); 
							</SCRIPT>
                  </STRONG></TD>
                    <TD width=769 background=<%=request.getContextPath()%>/image/b.jpg></TD>
  </TR></TABLE>
        <TABLE height=180 cellSpacing=0 cellPadding=0 width=1024 border=0 align="center">
       
        <TR>
          <TD colSpan=6><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="1024" height="180">
              <param name="movie" value="<%=request.getContextPath()%>/image/1.swf">
              <param name="quality" value="high">
              <embed src="<%=request.getContextPath()%>/image/1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1024" height="180"></embed></object></TD></TR>
                  
         
  </TABLE>  
   <TABLE  cellSpacing=0 cellPadding=0 border=1 align="center" width="1024">  
   <tr>
   <td width="17%" valign="top"><div align="left"> 
  </div><TABLE cellSpacing=1 cellPadding=1 width="100%" border=1 style ="border-collapse:collapse"
  >
<tr>
  <td><a href="<%=request.getContextPath()%>/admin/index.jsp" target="_blank"><img src="<%=request.getContextPath()%>/image/login.jpg" border="0"/></a></td>
  </tr>  
  <tr bgcolor="#336699" height="37">
  <td class="STYLE11" onClick="window.location.href='<%=request.getContextPath()%>/site/Infor!find.do'" align="left"><font face="黑体"><a href="<%=request.getContextPath()%>/site/Infor!find.do"><font color="#ffffff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 首页</font></a></font></td>
  </tr>
  <tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left" style="BORDER-BOTTOM: #000000 1PX DASHED"
  ><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("村镇规划","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 村镇规划</font></a></td>
  </tr>
<tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left" style=" BORDER-BOTTOM: #000000 1PX DASHED"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("村镇建设","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 村镇建设</font></a></td>
  </tr>  
  <tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left" style="BORDER-BOTTOM: #000000 1PX DASHED"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("农房建设","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 农房建设</font></a></td>
  </tr>
 <tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left" style=" BORDER-BOTTOM: #000000 1PX DASHED"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("村镇迁建","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 村镇迁建</font></a></td>
  </tr>  
  <tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("重点示范","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 重点.试点示范</font></a></td>
  </tr><tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("规划设计评优","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 规划设计评优</font></a></td>
  </tr>
  <tr  height="40" bgcolor="#336699">
  <td align="center" class="STYLE11">
  <form name="form" action="<%=request.getContextPath()%>/site/Infor!search.do" method="post">
  <div align="center"><font color="#ffffff">站内搜索</font>
  </div>
  <p><input type="text" name="select" style="width:70%"/><input type="submit" name="搜索" value="搜索"/></p>
  </form></td>
  </tr>
 
  <tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("服务咨询","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 服务咨询</font></a></td>
  </tr>
  <tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("村镇建设统计","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 村镇建设统计</font></a></td>
  </tr>
  <tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left"><a href="<%=request.getContextPath()%>/admin/index.jsp"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 村镇建设网管理系统</font></a></td>
  </tr>
  <tr bgcolor="#336699" height="37">
  <td class="STYLE11" align="left"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("资料下载","UTF-8"),"UTF-8")%>&page=1"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 资料下载</font></a></td>
  </tr>
  <tr bordercolor="#336699">
  <td>
   <TABLE  cellSpacing=1 cellPadding=0 width="100%" border=0>  
        <tr bgcolor="#336699" height="37">
        <td  class="STYLE11" align="left"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 友情链接</font></td>
              </tr>
                            <%
                            if(list10.size()<=13)
                            { for(int i=0;i<list10.size();i++)
                            {String biaoti=list10.get(i).get("biaoti").toString();
                            if(biaoti.length()>15)
                            {
                            biaoti=biaoti.substring(0,15)+"...";
                            } %>
                              <tr bgcolor="#336699">
        <td style="FONT-SIZE: 12px" 
                           height=27 align="center">
                            <a href="<%=list10.get(i).get("gaiyao") %>" target="_blank"><font color="#FFFFFF"><%=biaoti %></font></a>
                            </td>
                            </tr>
                            <%}
                            for(int i=0;i<13-list10.size();i++)
                            {%>
                            <tr bgcolor="#336699">
        <td style="FONT-SIZE: 12px" 
                             height=27 align="center">
                           
                            </td>
                            </tr>
                            <%}}
                            else {
                            for(int i=0;i<13;i++)
                            {String biaoti=list10.get(i).get("biaoti").toString();
                            if(biaoti.length()>15)
                            {
                            biaoti=biaoti.substring(0,15)+"...";
                            }%>
                              <tr bgcolor="#336699">
        <td style="FONT-SIZE: 12px" 
                            height=27 align="center">
                            <a href="http://<%=list10.get(i).get("gaiyao") %>" target="_blank"><font color="#FFFFFF"><%=biaoti %></font></a>
                            </td>
                            </tr>
                            <%}}%>
            </TABLE> 
          </td> 
  </tr>
 
  </TABLE>
   </td>
    <td valign="top" style="width:60%">
     <TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>  
     <tr bgcolor="#CCCCCC" height="37">
    <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE5">简讯</span></td>
      </tr>
      <%
      
      check=list1.size();
     
      for(int i=0;i<check;i++)
      {
      if(list1.get(i).get("tupian")!=null)
      {
      img="/upFile/"+list1.get(i).get("tupian");
      url="/site/Infor!findInfor.do?id="+list1.get(i).get("id");    
      }
      }%>
 
     <tr bgcolor="#FFFFFF" height="150">
     <td width="34%">
     <script language=JavaScript>
	var focus_width=180
	var focus_height=140
	var text_height=0
	var swf_height = focus_height+text_height
	
	var pics='<%=img%>'
	var links='<%=url%>'
	var texts=''
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase=" http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
	document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="<%=request.getContextPath()%>/image/flash01.swf"><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
	document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
	document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
	document.write('<embed src="<%=request.getContextPath()%>/image/flash01.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F0F0F0" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage=" http://www.macromedia.com/go/getflashplayer" />');		
document.write('</object>');
</SCRIPT>
</td>
      
     <TD valign="top" style="width:66%"> 
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list1.get(i).get("biaoti").toString();
        if(name.length()>30)
        {
        name=name.substring(0,30)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list1.get(i).get("id")%>" target="_blank"><%=name %></a>
                            </td>
                            </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           </td>
                            </tr>
                              
                              <%} %>
                               <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("简讯","UTF-8"),"UTF-8")%>&page=1" onClick="this.blur()"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
      
                      </TABLE>      
                            </TD>
     </tr>
      <tr bgcolor="#CCCCCC" height="37">
    <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="STYLE5">领导讲话</span></td>
      </tr>
      <%check=null;
      img=null;
      url=null;
     
      check=list2.size();
      
      for(int i=0;i<check;i++)
      {
      if(list2.get(i).get("tupian")!=null)
      {
      if(img==null)
      {
      img=request.getContextPath()+"/"+"upFile/"+list2.get(i).get("tupian");
      url="/site/Infor!findInfor.do?id="+list2.get(i).get("id");
      }
      else
      {
      img=img+"|"+request.getContextPath()+"/"+"upFile/"+list2.get(i).get("tupian");
      url=url+"|/site/Infor!findInfor.do?id="+list2.get(i).get("id");
      }
      }
      }%>
      
    <tr bgcolor="#FFFFFF" height="150">
     <td width="34%"><script language=JavaScript>
	var focus_width=180
	var focus_height=140
	var text_height=0
	var swf_height = focus_height+text_height
	
	var pics='<%=img%>'
	var links='<%=url%>'
	var texts=''
	document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase=" http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
	document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="<%=request.getContextPath()%>/image/flash01.swf"><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
	document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
	document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
	document.write('<embed src="<%=request.getContextPath()%>/image/flash01.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F0F0F0" quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage=" http://www.macromedia.com/go/getflashplayer" />');		
document.write('</object>');
</SCRIPT></td>
      <TD  width="66%" valign="top"> 
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list2.get(i).get("biaoti").toString();
        if(name.length()>30)
        {
        name=name.substring(0,30)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list2.get(i).get("id")%>" target="_blank"><%=name %></a>
                            </td>
                            </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           </td>
                            </tr>
                              
                              <%} %>
       <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("领导讲话","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" width="39" height="15" border=0></a></td>
                              </tr>
                      </TABLE>      
                            </TD>
     </tr>
     <tr bgcolor="#CCCCCC" height="37">
    <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE5">文件</span></td>
      </tr>
      <%check=null;
    
      
      check=list3.size();
     
      %>
      <tr bgcolor="#FFFFFF" height="150">
     <td colspan="2">
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list3.get(i).get("biaoti").toString();
        if(name.length()>45)
        {
        name=name.substring(0,45)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list3.get(i).get("id")%>" target="_blank"><%=name %></a>
                            </td>
                            </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           </td>
                            </tr>
                              
                              <%} %>
       <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("文件","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
                      </TABLE>      
                            </TD>
     </tr>
       <tr bgcolor="#CCCCCC" height="37">
       
    <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE5">经验交流</span></td>
      </tr>
      <% check=null;
     
      
      check=list14.size();
      
     %>
       <tr bgcolor="#FFFFFF" height="150">
     <td colspan="2">
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list14.get(i).get("biaoti").toString();
        if(name.length()>45)
        {
        name=name.substring(0,45)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list14.get(i).get("id")%>" target="_blank"><%=name %></a>
                            </td>
                            </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           </td>
                            </tr>
                              
                              <%} %>
       <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("经验交流","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
                      </TABLE>      
                            </TD>
     </tr>
       <tr bgcolor="#CCCCCC" height="37">
    <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE5">招商项目</span></td>
      </tr>
    <%check=null;
    
      if(list7.size()<=5)
      {
      check=list7.size();
     }
     else
     {
     check=5;
     }
      %>
      <tr bgcolor="#FFFFFF" height="150">
     <td colspan="2">
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list7.get(i).get("biaoti").toString();
        if(name.length()>45)
        {
        name=name.substring(0,45)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list7.get(i).get("id")%>" target="_blank"><%=name %></a>
                            </td>
                            </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           </td>
                            </tr>
                              
                              <%} %>
       <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("招商项目","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
                      </TABLE>      
                            </TD>
     </tr>
      <tr bgcolor="#CCCCCC" height="37">
    <td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="STYLE5">村镇适用经济技术推荐</span></td>
      </tr>
       <%check=null;
    
      if(list8.size()<=5)
      {
      check=list8.size();
     }
     else
     {
     check=5;
     }
      %>
      <tr bgcolor="#FFFFFF" height="150">
     <td colspan="2">
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list8.get(i).get("biaoti").toString();
        if(name.length()>45)
        {
        name=name.substring(0,45)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list8.get(i).get("id")%>" target="_blank"><%=name %></a>
                            </td>
                            </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           </td>
                            </tr>
                              
                              <%} %>
       <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("村镇适用经济技术推荐","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
                      </TABLE>      
                            </TD>
     </tr>
      
     </TABLE>
   </td>
    <td width="23%" valign="top">
    <TABLE  cellSpacing=1 cellPadding=0 width="100%" border=0> 
    <tr height="37">
     <td background="<%=request.getContextPath()%>/image/1.jpg" width="100%" align="left" ><span class="STYLE6"><strong>农村住房业绩考核排行榜</strong></span> </td >
    
     </tr >
        <%check=null;
      if(list5!=null)
      check=list5.size();
       else
       check=0;
      %>

 <tr height="150">
      <TD  valign="top"> 
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list5.get(i).get("biaoti").toString();
        if(name.length()>12)
        {
        name=name.substring(0,12)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list14.get(i).get("id")%>" target="_blank"><%=name %></a>
                </td>
              </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                </td>
              </tr>
                              
                              <%} %>
                              <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("农村住房业绩考核排行榜","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
      
            </TABLE>      
          </TD>
     </tr> 
     <tr height="37">
     <td background="<%=request.getContextPath()%>/image/1.jpg" align="left" width="100%"><span class="STYLE6"><strong>规划管理业绩考核排行榜</strong></span> </td >
     </tr >
     <%check=null;
     
      check=list6.size();
      
     %>

 <tr height="150">
      <TD  valign="top"> 
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list6.get(i).get("biaoti").toString();
        if(name.length()>12)
        {
        name=name.substring(0,12)+"...";
        }%>  
        <tr>
      <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list6.get(i).get("id")%>" target="_blank"><%=name %></a>
                </td>
              </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                </td>
              </tr>
                              
                              <%} %>
                              <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("规划管理业绩考核排行榜","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
      
            </TABLE>      
          </TD>
     </tr>
    
    <tr height="37">
     <td background="<%=request.getContextPath()%>/image/1.jpg" align="center" width="100%" ><span class="STYLE6"><strong>工作研究</strong></span> </td >
     </tr >
     <%check=null;
      img=null;
      url=null;
      if(list11.size()<=5)
      {
      check=list11.size();
      }
      else
      {
      check=5;
      } 
     %>

 <tr height="150">
      <TD  valign="top"> 
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list11.get(i).get("biaoti").toString();
        if(name.length()>12)
        {
        name=name.substring(0,12)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list11.get(i).get("id")%>" target="_blank"><%=name %></a>
                </td>
              </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                </td>
              </tr>
                              
                              <%} %>
                              <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("工作研究","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
      
            </TABLE>      
          </TD>
     </tr>
    <tr height="37">
    <td background="<%=request.getContextPath()%>/image/1.jpg" width="100%" align="center"><span class="STYLE6"><strong>机构工作研究</strong></span> </td >
     </tr >
        <%check=null;
      img=null;
      url=null;
      if(list12.size()<=5)
      {
      check=list12.size();
      }
      else
      {
      check=5;
      } 
      %>
        

 <tr height="150">
      <TD  valign="top"> 
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list12.get(i).get("biaoti").toString();
        if(name.length()>12)
        {
        name=name.substring(0,12)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list12.get(i).get("id")%>" target="_blank"><%=name %></a>
                </td>
              </tr>
                             
                              <%} for(int i=0;i<5-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                </td>
              </tr>
                              
                              <%} %>
                              <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("机构工作研究","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
      
            </TABLE>      
          </TD>
     </tr>
     
    <tr height="37">
     <td background="<%=request.getContextPath()%>/image/1.jpg" width="100%" align="center" ><span class="STYLE6"><strong>课件下载</strong></span> </td >
    
     </tr >
        <%check=null;
      
      check=list13.size();
       
      %>

 <tr height="150">
      <TD  valign="top"> 
        <TABLE  cellSpacing=0 cellPadding=0 width="100%" border=0>
        <%for(int i=0;i<check;i++)
        { String name=list13.get(i).get("wenbieming").toString();
        if(name.length()>12)
        {
        name=name.substring(0,12)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/upFile/<%=list13.get(i).get("wenjian") %>" target="_blank"><%=name %></a>
                </td>
              </tr>
                             
                              <%} for(int i=0;i<12-check;i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                </td>
              </tr>
                              
                              <%} %>
                              <tr>
                              <td align="right"><a href="<%=request.getContextPath()%>/site/Infor!getPage.do?inforname=<%=URLEncoder.encode(URLEncoder.encode("课件下载","UTF-8"),"UTF-8")%>&page=1"><img src="<%=request.getContextPath()%>/image/left_more.gif" border=0></a></td>
                              </tr>
      
            </TABLE>      
          </TD>
     </tr>
     
    </TABLE>
   </td >
   </tr>
</TABLE>

 <TABLE height=28 cellSpacing=0 cellPadding=0 width="1024" border=0 align="center">
   <tr bgcolor="#CCCCCC" height="37">
    <td colspan="2" align="center"><span class="STYLE5">旧貌换新颜图片展</span></td></tr>
      <tr><td  valign=top>
      <marquee behavior="scroll" direction=left width="1024"  scrollamount="5" scrolldelay="60" onMouseOver="this.stop()" onMouseOut="this.start()" style="padding: 0px; white-space: nowrap;">
      <%for(int i=0;i<list9.size();i++) 
      {%>
      <a target="cont" href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list9.get(i).get("id") %>"><img src="<%=request.getContextPath()%>/upFile/<%=list9.get(i).get("tupian") %>"  height="150" border="0"></a>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <%} %></marquee>
      </td>
</tr>
                 
              </table>
                       
 <TABLE height=28 cellSpacing=0 cellPadding=0 width="1024" border=0 align="center">
             <TR>
             <TD bgcolor="#336699" width="42%" align="right"><span class="STYLE8"><span class="STYLE6">设为首页</span></span></TD>
              <TD bgcolor="#336699" width="8%">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE8"><span class="STYLE6">加入收藏</span></span></TD>
               <TD bgcolor="#336699" width="8%">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE8"><span class="STYLE6">联系我们</span></span></TD>
                <TD bgcolor="#336699" width="42%">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE8"><span class="STYLE6">网站地图</span></span></TD>
    </TR>
     <TR bgcolor="#336699" height="47">
     <td align="center" colspan="4"><span class="STYLE8"><span class="STYLE6">主办:云南省建设厅村镇建设处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        技术支持:云南官房电子科技有限公司</span></span></td>
     </TR>
              </TABLE>
</TABLE></center>
</BODY>
</HTML>