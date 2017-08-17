//
//    DoeJeonFreeman  
//	  2016-04-21
//
//"use strict";

/*-------------------------------------------
	Doe Jeon Freeman
---------------------------------------------*/

var isVERBOSE = true ; 

var isStillPressedDown = false;

function sysout(str) {
	if(!isVERBOSE) return;
	if(window['console']!='undefined') console.log(str);
}

function systime(str, flag) {
	if(!isVERBOSE) return;
	if(window['console']!='undefined' &&flag=='begin') console.time(str);
	if(window['console']!='undefined' &&flag=='end') console.timeEnd(str);
}

if (!String.prototype.startsWith) {
    String.prototype.startsWith = function(searchString, position){
      position = position || 0;
      return this.substr(position, searchString.length) === searchString;
  };
}

/**
 * This can be helpful to refresh some libraries like highcharts.js when a panel or a div the control is contained in is expanded.
 * window.dispatchEvent(new Event('resize')); 
 * The above method isn’t supported by Internet explorer (failed on IE 11), therefore use below method for wider browser support.
 * */
var fireRefreshEventOnWindow = function () {
    var evt = document.createEvent("HTMLEvents");
    evt.initEvent('resize', true, false);
    window.dispatchEvent(evt);
    sysout('fireRefreshEventOnWindow() HTMLEvents.resize');
    //adjustGraph.call($('#tabs'));
    alert('fireRefreshEventOnWindow() HTMLEvents.resize');
};


/**
 * Adjust size for hidden charts
 * @param chart highcharts
 */
function adjustGraph(chart) {
	alert('adjustGraph()');
    try {
        if (typeof (chart === 'undefined' || chart === null) && this instanceof jQuery) { // if no obj chart and the context is set
//        	$('.classySnob').each(function() {  
////	        	$(this).highcharts().reflow();
//	        	console.log($(this).highcharts())
//        	});
        	
/*        	$('.classySnob:visible').each(function() {// for only visible charts container in the curent context
                $container = $(this); // context container
                sysout($(this))
                sysout($container);
                $container.find('div[id^="chart-"]').each(function () { // for only chart
                	alert('loop thruough--');
                    $chart = $(this).highcharts(); // cast from JQuery to highcharts obj
                    $chart.setSize($container.width(), $chart.chartHeight, doAnimation = true); // adjust chart size with animation transition
                });
            });*/
            this.find('.box-content:visible').each(function () { // for only visible charts container in the curent context
            	$container = $(this); // context container
//            	$container.find('div[id^="chart-"]').each(function () { // for only chart
        		$container.find('div[class^="classySnob"]').each(function () { // for only chart
            		$chart = $(this).highcharts(); // cast from JQuery to highcharts obj
            		//$container.width($container.parent().width());
            		$container.width(943);
            		sysout("box-content.parent.parent.width is");
            		sysout($container.parent().parent().width());
            		sysout("box-content.parent.width is");
            		sysout($container.parent().width());
            		alert('$container.width() is : ' + $container.width() + '\nand parent.div.width is ' + $container.parent().width()	);
//            		alert('$container.width() is : ' + $container.width());
//            		$chart.setSize($container.width(), $chart.chartHeight, doAnimation = true); // adjust chart size with animation transition
            		//$container크기는 값이 안바뀜. 상위 컨테이너 box-context 크기를 받던지 해야지 젠장 아님 meDraggableItem 사이즈 체인지이벤트에 차트찾아서 크기 조절하던지!!!
            		$chart.setSize($container.width(), $chart.chartHeight, doAnimation = true); // adjust chart size with animation transition
            	});
            });
        } else {
            chart.setSize($('.classySnob:visible').width(), chart.chartHeight, doAnimation = true); // if chart is set, adjust
           // alert('.box-content:visible was found');
        }
    } catch (err) {
    	//alert('err. see the log on console');
    	//console.log(err)
        // do nothing
    }
}



