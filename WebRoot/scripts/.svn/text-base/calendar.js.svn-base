 
 /*********************************************************
  JavaScript Document                               
  该文件为输入框内时间输入验证的客户端程序，主要功能为：
	1、根据输入键值验证格式为：2004-05[-03||-03 24:34]的时间，并判断正确性和省略“-”,“ ”,“:”的输入。
  文件主调函数说明如下：
	1、checkYearMonth(obj)——年月类型（2004-03）时间输入验证；
	2、checkDate(obj)——年月日类型（2004-03-01）时间输入验证；
	3、checkDateTime(obj)——年月日时分类型（2004-03-01 23:22）时间输入验证；
	4、参数obj为时间所在的HTML对象，如<input>
  使用说明如下：	
	1、此函数要用onKeyDown时间触发，因为要捕获虚健值； 
	2、具体使用为：<input type="text" name="theDate" onKeyDowm="checkDate(this)">

  ——作者：XXXXXX
  *******************************************************************/

    //This function is used to judge whether or not the year of the date is the leap year. 
	function isLeapForTimeInput(theDate){
		var theYear=parseInt((String)(theDate).substring(0,4));
		if((theYear % 4 == 0 && (theYear % 100 != 0 || theYear % 400 == 0)))
			return true;
		else
		    return false;
	}
    //This function is used to judge the month of the date whether or not be the small month. 
	function isSmallMonthForTimeInput(theDate){
		var theMonth=parseInt((String)(theDate).substring(5,7));
		if(theMonth==4||theMonth==6||theMonth==9||theMonth==11)
			return true;
		else if(theMonth!=2)
		    return false;
	}

    //This function is used to get the position of the cursor. 
	function getCursorPosForTimeInput(obj){
		var strLength=(String)(obj.value).length;
		var length1;
		var length2;
		obj.focus();
		var s=document.selection.createRange();
		s.setEndPoint("EndToStart",obj.createTextRange());
		length2=s.text.length;

		obj.focus();
		var s=document.selection.createRange();
		s.setEndPoint("StartToStart",obj.createTextRange());
		length1=s.text.length;
		if(length2==length1){
			return length2;
		}else if(length1-length2==strLength){
			return -1;
		}
	}
	
	function moveCursorForTimeInput(obj,n){//将obj中光标方向移动n个字符 
		obj.focus(); 
		var rng=document.selection.createRange(); 
		rng.move("character", n); 
		rng.select(); 
	}
	function moveCursorToSelect(obj,n){
		obj.focus(); 
		var rng=document.selection.createRange(); 
		rng.moveStart("character", n); 
		rng.select(); 
	}

	function checkYearMonth(obj){
		var strValue=(String)(obj.value);
		var strLength=strValue.length;
		if(strLength>7){
			obj.value=strValue.substring(0,7);
			strValue=(String)(obj.value);
			strLength=strValue.length;
		}
		var position=getCursorPosForTimeInput(obj);//光标的位置。
		
		if(!(event.keyCode>=37&&event.keyCode<=40)&&event.keyCode!=45&&event.keyCode!=9&&!(event.keyCode>=16&&event.keyCode<=18)){
			if(event.keyCode==8){//
				if(position>=strLength||position==-1){
					event.returnValue=true;
				}
				else if(position==5){
					moveCursorForTimeInput(obj,-1);
					event.returnValue=false;
				}else if(position>0){
					obj.value=strValue.substring(0,position-1)+"0"+strValue.substring(position,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length-1);
					event.returnValue=false;
				}
			}
			else if(event.keyCode==46){
//alert((position>=strLength));			
//alert(strLength);			
				if(position>=strLength||position==-1){
					event.returnValue=true;
				}
				else if(position==4){
					moveCursorForTimeInput(obj,1);
					event.returnValue=false;
				}else if(position==6){
					obj.value=strValue.substring(0,position)+"1"+strValue.substring(position+1,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length+1);
					event.returnValue=false;
				}else if(position>=0){
					obj.value=strValue.substring(0,position)+"0"+strValue.substring(position+1,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length+1);
					event.returnValue=false;
				}
			}
			
			else if(event.keyCode>=48&&event.keyCode<=57){//||position>=10
				if(position>=strLength){//输入框光标在字符串末尾.
					if(position==4){
						obj.value=(String)(obj.value)+"-";
						if(!(event.keyCode>=48&&event.keyCode<=49)){//月份十位数不能大于1
							event.returnValue=false;
						}
					}
					else if(position==5&&!(event.keyCode>=48&&event.keyCode<=49)){
						event.returnValue=false;
					}
					else if(position==6&&(String)(obj.value).substring(5,6)=="1"&&!(event.keyCode>=48&&event.keyCode<=50)){
						event.returnValue=false;
					}
					else if(position==7){
						event.returnValue=false;
					}
				}
				else{//光标在输入框的中间。
					if(position==4){
						if(!(event.keyCode>=48&&event.keyCode<=49)){//月份十位数不能大于1
							event.returnValue=false;
						}
						else{												
							moveCursorToSelect(obj,2);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==5){
						 if(!(event.keyCode>=48&&event.keyCode<=49))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==6){
						if((String)(obj.value).substring(5,6)=="1"&&!(event.keyCode>=48&&event.keyCode<=50))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==7){
						event.returnValue=false;
					}
					else{
						moveCursorToSelect(obj,1);
						moveCursorToSelect(obj,-1);
					}
				}//光标在输入框的中间结束。
			}//if为数字结束结束。
			else{
				event.returnValue=false;
			}
		}
	}

    function checkDate(obj){
		var strValue=(String)(obj.value);
		var strLength=strValue.length;
		if(strLength>10){
			obj.value=strValue.substring(0,10);
			strValue=(String)(obj.value);
			strLength=strValue.length;
		}
		var position=getCursorPosForTimeInput(obj);//光标的位置。
		
		if(!(event.keyCode>=37&&event.keyCode<=40)&&event.keyCode!=45&&event.keyCode!=9&&!(event.keyCode>=16&&event.keyCode<=18)){
	
//alert((event.keyCode==8)+"  "+(position>0)+"  "+(position<strLength)+"  "+(position!=-1));
			if(event.keyCode==8){//
				if(position>=strLength||position==-1){
					event.returnValue=true;
				}
				else if(position==5||position==8){
					moveCursorForTimeInput(obj,-1);
					event.returnValue=false;
				}else if(position==7){
					obj.value=strValue.substring(0,position-1)+"1"+strValue.substring(position,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length-1);
					event.returnValue=false;
				}else if(position>0){
					obj.value=strValue.substring(0,position-1)+"0"+strValue.substring(position,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length-1);
					event.returnValue=false;
				}
			}
			else if(event.keyCode==46){
//alert((position>=strLength));			
//alert(strLength);			
				if(position>=strLength||position==-1){
					event.returnValue=true;
				}
				else if(position==4||position==7){
					moveCursorForTimeInput(obj,1);
					event.returnValue=false;
				}else if(position==6||position==9){
					obj.value=strValue.substring(0,position)+"1"+strValue.substring(position+1,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length+1);
					event.returnValue=false;
				}else if(position>=0){
					obj.value=strValue.substring(0,position)+"0"+strValue.substring(position+1,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length+1);
					event.returnValue=false;
				}
			}
			
			else if(event.keyCode>=48&&event.keyCode<=57){//||position>=10
				if(position>=strLength){//输入框光标在字符串末尾.
					if(position==4){
						obj.value=(String)(obj.value)+"-";
						if(!(event.keyCode>=48&&event.keyCode<=49)){//月份十位数不能大于1
							event.returnValue=false;
						}
					}
					else if(position==5&&!(event.keyCode>=48&&event.keyCode<=49)){
						event.returnValue=false;
					}
					else if(position==6&&(String)(obj.value).substring(5,6)=="1"&&!(event.keyCode>=48&&event.keyCode<=50)){
						event.returnValue=false;
					}
					else if(position==7){
						obj.value=(String)(obj.value)+"-";
						if((String)(obj.value).substring(5,7)=="02"){//isLeapForTimeInput(obj.value)==true&&
							if(!(event.keyCode>=48&&event.keyCode<=50))
								event.returnValue=false;
						}
						else{
							if(!(event.keyCode>=48&&event.keyCode<=51))
								event.returnValue=false;
						}
					}
					else if(position==8){
						if((String)(obj.value).substring(5,7)=="02"){//isLeapForTimeInput(obj.value)==true&&
							if(!(event.keyCode>=48&&event.keyCode<=50))
								event.returnValue=false;
						}
						else{
							if(!(event.keyCode>=48&&event.keyCode<=51))
								event.returnValue=false;
						}
					}
					else if(position==9){
						if(isLeapForTimeInput(obj.value)==true&&((String)(obj.value).substring(5,7)=="02")&&(String)(obj.value).substring(8,9)=="2"&&!(event.keyCode>=48&&event.keyCode<=56))
							event.returnValue=false;
						else if(isSmallMonthForTimeInput(obj.value)==true&&(String)(obj.value).substring(8,9)=="3"&&(event.keyCode!=48))
							event.returnValue=false;
						else if(isSmallMonthForTimeInput(obj.value)==false&&(String)(obj.value).substring(8,9)=="3"&&!(event.keyCode>=48&&event.keyCode<=49))
							event.returnValue=false;
					}
					else if(position==10){
						event.returnValue=false;
					}
				}
				else{//光标在输入框的中间。
					if(position==4){
						if(!(event.keyCode>=48&&event.keyCode<=49)){//月份十位数不能大于1
							event.returnValue=false;
						}
						else{												
							moveCursorToSelect(obj,2);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==5){
						 if(!(event.keyCode>=48&&event.keyCode<=49))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==6){
						if((String)(obj.value).substring(5,6)=="1"&&!(event.keyCode>=48&&event.keyCode<=50))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
		
					else if(position==7){
						if(!(event.keyCode>=48&&event.keyCode<=51))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,2);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==8){
						if(isLeapForTimeInput(obj.value)==true&&(String)(obj.value).substring(5,7)=="02"){
							if(!(event.keyCode>=48&&event.keyCode<=50))
								event.returnValue=false;
						}
						else if(!(event.keyCode>=48&&event.keyCode<=51))
								event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==9){
						if(isLeapForTimeInput(obj.value)==true&&(String)(obj.value).substring(8,9)=="2"&&!(event.keyCode>=48&&event.keyCode<=56))
							event.returnValue=false;
						else if(isSmallMonthForTimeInput(obj.value)==true&&(String)(obj.value).substring(8,9)=="3"&&(event.keyCode!=48))
							event.returnValue=false;
						else if(isSmallMonthForTimeInput(obj.value)==false&&(String)(obj.value).substring(8,9)=="3"&&!(event.keyCode>=48&&event.keyCode<=49))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==10){
						event.returnValue=false;
					}
					else{
						moveCursorToSelect(obj,1);
						moveCursorToSelect(obj,-1);
					}
				}//光标在输入框的中间结束。
			}//if为数字结束结束。
			else{
				event.returnValue=false;
			}
		}
	}

	function checkDateTime(obj){
		var strValue=(String)(obj.value);
		var strLength=strValue.length;
		if(strLength>16){
			obj.value=strValue.substring(0,16);
			strValue=(String)(obj.value);
			strLength=strValue.length;
		}
		var position=getCursorPosForTimeInput(obj);//光标的位置。
		
		if(!(event.keyCode>=37&&event.keyCode<=40)&&event.keyCode!=45&&event.keyCode!=9&&!(event.keyCode>=16&&event.keyCode<=18)){
	
//alert((event.keyCode==8)+"  "+(position>0)+"  "+(position<strLength)+"  "+(position!=-1));
			if(event.keyCode==8){//
				if(position>=strLength||position==-1){
					event.returnValue=true;
				}
				else if(position==5||position==8||position==11||position==14){
					moveCursorForTimeInput(obj,-1);
					event.returnValue=false;
				}else if(position==7||position==10||position==13){
					obj.value=strValue.substring(0,position-1)+"1"+strValue.substring(position,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length-1);
					event.returnValue=false;
				}else if(position>0){
					obj.value=strValue.substring(0,position-1)+"0"+strValue.substring(position,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length-1);
					event.returnValue=false;
				}
			}
			else if(event.keyCode==46){
//alert((position>=strLength));			
//alert(strLength);			
				if(position>=strLength||position==-1){
					event.returnValue=true;
				}
				else if(position==4||position==7||position==10||position==13){
					moveCursorForTimeInput(obj,1);
					event.returnValue=false;
				}else if(position==6||position==9||position==12||position==15){
					obj.value=strValue.substring(0,position)+"1"+strValue.substring(position+1,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length+1);
					event.returnValue=false;
				}else if(position>=0){
					obj.value=strValue.substring(0,position)+"0"+strValue.substring(position+1,strValue.length);
					moveCursorForTimeInput(obj,position-strValue.length+1);
					event.returnValue=false;
				}
			}
			
			else if(event.keyCode>=48&&event.keyCode<=57){//||position>=10
				if(position>=strLength){//输入框光标在字符串末尾.
					if(position==4){
						obj.value=(String)(obj.value)+"-";
						if(!(event.keyCode>=48&&event.keyCode<=49)){//月份十位数不能大于1
							event.returnValue=false;
						}
					}
					else if(position==5&&!(event.keyCode>=48&&event.keyCode<=49)){
						event.returnValue=false;
					}
					else if(position==6&&(String)(obj.value).substring(5,6)=="1"&&!(event.keyCode>=48&&event.keyCode<=50)){
						event.returnValue=false;
					}
					else if(position==7){
						obj.value=(String)(obj.value)+"-";
						if((String)(obj.value).substring(5,7)=="02"){//isLeapForTimeInput(obj.value)==true&&
							if(!(event.keyCode>=48&&event.keyCode<=50))
								event.returnValue=false;
						}
						else{
							if(!(event.keyCode>=48&&event.keyCode<=51))
								event.returnValue=false;
						}
					}
					else if(position==8){
						if((String)(obj.value).substring(5,7)=="02"){//isLeapForTimeInput(obj.value)==true&&
							if(!(event.keyCode>=48&&event.keyCode<=50))
								event.returnValue=false;
						}
						else{
							if(!(event.keyCode>=48&&event.keyCode<=51))
								event.returnValue=false;
						}
					}
					else if(position==9){
						if(isLeapForTimeInput(obj.value)==true&&((String)(obj.value).substring(5,7)=="02")&&(String)(obj.value).substring(8,9)=="2"&&!(event.keyCode>=48&&event.keyCode<=56))
							event.returnValue=false;
						else if(isSmallMonthForTimeInput(obj.value)==true&&(String)(obj.value).substring(8,9)=="3"&&(event.keyCode!=48))
							event.returnValue=false;
						else if(isSmallMonthForTimeInput(obj.value)==false&&(String)(obj.value).substring(8,9)=="3"&&!(event.keyCode>=48&&event.keyCode<=49))
							event.returnValue=false;
					}
					else if(position==10){
						obj.value=(String)(obj.value)+" ";
						if(!(event.keyCode>=48&&event.keyCode<=50))
							event.returnValue=false;
					}
					else if(position==11){
						if(!(event.keyCode>=48&&event.keyCode<=50))
							event.returnValue=false;
					}
					else if(position==12){
						if((String)(obj.value).substring(11,12)=="2"&&!(event.keyCode>=48&&event.keyCode<=52))
							event.returnValue=false;
					}
					else if(position==13){
						obj.value=(String)(obj.value)+":";
						if(!(event.keyCode>=48&&event.keyCode<=53))
							event.returnValue=false;
					}
					else if(position==14){
						if(!(event.keyCode>=48&&event.keyCode<=53))
							event.returnValue=false;
					}
					else if(position==16){
						event.returnValue=false;
					}
				}
				else{//光标在输入框的中间。
					if(position==4){
						if(!(event.keyCode>=48&&event.keyCode<=49)){//月份十位数不能大于1
							event.returnValue=false;
						}
						else{												
							moveCursorToSelect(obj,2);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==5){

						 if(!(event.keyCode>=48&&event.keyCode<=49))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==6){
						if((String)(obj.value).substring(5,6)=="1"&&!(event.keyCode>=48&&event.keyCode<=50))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
		
					else if(position==7){
						if(!(event.keyCode>=48&&event.keyCode<=51))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,2);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==8){
						if(isLeapForTimeInput(obj.value)==true&&(String)(obj.value).substring(5,7)=="02"){
							if(!(event.keyCode>=48&&event.keyCode<=50))
								event.returnValue=false;
						}
						else if(!(event.keyCode>=48&&event.keyCode<=51))
								event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==9){
						if(isLeapForTimeInput(obj.value)==true&&(String)(obj.value).substring(8,9)=="2"&&!(event.keyCode>=48&&event.keyCode<=56))
							event.returnValue=false;
						else if(isSmallMonthForTimeInput(obj.value)==true&&(String)(obj.value).substring(8,9)=="3"&&(event.keyCode!=48))
							event.returnValue=false;
						else if(isSmallMonthForTimeInput(obj.value)==false&&(String)(obj.value).substring(8,9)=="3"&&!(event.keyCode>=48&&event.keyCode<=49))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==10){
						if(!(event.keyCode>=48&&event.keyCode<=49))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,2);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==11){
						if(!(event.keyCode>=48&&event.keyCode<=50))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==12){
						if((String)(obj.value).substring(11,12)=="2"&&!(event.keyCode>=48&&event.keyCode<=52))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==13){
						if(!(event.keyCode>=48&&event.keyCode<=53))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,2);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==14){
						if(!(event.keyCode>=48&&event.keyCode<=53))
							event.returnValue=false;
						else{												
							moveCursorToSelect(obj,1);
							moveCursorToSelect(obj,-1);
						}
					}
					else if(position==16){
						event.returnValue=false;
					}
					else{
						moveCursorToSelect(obj,1);
						moveCursorToSelect(obj,-1);
					}
				}//光标在输入框的中间结束。
			}//if为数字结束结束。
			else{
				event.returnValue=false;
			}
		}
	}



document.write("<div id=infuntionCalendarDiv style='position: absolute; z-index: 9999; width: 144; height: 190; display: none'>");
document.write("<iframe name=infuntionCalendarIframe scrolling=no frameborder=0 width=100% height=100%></iframe></div>");
function writeIframe()
{
    var strIframe =""+
	"<html><head><meta http-equiv='Content-Type' content='text/html; charset=gb2312'>"+
	"<style>"+
    "*{font-size: 12px; font-family: 宋体}"+
    ".bg{  color: "+ WebCalendar.lightColor +"; cursor: default; background-color: "+ WebCalendar.darkColor +";}"+
    "table#tableWeek td{ color: "+ WebCalendar.lightColor +";}"+
    "table#tableDay  td{ font-weight: bold;}"+
    "td#meizzYearHead, td#meizzYearMonth{color: "+ WebCalendar.wordColor +"}"+
    ".out { text-align: center; border-top: 1px solid "+ WebCalendar.lightColor +"; border-left: 1px solid "+ WebCalendar.lightColor +";"+
    "border-right: 1px solid "+ WebCalendar.darkBorder +"; border-bottom: 1px solid "+ WebCalendar.darkBorder +";}"+
    ".over{ text-align: center; border-top: 1px solid #FFFFFF; border-left: 1px solid #FFFFFF;"+
    "border-bottom: 1px solid "+ WebCalendar.darkBorder +"; border-right: 1px solid "+ WebCalendar.darkBorder +"}"+
    "input{ border: 1px solid "+ WebCalendar.darkColor +"; padding-top: 1px; height: 18; cursor: hand;"+
    "       color:"+ WebCalendar.wordColor +"; background-color: "+ WebCalendar.btnBgColor +"}"+
    "</style>"+
	"</head>"+
	
	"<body onselectstart='return false' style='margin: 0px' oncontextmenu='return false'>"+
	"<form name=meizz>";

    //如果支持拖动，则写一个控件拖动的函数和快捷键的函数。
	if (WebCalendar.drag){ 
	strIframe += ""+
	"<scr"+"ipt language=javascript>"+
    "	var drag=false, cx=0, cy=0, o = parent.WebCalendar.calendar; "+
	"	function document.onmousemove(){"+
    "		if(parent.WebCalendar.drag && drag){"+
	"			if(o.style.left=='') o.style.left=0; "+
	"			if(o.style.top=='') o.style.top=0;"+
    "			o.style.left = parseInt(o.style.left) + window.event.clientX-cx;"+
    "			o.style.top  = parseInt(o.style.top)  + window.event.clientY-cy;"+
	"		}"+
	"	}"+
    "	function document.onkeydown(){ "+
	"		switch(window.event.keyCode){  "+
	"			case 27 : parent.hiddenCalendar(); break;"+
    "			case 37 : parent.prevM(); parent.returnDate();break; "+
	"			case 38 : parent.prevY(); parent.returnDate();break; "+
	"			case 39 : parent.nextM(); parent.returnDate();break; "+
	"			case 40 : parent.nextY(); parent.returnDate();break;"+
    "			case 78 : parent.WebCalendar.thisYear=new Date().getFullYear();"+
	"					  parent.WebCalendar.thisMonth=new Date().getMonth()+1;"+
	"					  parent.WebCalendar.thisDate=new Date().getDate();"+
	"					  parent.WebCalendar.thisHour=new Date().getHours();"+
	"					  parent.WebCalendar.thisMinute=new Date().getMinutes();"+
	"					  parent.WebCalendar.isReturnDate=true;"+
	"					  parent.writeCalendar();"+
	"					  break;"+
    "			case 67 : parent.WebCalendar.objExport.value='';"+
	"					  break;"+
	"		} "+
	"		window.event.keyCode = 0; "+
	"		window.event.returnValue= false;"+
	"	}"+
    "	function dragStart(){"+
	"		cx=window.event.clientX; "+
	"		cy=window.event.clientY; "+
	"		drag=true;"+
	"	}"+
	"</scr"+"ipt>"
	}

	//年、月、时、分下拉框
	strIframe += ""+
	"<select name=tmpYearSelect  onblur='parent.hiddenSelect(this)' style='z-index:1;position:absolute;top:3;left:18;display:none'"+
    "  onchange='parent.WebCalendar.isReturnDate=true;parent.WebCalendar.thisYear =this.value; parent.hiddenSelect(this); parent.writeCalendar();'>"+
	"</select>"+
    "<select name=tmpMonthSelect onblur='parent.hiddenSelect(this)' style='z-index:1; position:absolute;top:3;left:74;display:none'"+
    "  onchange='parent.WebCalendar.isReturnDate=true;parent.WebCalendar.thisMonth=this.value; parent.hiddenSelect(this); parent.writeCalendar();'>"+
	"</select>"+
	"<select name=tmpHourSelect  onblur='parent.hiddenSelect(this)' style='z-index:1;position:absolute;top:3;left:18;display:none'"+
    "  onchange='parent.WebCalendar.isReturnDate=true;parent.WebCalendar.thisHour =this.value; parent.hiddenSelect(this); parent.writeCalendar();'>"+
	"</select>"+
    "<select name=tmpMinuteSelect onblur='parent.hiddenSelect(this)' style='z-index:1; position:absolute;top:3;left:74;display:none'"+
    "  onchange='parent.WebCalendar.isReturnDate=true;parent.WebCalendar.thisMinute=this.value; parent.hiddenSelect(this); parent.writeCalendar();'>"+
	"</select>";

	if(WebCalendar.timeType=="yearMonth"){//如果是年月。
		strIframe +=""+
		"<table id=tableMain width=110 class=bg border=0 cellspacing=1 cellpadding=0>"+
		"  <tr height=19>"+
		"    <td width=100% bgcolor='"+ WebCalendar.lightColor +"'>"+
		"      <table width=100% id=tableHead border=0 cellspacing=1 cellpadding=0>"+
		"        <tr align=center height=19>"+
		"          <td width=16 class=bg title='向前翻 1 年&#13;快捷键：↑' style='cursor: hand' onclick='parent.prevY()'><b>&lt;&lt;</b></td>"+
		"          <td width=16 class=bg title='向前翻 1 月&#13;快捷键：←' style='cursor: hand' onclick='parent.prevM()'><b>&lt;</b></td>"+
		"          <td width=46 id=meizzYearHead align=center title='点击此处选择年份' onclick='parent.funYearSelect(parseInt(this.innerText,10))'"+
		"              onmouseover='this.bgColor=parent.WebCalendar.overColor; this.style.color=parent.WebCalendar.lightColor'"+
		"              onmouseout='this.bgColor=parent.WebCalendar.lightColor; this.style.color=parent.WebCalendar.wordColor'></td>"+
		"          <td width=16 class=bg title='向后翻 1 月&#13;快捷键：→' style='cursor: hand' onclick='parent.nextM()'><b>&gt;</b></td>"+
		"          <td width=16 class=bg title='向前翻 1 年&#13;快捷键：↑' style='cursor: hand' onclick='parent.nextY()'><b>&gt;&gt;</b></td>"+
		"        </tr>"+
		"      </table>"+
		"    </td>"+
		"  </tr>"+
		"  <tr>"+
		"    <td valign=top width=100% bgcolor='"+ WebCalendar.lightColor +"'>"+
		"      <table id=tableMouth height=120 width=100% border=0 cellspacing=1 cellpadding=0>";
		for(var i=0; i<4; i++){ 
			strIframe += "<tr height=19>";
			for(var j=0; j<3; j++){
				strIframe += "<td class=out id='infuntion"+(i*3+j)+"' title='"+WebCalendar.thisYear+"-"+(i*3+j+1)+"' "+
				    "onclick=parent.selectDate('"+(i*3+j+1)+"') "+
					"onmouseover=parent.monthMouseOver() onmouseout=parent.monthMouseOut()>"+(i*3+j+1)+"月</td>";
			}
			strIframe += "</tr>";
		}
		 strIframe += "<tr height=19><td colspan=3 align=center class=out title='"+ WebCalendar.regInfo +"'><input style=' background-color: "+
		 WebCalendar.btnBgColor +";cursor: hand; width: 100%; height: 100%; border: 0' onfocus='this.blur()'"+
		"type=button value='&nbsp; 关闭' onclick='parent.hiddenCalendar()'></td></tr>"+
		"      </table>"+
		"    </td>"+
		"  </tr>"+
		"<table>";
		with(WebCalendar.iframe)
		{
			document.writeln(strIframe); document.close();
			infuntionCalendarDiv.style.width  = tableMain.width;
			infuntionCalendarDiv.style.height = tableMain.height;
			for(var i=0; i<12; i++){
				WebCalendar.monthObj[i] = eval("infuntion"+ i);
				WebCalendar.monthObj[i].onmouseover = monthMouseOver;
				WebCalendar.monthObj[i].onmouseout  = monthMouseOut;
				WebCalendar.monthObj[i].onclick     = selectDate;
			}
		}
	}else if(WebCalendar.timeType=="date"||WebCalendar.timeType=="dateTime"){//如果是年月日。
		infuntionCalendarDiv.style.height=170;
		strIframe +=""+
		"<table id=tableMain width=142 class=bg border=0 cellspacing=1 cellpadding=0>"+
		"  <tr height=19>"+
		"    <td width=140 bgcolor='"+ WebCalendar.lightColor +"'>"+
		"      <table width=140 id=tableHead border=0 cellspacing=1 cellpadding=0>"+
		"        <tr align=center height=19>"+
		"          <td width=16 class=bg title='向前翻 1 年&#13;快捷键：↑' style='cursor: hand' onclick='parent.prevY()'><b>&lt;&lt;</b></td>"+
		"          <td width=16 class=bg title='向前翻 1 月&#13;快捷键：←' style='cursor: hand' onclick='parent.prevM()'><b>&lt;</b></td>"+
		"          <td width=43 id=meizzYearHead align=center title='点击此处选择年份' onclick='parent.funYearSelect(parseInt(this.innerText,10))'"+
		"              onmouseover='this.bgColor=parent.WebCalendar.darkColor; this.style.color=parent.WebCalendar.lightColor'"+
		"              onmouseout='this.bgColor=parent.WebCalendar.lightColor; this.style.color=parent.WebCalendar.wordColor'></td>"+
		"          <td width=33 id=meizzYearMonth align=center title='点击此处选择月份' onclick='parent.funMonthSelect(parseInt(this.innerText,10))'"+
		"              onmouseover='this.bgColor=parent.WebCalendar.darkColor; this.style.color=parent.WebCalendar.lightColor'"+
		"              onmouseout='this.bgColor=parent.WebCalendar.lightColor; this.style.color=parent.WebCalendar.wordColor'></td>"+
		"          <td width=16 class=bg title='向后翻 1 月&#13;快捷键：→' style='cursor: hand' onclick='parent.nextM()'><b>&gt;</b></td>"+
		"          <td width=16 class=bg title='向前翻 1 年&#13;快捷键：↑' style='cursor: hand' onclick='parent.nextY()'><b>&gt;&gt;</b></td>"+
		"        </tr>"+
		"      </table>"+
		"    </td>"+
		"  </tr>"+
		"  <tr>"+
		"    <td height=20>"+
		"      <table id=tableWeek border=1 width=140 cellpadding=0 cellspacing=0 ";
		if(WebCalendar.drag)//定义是否拖动
		{
			strIframe += "onmousedown='dragStart()' onmouseup='drag=false' onmouseout='drag=false'";
		}
	
		strIframe += " borderColorLight='"+ WebCalendar.darkColor +"' borderColorDark='"+ WebCalendar.lightColor +"'>"+
		"        <tr align=center><td height=20>日</td><td>一</td><td>二</td><td>三</td><td>四</td><td>五</td><td>六</td></tr>"+
		"      </table>"+
		"    </td>"+
		"  </tr>"+
		"  <tr>"+
		"    <td valign=top width=140 bgcolor='"+ WebCalendar.lightColor +"'>"+
		"      <table id=tableDay height=120 width=140 border=0 cellspacing=1 cellpadding=0>";
			 for(var i=0; i<5; i++){
				 strIframe += "<tr>";
			 	 for(var j=0; j<7; j++)
				 	strIframe += "<td class=out id='meizzDay"+ (i*7+j) +"'></td>"; strIframe += "</tr>";
			 }
			 strIframe += "<tr>";
			 for(var i=35; i<40; i++) 
				 strIframe += "<td class=out id='meizzDay"+ i +"'></td>";
			 strIframe +="<td colspan=2 align=center class=out title='"+ WebCalendar.regInfo +"'><input style=' background-color: "+
			 WebCalendar.btnBgColor +";cursor: hand; padding-top: 4px; width: 100%; height: 100%; border: 0' onfocus='this.blur()'"+
			 "type=button value='&nbsp; 关闭' onclick='parent.hiddenCalendar()'></td></tr>"+
		"      </table>"+
		"    </td>"+
		"  </tr>";
		if(WebCalendar.timeType=="dateTime")//如果是年月日时分。
		{
			infuntionCalendarDiv.style.height=190;
			strIframe +=""+
			"  <tr height=19>"+
			"    <td width=140 bgcolor='"+ WebCalendar.lightColor +"'>"+
			"      <table width=140 id=tableTail border=0 cellspacing=1 cellpadding=0>"+
			"        <tr align=center height=19>"+
			"          <td width=16 class=bg title='向前翻 1 小时' style='cursor: hand' onclick='parent.prevH()'><b>&lt;&lt;</b></td>"+
			"          <td width=16 class=bg title='向前翻 1 分钟' style='cursor: hand' onclick='parent.prevMi()'><b>&lt;</b></td>"+
			"          <td width=43 id=meizzHour align=center title='点击此处选择小时' onclick='parent.funHourSelect(parseInt(this.innerText,10))'"+
			"              onmouseover='this.bgColor=parent.WebCalendar.darkColor; this.style.color=parent.WebCalendar.lightColor'"+
			"              onmouseout='this.bgColor=parent.WebCalendar.lightColor; this.style.color=parent.WebCalendar.wordColor'></td>"+
			"          <td width=33 id=meizzMinute align=center title='点击此处选择分钟' onclick='parent.funMinuteSelect(parseInt(this.innerText,10))'"+
			"              onmouseover='this.bgColor=parent.WebCalendar.darkColor; this.style.color=parent.WebCalendar.lightColor'"+
			"              onmouseout='this.bgColor=parent.WebCalendar.lightColor; this.style.color=parent.WebCalendar.wordColor'></td>"+
			"          <td width=16 class=bg title='向后翻 1 分钟' style='cursor: hand' onclick='parent.nextMi()'><b>&gt;</b></td>"+
			"          <td width=16 class=bg title='向前翻 1 小时' style='cursor: hand' onclick='parent.nextH()'><b>&gt;&gt;</b></td>"+
			"        </tr>"+
			"      </table>"+
			"    </td>"+
			"  </tr> ";
		}
		strIframe += "<table>";
		strIframe +="</form></div></body></html>";
		   
		with(WebCalendar.iframe)
		{
			document.writeln(strIframe); 
			document.close();
			infuntionCalendarDiv.style.width = tableMain.width;
			for(var i=0; i<40; i++){
				WebCalendar.dayObj[i] = eval("meizzDay"+ i);
				WebCalendar.dayObj[i].onmouseover = dayMouseOver;
				WebCalendar.dayObj[i].onmouseout  = dayMouseOut;
				WebCalendar.dayObj[i].onclick     = selectDate;
			}
		}
	}
		
}
function WebCalendar() //初始化日历的设置
{
    this.regInfo    = "Calendar ver 1.0&#13;"
//	this.regInfo   += "作者：meizz(梅花雪疏影横斜)&#13;";
	this.regInfo   += "&#13;&#13;关闭控件快捷键：[Esc]&#13;当前时间快捷键：N(Now)&#13;清空时间快捷键：C(Clear)";
    
	this.daysMonth  = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
    this.day        = new Array(40);            //定义日历展示用的日期数组
    this.dayObj     = new Array(40);            //定义日期展示日期控件数组

	this.month      = new Array(12);          //定义日历展示用的月度数组
    this.monthObj   = new Array(12);          //定义日期展示月度控件数组

	this.dateStyle  = null;                     //保存格式化后日期数组
    
	this.objExport  = null;                     //日历回传的显示控件
    this.eventSrc   = null;                     //日历显示的触发控件
    
	this.inputDate  = null;                     //转化外的输入的日期(d/m/yyyy)
    
	this.thisYear   = new Date().getFullYear(); //定义年的变量的初始值
    this.thisMonth  = new Date().getMonth()+ 1; //定义月的变量的初始值
    this.thisDay    = new Date().getDate();     //定义日的变量的初始值
    this.thisHour   = new Date().getHours();     //定义日的变量的初始值
    this.thisMinute = new Date().getMinutes();     //定义日的变量的初始值
	
    this.nowTimeStr    = "";                     //现在的日期(d/m/yyyy)
    this.inputTimeStr  = "";                     //外部输入的时间字符串

	this.today      = this.thisDay +"/"+ this.thisMonth +"/"+ this.thisYear;   //今天(d/m/yyyy)
    this.iframe     = window.frames("infuntionCalendarIframe"); //日历的 iframe 载体
    this.calendar   = getObjectById("infuntionCalendarDiv");  //日历的层
    this.dateReg    = /^(\d{1,4})(-|\/|.)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2})$/;           //日历格式验证的正则式

    this.yearFall   = 50;           //定义年下拉框的年差值

    this.timeType   = "";           //时间类型，dateTime年月日时分，还是年月日date，还是年月yearMonth
	
	this.isReturnDate=true;		 //判断是否在改变的时候返回时间。
	
	//样式相关。
	this.drag       = true;        //是否允许拖动
    this.darkColor  = "#80A6F6";    //控件的暗色
    this.lightColor = "#FFFFFF";    //控件的亮色#80A6F6 
    this.btnBgColor = "#FFF5A0";    //控件的按钮背景色
    this.wordColor  = "black";    //控件的文字颜色
    this.wordDark   = "#999999";    //控件的暗文字颜色
    this.dayBgColor = "#e9effd";    //日期数字背景色
    this.todayColor = "#F5CF84";    //今天在日历上的标示背景色
    this.curDateColor ="#DCFF00";    //选中的日期在日历上的标示背景色
    this.darkBorder = "#80A66";    //日期显示的立体表达色
    this.overColor = "#CFCFCF";    //鼠标移上去时的背景色
