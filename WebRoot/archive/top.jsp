<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<style type="text/css">
.beixuan{
   position: relative; 
   font-weight:bold
}
.weixuan{
   position: relative; 
}
</style>
<table width="100%" background="${pageContext.request.contextPath}/images/tbg.jpg">
  <tr align="center">
  <c:if test="${length>2}">
    <td width="120"  <c:choose><c:when test="${flag=='file'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/File!list.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">成果展示</a></td>	</c:if>    
  <c:if test="${length<=4}"><td width="120"  <c:choose><c:when test="${flag=='youxiufile'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/File!youxiuList.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">优秀成果展示</a></td></c:if>		
    
    <td width="120" <c:choose><c:when test="${flag=='ren_di'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Ren_di!show.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">人口与用地情况</a></td>
    <td style="height:31px" width="120" <c:choose><c:when test="${flag=='jing_ji'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Jing_ji!show.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">经济发展情况</a></td>
    <td width="120"  <c:choose><c:when test="${flag=='ju_zhu'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Ju_zhu!show.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">村民居住情况</a></td>
    <td width="120"  <c:choose><c:when test="${flag=='ji_chu'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Ji_chu!show.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">基础设施情况</a></td>
    <td width="120"  <c:choose><c:when test="${flag=='dl_sheshi'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Dl_sheshi!show.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">道路交通设施情况</a></td>	
    <td width="120"  <c:choose><c:when test="${flag=='gg_fuwu'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Gg_fuwu!show.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">公共服务设施情况</a></td>		    
    <c:if test="${length==5}">
      <td width="120"  <c:choose><c:when test="${flag=='xzc'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Xzc_ghys!create.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">行政村规划验收评分</a></td>
    </c:if>	
    <c:if test="${length==6}">
      <td width="120"  <c:choose><c:when test="${flag=='zrc'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Zrc_ghys!create.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">自然村规划验收评分</a></td>
    </c:if>	 
    <c:if test="${length<5}">
    <td width="120"  <c:choose><c:when test="${flag=='fuze'}"> background="${pageContext.request.contextPath}/images/t1.jpg" class="beixuan"</c:when> 
                    <c:otherwise> background="${pageContext.request.contextPath}/images/t2.jpg" class="weixuan"</c:otherwise></c:choose>>
                    <a href="${pageContext.request.contextPath}/archive/Fuze!show.do?biao_shi=${biao_shi}&pingfen=${pingfen}&length=${length}">填报责任人负责人</a></td>	
    </c:if>
    <td width="*">&nbsp;</td>	
    </tr>
</table>