Date.prototype.customFormat = function(formatString){
    var YYYY,YY,MMMM,MMM,MM,M,DDDD,DDD,DD,D,hhh,hh,h,hh24,mm,m,ss,s,ampm,AMPM,dMod,th, KDDD;
    var dateObject = this;
    YY = ((YYYY=dateObject.getFullYear())+"").slice(-2);
    MM = (M=dateObject.getMonth()+1)<10?('0'+M):M;
    MMM = (MMMM=["January","February","March","April","May","June","July","August","September","October","November","December"][M-1]).substring(0,3);
    DD = (D=dateObject.getDate())<10?('0'+D):D;
    DDD = (DDDD=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"][dateObject.getDay()]).substring(0,3);
    DKor = (KDDD=["일요일","월요일오지마라","화요일","수요일","목요일","금요일","토요일"][dateObject.getDay()]).substring(0,1);
    th=(D>=10&&D<=20)?'th':((dMod=D%10)==1)?'st':(dMod==2)?'nd':(dMod==3)?'rd':'th';
    formatString = formatString.replace("#YYYY#",YYYY).replace("#YY#",YY).replace("#MMMM#",MMMM).replace("#MMM#",MMM).replace("#MM#",MM).replace("#M#",M).replace("#DDDD#",DDDD).replace("#DDD#",DDD).replace("#DD#",DD).replace("#D#",D).replace("#th#",th);
    h=(hhh=dateObject.getHours());
    hh24 = h<10?('0'+h):h;
    if (h==0) h=24;
    if (h>12) h-=12;
    hh = h<10?('0'+h):h;
    AMPM=(ampm=hhh<12?'am':'pm').toUpperCase();
    mm=(m=dateObject.getMinutes())<10?('0'+m):m;
    ss=(s=dateObject.getSeconds())<10?('0'+s):s;
    return formatString.replace("#hhh#",hhh).replace("#hh24#",hh24).replace("#hh#",hh).replace("#h#",h).replace("#mm#",mm).replace("#m#",m).replace("#ss#",ss).replace("#s#",s).replace("#ampm#",ampm).replace("#AMPM#",AMPM).replace("#DKor#",DKor);
}



//
//  Function for load content from url and put in $('.ajax-content') block
//
function LoadAjaxContent(url){
	$('.preloader').show();
	$.ajax({
		mimeType: 'text/html; charset=utf-8', // ! Need set mimeType only when run from local file
		url: url,
		//crossDomain: false, //관련에러콘솔에 찍히길래
		type: 'GET',
		success: function(data) {
			$('#ajax-content').html(data);
			$('.preloader').hide();
		},
		error: function (jqXHR, textStatus, errorThrown) {
			alert(errorThrown);
		},
		dataType: "html",
		async: false
	});
}
//
//  Function maked all .box selector is draggable, to disable for concrete element add class .no-drop
//
//function WinMove(){
//	$( "div.row").not('.no-drop').sortable(); //doejeon
//}
function WinMove(){
	$( "div.box").not('.no-drop')
		.draggable({
			revert: true,
			zIndex: 2000,
			cursor: "crosshair",
			handle: '.box-name',
			opacity: 0.8
		})
		.droppable({//change position each other haha
			tolerance: 'pointer',
			drop: function( event, ui ) {
				
//				var meDraggableId = ui.draggable.attr("id");
//				var meDroppableId = $(this).attr("id");
//				sysout('meDraggableId: ' + meDraggableId);
//				sysout('meDroppableId: ' + meDroppableId);
				
				var draggable = ui.draggable;
				var droppable = $(this);
				var dragPos = draggable.position();
				var dropPos = droppable.position();
				draggable.swap(droppable);
				setTimeout(function() {
					var dropmap = droppable.find('[id^=map-]');
					var dragmap = draggable.find('[id^=map-]');
					if (dragmap.length > 0 || dropmap.length > 0){
						dragmap.resize();
						dropmap.resize();
					}
					else {
						draggable.resize();
						droppable.resize();
					}
				}, 50);
				setTimeout(function() {
					draggable.find('[id^=map-]').resize();
					droppable.find('[id^=map-]').resize();
				}, 250);
			}
		})
//		.sortable() //doejeon
		;
}
//
////doejeon
//function meCombineDroppables(divId){
//	sysout(divId);
//	sysout('combine two or more droppables in div when me drops them on each other haha ');
//	$( "#"+divId).not('.no-drop')
//		.draggable({
//			revert: true,
//			zIndex: 2000,
//			cursor: "crosshair",
//			handle: '.box-name',
//			opacity: 0.8,
//			stop:function(e){
//				sysout('haha STOP!!!');
////				$(this).remove();
//			}
//		}).droppable({
//		drop: function( event, ui ) {
//			$(this).remove();
//		}
//	})
//	;
////		.sortable() //doejeon
//}


//
// Swap 2 elements on page. Used by WinMove function
//
jQuery.fn.swap = function(b){
	b = jQuery(b)[0];
	var a = this[0];
	var t = a.parentNode.insertBefore(document.createTextNode(''), a);
	b.parentNode.insertBefore(a, b);
	t.parentNode.insertBefore(b, t);
	t.parentNode.removeChild(t);
	return this;
};

//
//  Function for create 2 dates in human-readable format (with leading zero)
//
function PrettyDates(){
	var currDate = new Date();
	var year = currDate.getFullYear();
	var month = currDate.getMonth() + 1;
	var startmonth = 1;
	if (month > 3){
		startmonth = month -2;
	}
	if (startmonth <=9){
		startmonth = '0'+startmonth;
	}
	if (month <= 9) {
		month = '0'+month;
	}
	var day= currDate.getDate();
	if (day <= 9) {
		day = '0'+day;
	}
	var startdate = year +'-'+ startmonth +'-01';
	var enddate = year +'-'+ month +'-'+ day;
	return [startdate, enddate];
}
//
//  Function set min-height of window (required for this theme)
//
function SetMinBlockHeight(elem){
	elem.css('min-height', window.innerHeight - 49)
}
//
//  Helper for correct size of Messages page
//
function MessagesMenuWidth(){
	var W = window.innerWidth;
	var W_menu = $('#sidebar-left').outerWidth();
	var w_messages = (W-W_menu)*16.666666666666664/100;
	$('#messages-menu').width(w_messages);
}




function toggleFullScreen() {
	  if ((document.fullScreenElement && document.fullScreenElement !== null) ||    
	   (!document.mozFullScreen && !document.webkitIsFullScreen)) {
	    if (document.documentElement.requestFullScreen) {  
	      document.documentElement.requestFullScreen();  
	    } else if (document.documentElement.mozRequestFullScreen) {  
	      document.documentElement.mozRequestFullScreen();  
	    } else if (document.documentElement.webkitRequestFullScreen) {  
	      document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);  
	    }  
	  } else {  
	    if (document.cancelFullScreen) {  
	      document.cancelFullScreen();  
	    } else if (document.mozCancelFullScreen) {  
	      document.mozCancelFullScreen();  
	    } else if (document.webkitCancelFullScreen) {  
	      document.webkitCancelFullScreen();  
	    }  
	  }  
	}