/*
    this.darkColor  = "#FF6347";    //控件的暗色
    this.lightColor = "#FFFFFF";    //控件的亮色
    this.btnBgColor = "#FFF5A0";    //控件的按钮背景色
    this.wordColor  = "#000040";    //控件的文字颜色
    this.wordDark   = "#DCDCDC";    //控件的暗文字颜色
    this.dayBgColor = "#FFFACD";    //日期数字背景色
    this.todayColor = "#FF9933";    //今天在日历上的标示背景色
    this.darkBorder = "#FFE4C4";    //日期显示的立体表达色
*/
}   

var WebCalendar = new WebCalendar();//定义一个控件对象。

function yearMonth(){ //年月类型主调函数
	if (arguments.length == 1){
		WebCalendar.eventSrc =arguments[0];
		WebCalendar.objExport=arguments[0];
	}else if(arguments.length == 0){
		WebCalendar.eventSrc =window.event.srcElement;
		WebCalendar.objExport=window.event.srcElement;
	}else if(arguments.length == 2){
		WebCalendar.eventSrc =arguments[0];
		WebCalendar.objExport=arguments[1];
	}else if(arguments.length > 2){
		alert("对不起！传入本控件的参数太多！");
		return;
	}
	
	with(WebCalendar){
		timeType   = "yearMonth";
		thisYear   = new Date().getFullYear(); //定义年的变量的初始值
		thisMonth  = new Date().getMonth()+ 1; //定义月的变量的初始值
	}
	calendar();
}

