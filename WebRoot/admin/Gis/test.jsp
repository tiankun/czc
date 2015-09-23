<%@ page language="java" import="java.util.*" contentType="text/html; charset=GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:v="urn:schemas-microsoft-com:vml">
<head>
<meta http-equiv="content-type" content="text/html; charset=GB2312"/>
<title>在地图上显示搜索结果</title>
<style type="text/css">v\:*{behavior:url(#default#VML);}</style>
<script language="javascript" src="http://api.51ditu.com/js/maps.js"></script>
<script language="javascript" src="http://api.51ditu.com/js/search.js"></script>

<script language="javascript">
var map,search;
function showPoint(searchResult)
{
	if(searchResult.count>0)//如果存在搜索结果
	{
		map.clearOverLays();
		var poi=searchResult.searchPoints[0];	//取出第一个搜索结果点
		var point=new LTPoint(poi.point[0],poi.point[1]);	//得到该点的坐标的LTPoint
		map.centerAndZoom(point,0);
		var marker=new LTMarker(point);		//向地图上添加一个标记
		map.addOverLay(marker);
		map.addControl(new LTStandMapControl());
		map.handleMouseScroll(true);//启用鼠标滚轮功能支持，参数true代表使用鼠标指向点位置不变模式
		var name=poi.name;
		LTEvent.bind(marker,"click",marker,function(){this.openInfoWinHtml(name)});	//标记点击的时候弹出信息
	}
	else
	{
		alert('无结果');
	}
}
function onLoad()
{
	map=new LTMaps("mapDiv");
	map.addControl(new LTStandMapControl());
	map.handleMouseScroll(true);//启用鼠标滚轮功能支持，参数true代表使用鼠标指向点位置不变模式
	search=new LTLocalSearch(showPoint);
	map.centerAndZoom("yunnansheng",12);//将地图定位到云南省,改动"yunnansheng"可以将地图定位到其他城市 12,9
}
</script>
</head>
<body onLoad="onLoad()">
	<div id="mapDiv" style="position:absolute;width:100%; height:500px;">
	</div>
	<div style="position:absolute;top:498px; width:100%;background:#FFFFFF"></div>	
	<div style="position:absolute; left:305px; top: 540px; width: 840px;">
在 
  <input type="text" id="city" value="" size="5"/> 市搜索 <input type="text" id="word" value="" size="50"/>
<input type="button" onClick="search.setCity(document.getElementById('city').value);search.search(document.getElementById('word').value);" value="搜索"/>
</div>
</body>
</html>