function reorderDivAlphabeticallyMan(){
	var idx = $("#tabs").tabs('option', 'active');
	var targetTab = '#TSCWrapper' + idx;
	
	var $divs = $(targetTab+" .meDraggableItem");
	
	
	var alphabeticallyOrderedDivs = $divs.sort(function (a, b) {
		return $(a).attr('id') > $(b).attr('id');
	});
	$(targetTab).html(alphabeticallyOrderedDivs);
	
	WinMove();
	
//	$('#alphBnt').on('click', function () {
//	    var alphabeticallyOrderedDivs = $divs.sort(function (a, b) {
//	        return $(a).find("h1").text() > $(b).find("h1").text();
//	    });
//	    $("#container").html(alphabeticallyOrderedDivs);
//	});

//	$('#numBnt').on('click', function () {
//	    var numericallyOrderedDivs = $divs.sort(function (a, b) {
//	        return $(a).find("h2").text() > $(b).find("h2").text();
//	    });
//	    $("#container").html(numericallyOrderedDivs);
//	});
}
	
function fxxkingaman(tabIndex,key){
	alert('fxxking A haha');
	$("#OPT_"+tabIndex).fancytree("getTree").getNodeByKey(key).setActive(false);
}

//////////////////////////////////////////////////////
//////////////////////////////////////////////////////
//
//      MAIN DOCUMENT READY SCRIPT 
//
//////////////////////////////////////////////////////
//////////////////////////////////////////////////////