function date(){ //年月日类型主调函数
	if (arguments.length == 1){
		WebCalendar.eventSrc =arguments[0];
		WebCalendar.objExport=arguments[0];
	}else if(arguments.length == 0){
		WebCalendar.eventSrc =window.event.srcElement;
		WebCalendar.objExport=window.event.srcElement;
	}else if(arguments.length == 2){
		WebCalendar.eventSrc =arguments[0];
		WebCalendar.objExport=arguments[1];
	}else if(arguments.length > 2){
		alert("对不起！传入本控件的参数太多！");
		return;
	}

	with(WebCalendar){
		timeType   = "date";
		thisYear   = new Date().getFullYear(); //定义年的变量的初始值
		thisMonth  = new Date().getMonth()+ 1; //定义月的变量的初始值
		thisDay    = new Date().getDate();     //定义日的变量的初始值
	}
	calendar();
}

function dateTime(){ //年月日时分函数主调函数
	if (arguments.length == 1){
		WebCalendar.eventSrc =arguments[0];
		WebCalendar.objExport=arguments[0];
	}else if(arguments.length == 0){
		WebCalendar.eventSrc =window.event.srcElement;
		WebCalendar.objExport=window.event.srcElement;
	}else if(arguments.length == 2){
		WebCalendar.eventSrc =arguments[0];
		WebCalendar.objExport=arguments[1];
	}else if(arguments.length > 2){
		alert("对不起！传入本控件的参数太多！");
		return;
	}

	with(WebCalendar){
		timeType   = "dateTime";
		thisYear   = new Date().getFullYear(); //定义年的变量的初始值
		thisMonth  = new Date().getMonth()+ 1; //定义月的变量的初始值
		thisDay    = new Date().getDate();     //定义日的变量的初始值
		thisHour   = new Date().getHours();    //定义日的变量的初始值
		thisMinute = new Date().getMinutes();  //定义日的变量的初始值
	}
	calendar();
}

