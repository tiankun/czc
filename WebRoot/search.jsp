<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" language="java" 
 import="java.util.*,java.net.URLEncoder" %>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0044)http://10.0.0.6:6888/YnTown/yntown/index.jsp -->
<HTML><HEAD><TITLE>云南村镇规划建设网</TITLE>
<script type="text/javascript">
function changencod(s)
{

window.location.href='<%=request.getContextPath()%>/site/Infor!search.do?select=<%=URLEncoder.encode(URLEncoder.encode((String)request.getAttribute("infor"),"UTF-8"),"UTF-8")%>&y=1&page='+s;

}
</script>
<STYLE type=text/css>
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
	color: #336699;
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
</STYLE>



<META content="MSHTML 6.00.2900.3492" name=GENERATOR></HEAD>
<BODY style="MARGIN: 0pt">
<%List<Map> list10=(List<Map>)request.getAttribute("list10");
List<Map> list1=(List<Map>)request.getAttribute("list1");

%>
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
   <TABLE  cellSpacing=0 cellPadding=0 width=1024 border=1 align="center">  
   <tr>
   <td valign="top"><br></td><td width=17% valign="top"><div align="left"> 
  </div><TABLE cellSpacing=1 cellPadding=1 width="100%" border=1 style ="border-collapse:collapse"
  >  
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
  <td class="STYLE11" align="left"><a href="<%=request.getContextPath()%>/admin/index.jsp"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;村镇建设网管理系统</font></a></td>
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
                            <a href="http://<%=list10.get(i).get("gaiyao") %>" target="_blank"><font color="#FFFFFF"><%=biaoti %></font></a>
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
    <td width=83% valign="top">
  <TABLE  cellSpacing=1 cellPadding=0 width="100%" border=1 >  
   <tr bgcolor="#CCCCCC" height="37">
    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE5">搜索结果</span></td>
      </tr>
     
     <tr bgcolor="#FFFFFF">
     <td>
       <TABLE  cellSpacing=1 cellPadding=0 width="100%" border=0>
        <%
        if(((String)request.getAttribute("infor")).equals("课件下载")||((String)request.getAttribute("infor")).equals("资料下载"))
        {
        for(int i=0;i<list1.size();i++)
        { String name=list1.get(i).get("wenbieming").toString();
        if(name.length()>70)
        {
        name=name.substring(0,70)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/upFile/<%=list1.get(i).get("wenjian")%>" target="_blank"><%=name %></a>
                            </td>
                            </tr>
                             
                              <%} for(int i=0;i<35-list1.size();i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           </td>
                            </tr>
                              
                              <%}
        }
        else
        {
        for(int i=0;i<list1.size();i++)
        { String name=list1.get(i).get("biaoti").toString();
        if(name.length()>70)
        {
        name=name.substring(0,70)+"...";
        }%>  
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                            <a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=<%=list1.get(i).get("id")%>" target="_blank"><%=name %></a>
                            </td>
                            </tr>
                             
                              <%} for(int i=0;i<35-list1.size();i++)
        { %>
        <tr>
        <td style="FONT-SIZE: 12px" 
                            background=<%=request.getContextPath()%>/image/bg_1.jpg height=27>
                           </td>
                            </tr>
                              
                              <%} 
        }
    %>
                               <TR>
                      <TD>
                        <DIV align=center><STRONG>[本栏目共有<SPAN id=PageCount 
                        style="FONT-WEIGHT: bold; FONT-SIZE: 15px"><%=(Integer)request.getAttribute("totalpage")%></SPAN>页<SPAN 
                        style="FONT-WEIGHT: bold">/</SPAN>此页为第<SPAN id=CurPage 
                        style="FONT-WEIGHT: bold; FONT-SIZE: 15px"><%=(Integer)request.getAttribute("page")%></SPAN>页/每页显示<SPAN class=style5>35</SPAN>条]&nbsp;&nbsp;
                        <A 
                        href="<%=request.getContextPath()%>/site/Infor!search.do?select=<%=URLEncoder.encode(URLEncoder.encode((String)request.getAttribute("infor"),"UTF-8"),"UTF-8")%>&y=1&page=<%=(Integer)request.getAttribute("page")-1%>">上一页 </A>&nbsp;|&nbsp;第
                        <SELECT id=SelectPage style="WIDTH: 50px" 
                        onchange="changencod(this.options[this.options.selectedIndex].value)">
                       
                        <% for(int i=1; i<=(Integer)request.getAttribute("totalpage");i++)
						{%>
                        <option value="<%=i%>" <%=(Integer)request.getAttribute("page")==i?"selected":""%>><%=i %></option> 

                        <% }%></SELECT> 页&nbsp;|&nbsp;<A 
                        href="<%=request.getContextPath()%>/site/Infor!search.do?select=<%=URLEncoder.encode(URLEncoder.encode((String)request.getAttribute("infor"),"UTF-8"),"UTF-8")%>&y=1&page=<%=(Integer)request.getAttribute("page")+1%>">下一页</A> 
                   </DIV></TD></TR>
        
      
  </TABLE>
   </td >
   </tr>
   </TABLE>
   </td>
   </tr>
</TABLE>
 <TABLE height=28 cellSpacing=1 cellPadding=0 width="1024" border=0 align="center">
             <TR>
             <TD bgcolor="#336699" width="42%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE8"><span class="STYLE6">设为首页</span></span></TD>
              <TD bgcolor="#336699" width="8%">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE8"><span class="STYLE6">加入收藏</span></span></TD>
               <TD bgcolor="#336699" width="8%">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE8"><span class="STYLE6">联系我们</span></span></TD>
                <TD bgcolor="#336699" width="42%">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE8"><span class="STYLE6">网站地图</span></span></TD>
    </TR>
     <TR bgcolor="#336699" height="47">
     <td align="center" colspan="4"><span class="STYLE8"><span class="STYLE6">主办:云南省建设厅村镇建设处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        技术支持:云南官房电子科技有限公司</span></span></td>
     </TR>
              </TABLE>
</TABLE>
</BODY></HTML>
