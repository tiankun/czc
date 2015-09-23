<%@ page language="java" contentType="text/html; charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>    
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=GBK">
  <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery-ui.js"></script>        
    <script src="http://maps.google.com/maps/api/js?v=3.3&sensor=false" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/gmap3.min.js"></script> 
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/jquery-ui.css"/>
    <style>
      *{
        font-family: verdana;
        font-size: 12px;
      }
      body{
        text-align:center;
      }
      .gmap3{
        margin: 0px auto;
        border: 1px dashed #C0C0C0;
        width: 100%;
        height: 650px;
      }
      .ui-menu .ui-menu-item{
        text-align: left;  
        font-weight: normal;
      }
      .ui-menu .ui-menu-item a.ui-state-hover{
        border: 1px solid red; 
        background: #FFBFBF; 
        color: black;
        font-weight:bold;
      }
    </style>
    
    <script type="text/javascript">
      $(function(){//HYBRID 混合　//TERRAIN 地形　//SATELLITE 卫星图像 //ROADMAP　默认
   $("#test").gmap3({action: 'init',options:{mapTypeId: google.maps.MapTypeId.ROADMAP}},{action:'addMarker',
                  address:"${item.quan_ming}",
                  map:{center:true,zoom:${zoom}},infowindow:{options:{content: '<br/>${item.quan_ming}'}}}
                );

          $('#address').autocomplete({
            //This bit uses the geocoder to fetch address values
            source: function(request, response) {
              $("#test").gmap3({
                action:'getAddress',
                address: request.term,
                callback:function(results){
                  if (!results) return;
                  response($.map(results, function(item) {
                    return {
                      label:  item.formatted_address,
                      value: item.formatted_address,
                      latLng: item.geometry.location
                    }
                  }));
                }
              });
            },
            //This bit is executed upon selection of an address
            select: function(event, ui) {
              $("#test").gmap3(
                {action:'clear', name:'marker'},
                {action:'addMarker',
                  latLng:ui.item.latLng,
                  map:{center:true,zoom:11},
				  infowindow:{options:{content: '<br/>'+ui.item.label}}
                }
              );
            }
          });
          
      });
    </script>
  <body>
 <table width="100%" border="0">
  <tr>
    <td width="84%" class="myInputTitle"><input type="text" id="address" size="60" value="${item.quan_ming}" style="width:100%"></td>
    <td width="16%" align="center" class="myInputTitle"><input type="submit" name="Submit" value="  返  回  " onclick="javascript:history.back();"/></td>
  </tr>
</table> 
    <div id="test" class="gmap3"></div>
	<div style="position:absolute;left:0px;top:642px;width:100%;height:32px;background:#FFFFFF"></div>	
  </body>
</html>