function calendar() //函数
{
	writeIframe();
	
	adjustCalendarPosition();
	
	WebCalendar.nowTimeStr=(String)(WebCalendar.thisYear+"-"+appendZero(WebCalendar.thisMonth)+"-"+appendZero(WebCalendar.thisDay)+" "+appendZero(WebCalendar.thisHour)+":"+appendZero(WebCalendar.thisMinute));

	WebCalendar.objExport.onkeydown  = checkDateFor;
	WebCalendar.objExport.onkeyup    = matchReg;
	WebCalendar.objExport.onblur     = preMatchReg;
	WebCalendar.objExport.ondblclick = preSelectTime;
	WebCalendar.objExport.style.imeMode="Disabled";

	
	matchRegPrimory();
}

function adjustCalendarPosition() //调整控件的位置
{
	var objEventSrc=WebCalendar.eventSrc;

	var styleOfCalendar = WebCalendar.calendar.style; 

    if(WebCalendar.timeType!="yearMonth")
		WebCalendar.iframe.tableWeek.style.cursor = WebCalendar.drag ? "move" : "default";
	
	var t = objEventSrc.offsetTop,  h = objEventSrc.clientHeight, l = objEventSrc.offsetLeft, p = objEventSrc.type;
	while (objEventSrc = objEventSrc.offsetParent){
		t += objEventSrc.offsetTop; 
		l += objEventSrc.offsetLeft;
	}
    
	styleOfCalendar.display = ""; 
    
	var cw = WebCalendar.calendar.clientWidth, ch = WebCalendar.calendar.clientHeight;
    var dw = document.body.clientWidth, dl = document.body.scrollLeft, dt = document.body.scrollTop;
    
    if (document.body.clientHeight + dt - t - h >= ch) 
		styleOfCalendar.top = (p=="image")? t + h : t + h + 6;
    else 
		styleOfCalendar.top  = (t - dt < ch) ? ((p=="image")? t + h : t + h + 6) : t - ch;
    if (dw + dl - l >= cw) 
		styleOfCalendar.left = l; 
	else 
		styleOfCalendar.left = (dw >= cw) ? dw - cw + dl : dl;
}