$(document).ready(function () {//doejeon
	
	var height = window.innerHeight - 49;
	$('[id^=TSCWrapper]').css('min-height', height)
		.on('click', '.collapse-link', function (e) {
			e.preventDefault();
			var box = $(this).closest('div.box');
			var button = $(this).find('i');
			var content = box.find('div.box-content');
			content.slideToggle('fast');
			button.toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
			setTimeout(function () {
				box.resize();
				box.find('[id^=map-]').resize();
			}, 50);
	});
	
	/**
	 * checkBox.name == meDraggableItem.id
	 * 
	 * close버튼이벤트 발생시
	 * 
	 * box-content classySnob 아이디받아서 체크박스 언체크하고 (얘를 암튼 맵에서 날리고)
	 * 
	 * 근데!!!
	 * meDraggableItem은 id는 해당꺼를 날려야니까  그대로니까   $(this).closest('div.meDraggableItem').attr('id'); //t0_L1A-QI01_0 얘를 받아서 날려버려
	 * 
	 * */
	
	$('.meControllPanel').on('click', '.meExpandable', function (e) {
		e.preventDefault();
		var button = $(this).find('i');
		button.toggleClass('fa-arrows-alt').toggleClass('fa-compress');
	});
	
	
	
	
	
	//<a href="#" data-toggle="modal" data-target="#chart-modal" class="chart-modal"><i class="fa fa-bar-chart-o modal-icon"></i></a>
	$('[id^=TSCWrapper]').on('click', '.mePopupWindow', function (e) {
		e.preventDefault();
/*		
//		($(this).closest('div.meDraggableItem')).clone().appendTo('#container'); //it works
		//$('#'+highchartWrapper).appendTo('#container'); //it works
*/		
		var highchartWrapper = $(this).closest('div.meDraggableItem').attr('id');
		var box = $(this).closest('div.box');
		var source = box.find('div.classySnob');
//sysout(source.highcharts());
		
		sysout('highchartWrapper'); //t0_L1A-QI01_0
		sysout(highchartWrapper);   //t0_ts_L1A-QI01_0
		
		
        $('#'+highchartWrapper).removeClass('box');
        $('#'+highchartWrapper).toggleClass('modal1');
        source.highcharts().reflow();
	});
	
	
	

//	$('#page-content-wrapper').keypress(function(event) { 
	$(document).keypress(function(event) { 
//		13==spaceBar
//		console.log(event.which)
		if(event.keyCode==113){
			if(!isStillPressedDown)isStillPressedDown = true;
//			console.log('Q::113 [isStillPressedDown] ' + isStillPressedDown)
		}
	});
	
//	$('#page-content-wrapper').keyup(function(event) { 
	$(document).keyup(function(event) { 
	//	console.log(event.keycode)
	//	if(event.keyCode==113){
			isStillPressedDown = false;
//			sysout('Q::113 [isStillPressedDown] haha  ' + isStillPressedDown)
	//	}
	});

	
	
});