function matchRegPrimory(){
	//根据当前输入框的日期显示日历的年月
    try{
		with(WebCalendar){
			inputTimeStr=(String)(WebCalendar.objExport.value);
			inputTimeStr=inputTimeStr+nowTimeStr.substring(inputTimeStr.length,nowTimeStr.length);
            dateStyle =inputTimeStr.match(dateReg);
			if (dateStyle == null)
            {
                writeCalendar(); 
				return false;
            }
            else
            {
                thisYear  = parseInt(WebCalendar.dateStyle[1], 10);
                thisMonth = parseInt(WebCalendar.dateStyle[3], 10);
                thisDay   = parseInt(WebCalendar.dateStyle[4], 10);
                thisHour  = parseInt(WebCalendar.dateStyle[5], 10);
                thisMinute= parseInt(WebCalendar.dateStyle[6], 10);
                inputDate = parseInt(WebCalendar.thisDay, 10) +"/"+ 
					parseInt(WebCalendar.thisMonth, 10) +"/"+ 
					parseInt(WebCalendar.thisYear, 10); 
				writeCalendar();
			}
        }  
    }  
	catch(e)
	{
		writeCalendar();
	}
}

function matchReg(){
	//根据当前输入框的日期显示日历的年月
    try{
		WebCalendar.isReturnDate=false;
		with(WebCalendar){
			inputTimeStr=(String)(WebCalendar.objExport.value);
			inputTimeStr=inputTimeStr+nowTimeStr.substring(inputTimeStr.length,nowTimeStr.length);
			dateStyle =inputTimeStr.match(dateReg);
			if (dateStyle == null)
            {
				WebCalendar.isReturnDate=true;
                writeCalendar(); 
				return false;
            }
            else
            {
                thisYear  = parseInt(WebCalendar.dateStyle[1], 10);
                thisMonth = parseInt(WebCalendar.dateStyle[3], 10);
                thisDay   = parseInt(WebCalendar.dateStyle[4], 10);
                thisHour  = parseInt(WebCalendar.dateStyle[5], 10);
                thisMinute= parseInt(WebCalendar.dateStyle[6], 10);
                inputDate = parseInt(WebCalendar.thisDay, 10) +"/"+ 
					parseInt(WebCalendar.thisMonth, 10) +"/"+ 
					parseInt(WebCalendar.thisYear, 10); 
				writeCalendar();
				return true;
			}
        }  
    }  
	catch(e)
	{
		WebCalendar.isReturnDate=true;
		writeCalendar();
		return false;
	}
}

function funYearSelect() //年份的下拉框
{
    var n = WebCalendar.yearFall;
    var e = WebCalendar.iframe.document.forms[0].tmpYearSelect;
    var y = isNaN(parseInt(WebCalendar.thisYear, 10)) ? new Date().getFullYear() : parseInt(WebCalendar.thisYear,10);
	y = (y <= 1000)? 1000 : ((y >= 9999)? 9999 : y);
    
	var min = (y - n >= 1000) ? y - n : 1000;
    var max = (y + n <= 9999) ? y + n : 9999;
	min = (max == 9999) ? max-n*2 : min;
	max = (min == 1000) ? min+n*2 : max;
    
	for (var i=min; i<=max; i++) e.options.add(new Option(i +"年", i));//top:3;left:18
    //alert(WebCalendar.calendar.style.left);
	//e.style.top = 2; 
	//e.style.left = 18; 
    e.style.display = ""; e.value = y; 
	e.focus();
	window.status = e.style.top;
}

function funMonthSelect() //月份的下拉框
{
    var m = isNaN(parseInt(WebCalendar.thisMonth,10)) ? new Date().getMonth() + 1 : parseInt(WebCalendar.thisMonth,10);
    var e = WebCalendar.iframe.document.forms[0].tmpMonthSelect;
    for (var i=1; i<13; i++) e.options.add(new Option(i +"月", i));
    e.style.display = ""; e.value = m; e.focus(); 
	window.status = e.style.top;
}

function funHourSelect() //小时的下拉框
{
    var h = isNaN(parseInt(WebCalendar.thisHour,10)) ? new Date().getHours(): parseInt(WebCalendar.thisHour,10);
    var e = WebCalendar.iframe.document.forms[0].tmpHourSelect;
	e.style.left=35;
	e.style.top =168;
    for (var i=0; i<24; i++) e.options.add(new Option(i +"时", i));
    e.style.display = ""; e.value = h; e.focus(); 
	window.status = e.style.top;
}

function funMinuteSelect() //分钟的下拉框
{
    var m = isNaN(parseInt(WebCalendar.thisMinute,10)) ? new Date().getMinutes(): parseInt(WebCalendar.thisMinute,10);
    var e = WebCalendar.iframe.document.forms[0].tmpMinuteSelect;
	e.style.left=60;
	e.style.top=168;
    for (var i=0; i<60; i++) e.options.add(new Option(i +"分", i));
    e.style.display = ""; e.value = m; e.focus(); 
	window.status = e.style.top;
}

function prevY()//往前翻 Year
{
	WebCalendar.thisYear--;
	WebCalendar.isReturnDate=true;
	writeCalendar();
}
function nextY()//往后翻 Year
{
	WebCalendar.thisYear++; 
	WebCalendar.isReturnDate=true;
	writeCalendar();
}
function prevM()  //往前翻月份
{
    if (WebCalendar.thisMonth==1)
    {
        WebCalendar.thisYear--;
        WebCalendar.thisMonth=13;
    }
    WebCalendar.thisMonth--; 
	WebCalendar.isReturnDate=true;
	writeCalendar();
}
function nextM()  //往后翻月份
{
    if (WebCalendar.thisMonth==12)
    {
        WebCalendar.thisYear++;
        WebCalendar.thisMonth=0;
    }
    WebCalendar.thisMonth++; 
	writeCalendar();
}
function prevH()//往前翻 小时
{
    if (WebCalendar.thisHour==0)
        WebCalendar.thisHour=24;
	WebCalendar.thisHour--;
	WebCalendar.isReturnDate=true;
	writeCalendar();
}
function nextH()//往后翻 小时
{
	if (WebCalendar.thisHour==23)
        WebCalendar.thisHour=-1;
	WebCalendar.thisHour++; 
	WebCalendar.isReturnDate=true;
	writeCalendar();
}

function prevMi()  //往前翻分钟
{
    if (WebCalendar.thisMinute==0)
    {
		WebCalendar.thisMinute=59;
        prevH();
		return;
    }
    WebCalendar.thisMinute--; 
	WebCalendar.isReturnDate=true;
	writeCalendar();
}
function nextMi()  //往后翻分钟
{
    if (WebCalendar.thisMinute==59)
    {
        WebCalendar.thisMinute=0;
        nextH();
		return;
    }
    WebCalendar.thisMinute++; 
	WebCalendar.isReturnDate=true;
	writeCalendar();
}

function hiddenSelect(e)
{
	for(var i=e.options.length; i>-1; i--)
		e.options.remove(i); 
	e.style.display="none";
}

function getObjectById(id)
{ 
	if(document.all) 
		return(eval("document.all."+ id)); 
	return(eval(id)); 
}

function hiddenCalendar()
{
	WebCalendar.calendar.style.display = "none";
}

function appendZero(n)//日期自动补零程序
{
	return(("00"+ n).substr(("00"+ n).length-2));
}

String.prototype.trim=function()
{
	return this.replace(/(^\s*)|(\s*$)/g,"");
}

function monthMouseOver()
{
    this.className = "over";
    this.style.backgroundColor = WebCalendar.overColor;
    if(WebCalendar.month[this.id.substr(9)] == WebCalendar.thisMonth)
    	this.style.color = WebCalendar.lightColor;
}

function monthMouseOut()
{
    this.className = "out"; 
	var m = WebCalendar.month[this.id.substr(9)];
    this.style.removeAttribute('backgroundColor');
    if( m == WebCalendar.thisMonth)
    {
        this.style.color = WebCalendar.lightColor;
        this.style.color = WebCalendar.wordColor;
    }
}

function dayMouseOver()
{
    this.className = "over";
    this.style.backgroundColor = WebCalendar.overColor;
    if(WebCalendar.day[this.id.substr(8)].split("/")[1] == WebCalendar.thisMonth)
		this.style.color = WebCalendar.lightColor;
}

function dayMouseOut()
{
    this.className = "out"; 
	var d = WebCalendar.day[this.id.substr(8)], a = d.split("/");
    this.style.removeAttribute('backgroundColor');
    if(a[1] == WebCalendar.thisMonth && d != WebCalendar.today)
    {
        if(WebCalendar.dateStyle && a[0] == parseInt(WebCalendar.dateStyle[4], 10))
        this.style.color = WebCalendar.lightColor;
        this.style.color = WebCalendar.wordColor;
    }
}

function writeCalendar() //对日历显示的数据的处理程序
{
    var y = WebCalendar.thisYear;
    var m = WebCalendar.thisMonth;
    var d = WebCalendar.thisDay;
    var h = WebCalendar.thisHour;
    var mi= WebCalendar.thisMinute;
    
	WebCalendar.daysMonth[1] = (0==y%4 && (y%100!=0 || y%400==0)) ? 29 : 28;
    
	if (!(y<=9999 && y >=1000)){
        WebCalendar.thisYear   = new Date().getFullYear();
		y = WebCalendar.thisYear;
	}
	if(!(parseInt(m,10)>0 && parseInt(m, 10)<13)){
        WebCalendar.thisMonth  = new Date().getMonth()+ 1;
		m = WebCalendar.thisMonth;
	}
	if(!(parseInt(d,10)>0&&parseInt(d,10)<=WebCalendar.daysMonth[m])){
        WebCalendar.thisDay    = new Date().getDate(); 
		d = WebCalendar.thisDay;
	}
	if(!(parseInt(h, 10)>=0&&parseInt(h, 10)<24)){
        WebCalendar.thisHour   = new Date().getHours();
		h = WebCalendar.thisHour;
	}
	if(!(parseInt(mi, 10)>=0&&parseInt(mi, 10)<60)){
        WebCalendar.thisMinute = new Date().getMinutes(); 
		mi= WebCalendar.thisMinute;
	}

	WebCalendar.inputDate = parseInt(d, 10) +"/"+ 
		parseInt(m, 10) +"/"+ 
		parseInt(y, 10); 

	if(WebCalendar.timeType=="yearMonth"){
		WebCalendar.iframe.meizzYearHead.innerText  = y +"年";
		for(var i=0;i<12;i++){
			WebCalendar.month[i] = (i+1)+"/"+WebCalendar.thisYear;
			WebCalendar.monthObj[i].bgColor      = WebCalendar.dayBgColor;
			WebCalendar.monthObj[i].style.color  = WebCalendar.wordColor;
			if (WebCalendar.thisMonth==(i+1))    //设置输入框里的日期在日历上的颜色
			{
				WebCalendar.monthObj[i].bgColor = WebCalendar.curDateColor; WebCalendar.monthObj[i].style.color = WebCalendar.curDateColor;
			}
			if (WebCalendar.month[i] == WebCalendar.today.substring(3,10))      //设置今天在日历上反应出来的颜色
			{
				WebCalendar.monthObj[i].bgColor = WebCalendar.todayColor; WebCalendar.monthObj[i].style.color = WebCalendar.lightColor;
			}
		}
		if(WebCalendar.isReturnDate==true)
			returnDate();
		return;
	}

	WebCalendar.iframe.meizzYearHead.innerText  = y +"年";
    WebCalendar.iframe.meizzYearMonth.innerText = parseInt(m, 10) +"月";
    
	WebCalendar.daysMonth[1] = (0==y%4 && (y%100!=0 || y%400==0)) ? 29 : 28; //闰年二月为29天
    
	var w = new Date(y, m-1, 1).getDay();
    var prevDays = m==1  ? WebCalendar.daysMonth[11] : WebCalendar.daysMonth[m-2];
    
	for(var i=(w-1); i>=0; i--) //这三个 for 循环为日历赋数据源（数组 WebCalendar.day）格式是 d/m/yyyy
    {
        WebCalendar.day[i] = prevDays +"/"+ (parseInt(m, 10)-1) +"/"+ y;
        if(m==1) WebCalendar.day[i] = prevDays +"/"+ 12 +"/"+ (parseInt(y, 10)-1);
        prevDays--;
    }
    for(var i=1; i<=WebCalendar.daysMonth[m-1]; i++) 
		WebCalendar.day[i+w-1] = i +"/"+ m +"/"+ y;
    for(var i=1; i<40-w-WebCalendar.daysMonth[m-1]+1; i++)
    {
        WebCalendar.day[WebCalendar.daysMonth[m-1]+w-1+i] = i +"/"+ (parseInt(m, 10)+1) +"/"+ y;
        if(m==12) WebCalendar.day[WebCalendar.daysMonth[m-1]+w-1+i] = i +"/"+ 1 +"/"+ (parseInt(y, 10)+1);
    }
	
    for(var i=0; i<40; i++)    //这个循环是根据源数组写到日历里显示
    {
        var a = WebCalendar.day[i].split("/");
        WebCalendar.dayObj[i].innerText    = a[0];
        WebCalendar.dayObj[i].title        = a[2] +"-"+ appendZero(a[1]) +"-"+ appendZero(a[0]);
        WebCalendar.dayObj[i].bgColor      = WebCalendar.dayBgColor;
        WebCalendar.dayObj[i].style.color  = WebCalendar.wordColor;
        if ((i<10 && parseInt(WebCalendar.day[i], 10)>20) || (i>27 && parseInt(WebCalendar.day[i], 10)<12))
            WebCalendar.dayObj[i].style.color = WebCalendar.wordDark;
        if (WebCalendar.inputDate==WebCalendar.day[i])    //设置输入框里的日期在日历上的颜色
        {
			WebCalendar.dayObj[i].bgColor = WebCalendar.darkColor; WebCalendar.dayObj[i].style.color = WebCalendar.lightColor;
		}
        if (WebCalendar.day[i] == WebCalendar.today)      //设置今天在日历上反应出来的颜色
        {
			WebCalendar.dayObj[i].bgColor = WebCalendar.todayColor; WebCalendar.dayObj[i].style.color = WebCalendar.lightColor;
		}
    }
	if(WebCalendar.timeType=="dateTime"){
		WebCalendar.iframe.meizzHour.innerText  = WebCalendar.thisHour +"时";
		WebCalendar.iframe.meizzMinute.innerText = WebCalendar.thisMinute +"分";
	}
	if(WebCalendar.isReturnDate==true)
		returnDate()
}

function selectDate(para){
	with(WebCalendar){
		if(timeType=="yearMonth"){
			var a = WebCalendar.month[this.id.substr(9)].split("/");
			thisMonth=a[0];
			thisYear=a[1];
		}else{
			var a = WebCalendar.day[this.id.substr(8)].split("/");
			thisDay=a[0];
			thisMonth=a[1];
			thisYear=a[2];
		}
	}
	returnDate();
	hiddenCalendar();
}

function returnDate(){ //根据日期格式等返回用户选定的日期
	with(WebCalendar){
		if(objExport){
			var returnValue;
			if(timeType=="yearMonth"){
				returnValue=thisYear+"-"+appendZero(thisMonth);
			}else if(timeType=="date"){
				returnValue=thisYear+"-"+appendZero(thisMonth)+"-"+appendZero(thisDay);
			}else if(timeType=="dateTime"){
				returnValue=thisYear+"-"+appendZero(thisMonth)+"-"+appendZero(thisDay)+" "+appendZero(thisHour)+":"+appendZero(thisMinute);
			}
			objExport.value=returnValue;
		}
    }
}

function preMatchReg(){
				WebCalendar.isReturnDate=true;
/*
	if(WebCalendar.calendar.style.display == "none"){
		WebCalendar.calendar.style.display == "";
		matchReg();
		alert("2");
	}
*/
}

function preSelectTime(){
/*
	alert("");
	event.cancelBubble=true;
    if(WebCalendar.eventSrc != window.event.srcElement) alert("");
*/	
}

document.onmousedown=function(){
    if(WebCalendar.eventSrc != window.event.srcElement) hiddenCalendar();
}

//以下为输入验证。
function checkDateFor(){
	with(WebCalendar){
		if(timeType=="yearMonth")
			checkYearMonth(objExport);
		else if(timeType=="date")
			checkDate(objExport);
		else if(timeType=="dateTime")
			checkDateTime(objExport);
	}
}

//-->