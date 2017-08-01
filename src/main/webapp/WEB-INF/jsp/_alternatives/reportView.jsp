<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>QIMS-L2품질감시-월검증</title>
	
 
	<script src="${pageContext.request.contextPath}/js/jquery/jquery-1.9.1.js"></script>	
    <script src="${pageContext.request.contextPath}/resource/js/bootstrap.min.js"></script>
	<link href="${pageContext.request.contextPath}/css/sidebar.css" rel="stylesheet">

    <!-- JQuery UI -->
    <link href="${pageContext.request.contextPath}/js/jquery/ui/jquery-ui.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resource/css/modern-business.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/resource/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">	
	<!-- Initialize the tree when page is loaded -->
	
	<!-- datePicker -->
	<link href="${pageContext.request.contextPath}/js/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/daterangepicker/moment.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/daterangepicker/daterangepicker.js"></script>
    <!-- dateJS -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/date.js"></script>
    <!-- JQuery UI -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/ui/jquery-ui-1111.js"></script>
	
	
	<link href="${pageContext.request.contextPath}/css/style_v2.css" rel="stylesheet">
	    
	
	<script src="${pageContext.request.contextPath}/js/meDrawTimeseriesChart.js"></script>
	
	
	<link href="${pageContext.request.contextPath}/js/toastr/toastr.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/js/toastr/toastr.js"></script>
	
	<link href="${pageContext.request.contextPath}/js/arrowNavi/component.css" rel="stylesheet">

<style>
	ul.fancytree-container{
		font-size: 13px;
	}
	
	ul.fancytree-container {
    	background-color: transparent;
  			border: none;
	}
</style>    
    
	
	<!-- slimScroll -->
	<script src="${pageContext.request.contextPath}/js/slimScroll/jquery.slimscroll.min.js"></script>
	

	<script type="text/javascript">
	
		var ITEM_SIZE = 12;
	
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
	
	
		Map = function(){
			 this.map = new Object();
		};   
		
		Map.prototype = {   
		    put : function(key, value){   
		        this.map[key] = value;
		    },   
		    get : function(key){   
		        return this.map[key];
		    },
		    containsKey : function(key){    
		     return key in this.map;
		    },
		    containsValue : function(value){    
		     for(var prop in this.map){
		      if(this.map[prop] == value) return true;
		     }
		     return false;
		    },
		    isEmpty : function(key){    
		     return (this.size() == 0);
		    },
		    clear : function(){   
		     for(var prop in this.map){
		      delete this.map[prop];
		     }
		    },
		    remove : function(key){    
		     delete this.map[key];
		    },
		    keys : function(){   
		        var keys = new Array();   
		        for(var prop in this.map){   
		            keys.push(prop);
		        }   
		        return keys;
		    },
		    values : function(){   
		     var values = new Array();   
		        for(var prop in this.map){   
		         values.push(this.map[prop]);
		        }   
		        return values;
		    },
		    size : function(){
		      var count = 0;
		      for (var prop in this.map) {
		        count++;
		      }
		      return count;
		    }
		};
			
		// haha store chartInstance into map obj haha
		// haha store chartInstance into map obj haha
		// haha store chartInstance into map obj haha
		var map = new Map(); 
	
	
	
		
		//djf20161019
		var treeSelected;
		function getSelectedVarialbes(idx){
			var selected = [];
 			$('#OPT_'+idx+' .checkboxes input:checked').each(function() {
			    selected.push($(this).attr('name'));
			}); 
 			sysout(treeSelected);
 			
			return selected;			
		}
	
		
	
	
	
		
		var sampleImages = ["http://seaice.kma.go.kr/data/IMG/ROUGH/Y2016/dmsp_ssmis_rou_20161112.png",
		                    "http://seaice.kma.go.kr/data/IMG/FCST/seaice_pre_ano_201610_02.png",
		                    "http://seaice.kma.go.kr/data/IMG/SEAICE/Y2010/dmsp_ssmis_ice_20101112.png",
		                    "http://nmsc.kma.go.kr/html/homepage/en/images/chollian/photo/con_01_03_04_01_img01.gif",
		                    "http://web.kma.go.kr/eng/images/biz/img_obser10.gif"
		                    ];
		function getRandomImage() {
		   return sampleImages[Math.floor(Math.random() * sampleImages.length)];
		}
		
		
		
		function getDraggableReportContainer(leadingStr, meTitle, titleWithDStr, ITEM_SIZE){
			
			var idx = $("#tabs").tabs('option', 'active');
			
			var divId = 't'+idx+'_'+ leadingStr;//+detNum;
			var divTitle = titleWithDStr //  meTitle.split('-').join(' ') + ' ' + titleWithDStr;
			//divTitle = divTitle.split('_').join(' - ');
			
			var chartId = 't'+idx+'_ts_'+leadingStr;
			
			if($('#'+divId).length){
//				sysout('if chartWrapperHTML [#' +divId+'] is already exiests ')
//				sysout('then RETURN;')
				return false;
			}
			
			sysout('ITEM_SIZE is : ' + ITEM_SIZE);
			var draggableDiv = '';
//			draggableDiv +=	"<div class='meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
//			draggableDiv +=	"		<div class='box col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
			draggableDiv +=	"		<div class='box meDraggableItem col-xs-12 col-md-12 col-lg-12' id='" + divId + "'>";
			draggableDiv +=	"			<div class='box-header'>";
			draggableDiv +=	"				<div class='box-name'>";
			draggableDiv +=	"					<i class='fa fa-bar-chart'></i>";
			draggableDiv +=	"					<span>"+divTitle+"</span>";
			draggableDiv +=	"				</div>";
			draggableDiv +=	"				<div class='box-icons'>";
//			draggableDiv +=	"					<a class='mePopupWindow'>";
//			draggableDiv +=	"						<i class='fa fa-search'></i>";
//			draggableDiv +=	"					</a>";
			draggableDiv +=	"					<a class='collapse-link'>";
			draggableDiv +=	"						<i class='fa fa-chevron-up'></i>";
			draggableDiv +=	"					</a>";
			draggableDiv +=	"					<a class='close-window'>";
			draggableDiv +=	"						<i class='fa fa-times'></i>";
			draggableDiv +=	"					</a>";
			draggableDiv +=	"				</div>";
			draggableDiv +=	"				<div class='no-move'></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"			<div class='box-content'>";
			
			
			draggableDiv +=	"				<nav class='nav-circlepop djf'>";
//			draggableDiv +=	"               	<a class='prev' href='/item1'><span class='icon-wrap'></span></a>";
//			draggableDiv +=	"					<a class='next' href='/item3'><span class='icon-wrap'></span></a>";
			draggableDiv +=	"               	<a class='prev' href='#'><span class='icon-wrap'></span></a>";
			draggableDiv +=	"					<a class='next' href='#'><span class='icon-wrap'></span></a>";
			draggableDiv +=	"				</nav>";
			
//			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style='height: 330px;margin: 0 auto;'></div>";
			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style=''></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"		</div>";
//			draggableDiv +=	"	</div>";
			
			return draggableDiv;
		}
		
		/**
		리팩터링 시급ㅋㅋㅋㅋㅋㅋ 
		*/ 
		function doPostMonthlyValidationImageOnTheWall(targetDivId, key, reportBody){
			/* 
				
			var dActual = moment($("#meNMSCDemo").val(), 'YYYY-MM-DD').toDate();
			var dActualStr = dActual.customFormat("#YYYY##MM#01");
			var dActualTitle = dActual.customFormat("(#YYYY#.#MM#.)");
			
			var boxContentIdentifier = 't' + $("#tabs").tabs('option', 'active') + '_ts_' + key ;
			
			
			var wrapperHTML =  getDraggableReportContainer(key+'_'+dActualStr, key, dActualTitle,ITEM_SIZE);
			
			if(wrapperHTML){
				$(targetDivId).append(wrapperHTML);
				$('#'+boxContentIdentifier).append(reportBody);
			}else{
				toastr.info('Selected item already exists.');
			}
				
				
			WinMove(); */
		
 		}
					
		
	
		
		
		/** pannel_dateRetrieval begin*/
		/** pannel_dateRetrieval begin*/
		/** pannel_dateRetrieval begin*/
		function meRequest(meDateObj){
			var idx = $("#tabs").tabs('option', 'active');
			var targetTab = '#TSCWrapper' + idx;
			doPostMonthlyValidationImageOnTheWall(targetTab,getSelectedVarialbes(idx), meDateObj.format('YYYY-MM-DD'));
//			//sysout('[charts.length after drawTimesereis() ] ' + charts.length);
		}
		
		
		var minDate = new Date(2016,1,01);
		var recentStuffArr = "${extSeries.compbegindate4Cal}".split('-');
		var mostRecentDate = new Date(recentStuffArr[0],recentStuffArr[1]-1,recentStuffArr[2]); 
		//L1A 환경정보 표출땜에 ㅎ
//		var mostRecentDate = new Date(2015,10,17);
		/* //sysout(mostRecentDate instanceof Date && !isNaN(mostRecentDate.valueOf())) */
		
		function getDateCalculated(whichOperator){
			var dStrArr =  $("#meNMSCDemo").val().split('-');		
			//var currDate = $('#meNMSCDemo').data('daterangepicker').startDate;    ---> not a date obj
			var currDate = new Date(dStrArr[0],dStrArr[1]-1,dStrArr[2]);
			var dateTarget = getRetrievalInterval(whichOperator,currDate);
			
			if(dateTarget.getTime() < minDate.getTime()){
				alert("자료 제공 범위는 2016-02-01 부터  ${extSeries.compbegindate4Cal}까지 입니다.");
				$('#meNMSCDemo').data('daterangepicker').setStartDate(moment(minDate).format('YYYY-MM-DD'));
				$('#meNMSCDemo').data('daterangepicker').setEndDate(moment(minDate).format('YYYY-MM-DD'));
				$('#meNMSCDemo').val(moment(minDate).format('YYYY-MM-DD'));
				meRequest(moment(minDate));
			}else if(dateTarget.getTime() > mostRecentDate.getTime()){
				alert("자료 제공 범위는 2016-02-01 부터  ${extSeries.compbegindate4Cal}까지 입니다.");
				$("#btn_getMostRecentOne").trigger( "click" );
			}else{
				$('#meNMSCDemo').data('daterangepicker').setStartDate(moment(dateTarget).format('YYYY-MM-DD'));
				$('#meNMSCDemo').data('daterangepicker').setEndDate(moment(dateTarget).format('YYYY-MM-DD'));
				$('#meNMSCDemo').val(moment(dateTarget).format('YYYY-MM-DD'));
				meRequest(moment(dateTarget));
			}
		}
		
		function getRetrievalInterval(operator,currDate){
			var dateCalculated = currDate;
			//var interval = $('#retrievalIntervalChooser').find(":selected").val()+'';
			var interval = $('#retrievalRangeSelector .selected').attr('value');
			var math_it_up={ 'btn_next': function (x, y) { return x + y },
				    		 'btn_prev': function (x, y) { return x - y }
			};
			
	 		if(interval=='DAY'){
	 			dateCalculated.setDate(math_it_up[operator](dateCalculated.getDate(),1));
			}else if(interval=='WEEK'){
				dateCalculated.setDate(math_it_up[operator](dateCalculated.getDate(),7));
			}else if(interval=='MONTH'){
				//dateCalculated.setMonth(math_it_up[operator](dateCalculated.getMonth(),1));
				var addOrSubtractMonth= (operator=='btn_prev')? -1:1; //31 Jan + 1 month = 28 Feb
				dateCalculated = new Date(dateCalculated).add(addOrSubtractMonth).month();
			}else if(interval=='YEAR'){
				dateCalculated = new Date(dateCalculated).add((operator=='btn_prev')? -1:1).year();
			}
			return dateCalculated;
		}
		/** pannel_dateRetrieval end */
		/** pannel_dateRetrieval end*/
		/** pannel_dateRetrieval end*/
		
		
	 
	     function initMenu() {
	      $('#menu ul').hide();
	      $('#menu ul').children('.current').parent().show();
	      //$('#menu ul:first').show();
	      $('#menu li a').click(
	        function() {
	          var checkElement = $(this).next();
	          if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
	            return false;
	            }
	          if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
	            $('#menu ul:visible').slideUp('normal');
	            checkElement.slideDown('normal');
	            return false;
	            }
	          }
	        );
	      }
		
	</script>
	
	
	
	

	<script type="text/javascript">
		$(document).ready(function() {
			
			$('#optionPanel').slimScroll({
			    height: '100%',
			    color: '#BCBCBC',
			    size: '5px',
			    allowPageScroll: false,
			    disableFadeOut: false
			});
			
			$('#tabs').tabs({
		        activate: function(event, ui){
					var idx = ui.newTab.index()*1;
					var targetTab = '#TSCWrapper' + idx;
					
					doPostMonthlyValidationImageOnTheWall(targetTab, getSelectedVarialbes(idx),$("#meNMSCDemo").val());
					sysout('[map.keys after #tabs'+idx +' activation ] ');
					$.each( map.keys(), function( i, key){
						sysout(i +' : '+ key)
					}); 
		        },active:0	
		    });
			
			$('#tabs').tabs({
		        load: function(event, ui){
		        	//sysout('######tabs load()');		
		        } 	
		    });
		        	
			$('#optionPanel').tabs({
		        activate: function(event, ui){
		        },active:0	
		    });
			
			 $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
			        var currentTab = $(e.target).text(); 
			        var previousTab = $(e.relatedTarget).text(); 
		//	        //sysout($("#tabs").tabs('option', 'active') + ' / ' + currentTab);
			        var idx = $("#tabs").tabs('option', 'active')       //getter
			        $("#optionPanel").tabs('option', 'active', idx*1)   //setter
		    });
			 
	
		 
		    $("#menu-toggle-2").click(function(e) {
		        //e.preventDefault();
		        $("#wrapper").toggleClass("toggled-2").promise().done(function(){
		        	
		        });

				setTimeout(rowItem_resizable, 300, itemSize);
		    });
			
		    
	    	initMenu();

			var idx = $("#tabs").tabs('option', 'active');
			var targetTab = '#TSCWrapper' + idx;
			doPostMonthlyValidationImageOnTheWall(targetTab, getSelectedVarialbes(idx),$("#meNMSCDemo").val());
			//sysout('[charts.length after drawTimesereis() ] ' + charts.length);
			//resize draggableITem
			//resize draggableITem
			var itemSize=12;
			$('#control_resize_small').click(function() {
				rowItem_resizable(4);
			});
			$('#control_resize_medium').click(function() {
				rowItem_resizable(6);
			});
			$('#control_resize_large').click(function() {
				rowItem_resizable(12);
			});
			var rowItem_resizable = function(size) {
				sysout('>>>>rowItem_resizable size=' + size);				
				$('.meDraggableItem').removeClass('col-xs-'+itemSize);
				$('.meDraggableItem').removeClass('col-md-'+itemSize);
				$('.meDraggableItem').removeClass('col-lg-'+itemSize);
				$('.meDraggableItem').addClass('col-xs-'+size);
				$('.meDraggableItem').addClass('col-md-'+size);
				$('.meDraggableItem').addClass('col-lg-'+size);
				itemSize = size;
				ITEM_SIZE = size;
				//resize div and reflow!!!
				//$('#ts_vsnr_det_0').highcharts().reflow(); //test only
				/* $('.classySnob').each(function() { 
					$(this).highcharts().reflow();
					
				}); */
			}; 
			//resize draggableITem
			//resize draggableITem
			

			
		});
	</script>
	
	
		
	<!-- meEssential me decision was based upon two considerations (a: init order b:)-->
	<script src="<c:url value="/js/meEssential.js"/>"></script>
</head>

<body id="fabulousbdtc"  >
	<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
	<!-- 전체 레이어 시작 -->
	<div class="svg-wrap hidden">
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-left-1" d="M46.077 55.738c0.858 0.867 0.858 2.266 0 3.133s-2.243 0.867-3.101 0l-25.056-25.302c-0.858-0.867-0.858-2.269 0-3.133l25.056-25.306c0.858-0.867 2.243-0.867 3.101 0s0.858 2.266 0 3.133l-22.848 23.738 22.848 23.738z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-right-1" d="M17.919 55.738c-0.858 0.867-0.858 2.266 0 3.133s2.243 0.867 3.101 0l25.056-25.302c0.858-0.867 0.858-2.269 0-3.133l-25.056-25.306c-0.858-0.867-2.243-0.867-3.101 0s-0.858 2.266 0 3.133l22.848 23.738-22.848 23.738z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-left-2" d="M26.667 10.667q1.104 0 1.885 0.781t0.781 1.885q0 1.125-0.792 1.896l-14.104 14.104h41.563q1.104 0 1.885 0.781t0.781 1.885-0.781 1.885-1.885 0.781h-41.563l14.104 14.104q0.792 0.771 0.792 1.896 0 1.104-0.781 1.885t-1.885 0.781q-1.125 0-1.896-0.771l-18.667-18.667q-0.771-0.813-0.771-1.896t0.771-1.896l18.667-18.667q0.792-0.771 1.896-0.771z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-right-2" d="M37.333 10.667q1.125 0 1.896 0.771l18.667 18.667q0.771 0.771 0.771 1.896t-0.771 1.896l-18.667 18.667q-0.771 0.771-1.896 0.771-1.146 0-1.906-0.76t-0.76-1.906q0-1.125 0.771-1.896l14.125-14.104h-41.563q-1.104 0-1.885-0.781t-0.781-1.885 0.781-1.885 1.885-0.781h41.563l-14.125-14.104q-0.771-0.771-0.771-1.896 0-1.146 0.76-1.906t1.906-0.76z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-left-3" d="M44.797 17.28l0.003 29.44-25.6-14.72z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-right-3" d="M19.203 17.28l-0.003 29.44 25.6-14.72z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-left-4" d="M15.946 48l0.003-10.33 47.411 0.003v-11.37h-47.414l0.003-10.304-15.309 16z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-right-4" d="M48.058 48l-0.003-10.33-47.414 0.003v-11.37h47.418l-0.003-10.304 15.306 16z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-left-5" d="M48 10.667q1.104 0 1.885 0.781t0.781 1.885-0.792 1.896l-16.771 16.771 16.771 16.771q0.792 0.792 0.792 1.896t-0.781 1.885-1.885 0.781q-1.125 0-1.896-0.771l-18.667-18.667q-0.771-0.771-0.771-1.896t0.771-1.896l18.667-18.667q0.771-0.771 1.896-0.771zM32 10.667q1.104 0 1.885 0.781t0.781 1.885-0.792 1.896l-16.771 16.771 16.771 16.771q0.792 0.792 0.792 1.896t-0.781 1.885-1.885 0.781q-1.125 0-1.896-0.771l-18.667-18.667q-0.771-0.771-0.771-1.896t0.771-1.896l18.667-18.667q0.771-0.771 1.896-0.771z" />
		</svg>
		<svg width="64" height="64" viewBox="0 0 64 64">
			<path id="arrow-right-5" d="M29.333 10.667q1.104 0 1.875 0.771l18.667 18.667q0.792 0.792 0.792 1.896t-0.792 1.896l-18.667 18.667q-0.771 0.771-1.875 0.771t-1.885-0.781-0.781-1.885q0-1.125 0.771-1.896l16.771-16.771-16.771-16.771q-0.771-0.771-0.771-1.896 0-1.146 0.76-1.906t1.906-0.76zM13.333 10.667q1.104 0 1.875 0.771l18.667 18.667q0.792 0.792 0.792 1.896t-0.792 1.896l-18.667 18.667q-0.771 0.771-1.875 0.771t-1.885-0.781-0.781-1.885q0-1.125 0.771-1.896l16.771-16.771-16.771-16.771q-0.771-0.771-0.771-1.896 0-1.146 0.76-1.906t1.906-0.76z" />
		</svg>
	</div>
	
	
	
	<!-- header-->
	<div id="meHeader">
	    <c:import url="/mePageLink.do?link=main/inc/meNavTop" />
	</div>
	
		
	<!--dateChoooooser--> 
	<!--dateChoooooser--> 
	<header class="meControllPanel">
		<div class="container" align="left">
			
            <div class="form-horizontal">
            
           		<div class="pull-left" >
            		<button  type="button" class="meBtn meBtn-primary fa fa-bars" style="margin-bottom:0px;" id="menu-toggle-2"></button>
				</div>
            
            
            
            	 <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5 demo vcenter" style="width:220px;padding-top: 3px;">
		            <input type="text" id="meNMSCDemo" class="form-control" readonly="readonly">
		            <i class="fa fa-calendar"></i>	
		          </div>
		          
		          
		          
	             <div class="vcenter">
	            	<div class="pull-left" style="margin-right: 15px;">
	            		<button  type="button" class="meBtn meBtn-primary meBtn-lg outline " style="margin-top:2px;" id="btn_getMostRecentOne">최근</button>
	            	</div>
	            	
	            	<div class="pull-left">
	            		<button  id="btn_prev" type="button" class="meBtn meBtn-primary  fa fa-chevron-left"
	            			 onclick="getDateCalculated(this.id)"></button>
	            	</div>
	            	
	            	
	            	<div id="retrievalRangeSelector" class="dropdown select pull-left" style="margin-left: 3px;margin-right: 3px">
					    <button class="  btn-small dropdown-toggle " type="button" id="menu1" data-toggle="dropdown" style="margin-top:6px;">
					    	<span class="selected" id="1" value="MONTH">1개월</span><span class="caret"></span>
				    	</button>
					    <ul class="dropdown-menu option" role="menu" >
					    <!-- 
					      <li id="1" role="presentation" value="WEEK"><a role="menuitem" tabindex="-1" >1주일</a></li>
					     -->
					      <li id="1" role="presentation" value="MONTH"><a role="menuitem" tabindex="-1" >1개월</a></li>
					      <li id="2" role="presentation" value="YEAR"><a role="menuitem" tabindex="-1" >1년</a></li>
					      <!-- 
					      <li role="presentation" class="divider"></li>
					       -->
					    </ul>
				    </div>
				    
	            	<div class="pull-left">
	            		<button  id="btn_next" type="button" class="meBtn meBtn-primary fa fa-chevron-right"  
	            			onclick="getDateCalculated(this.id)"></button>
	            	</div>
	            	
	            	
					
	            </div>	
            
           		<div class="pull-right" style="padding-right:50px;"> 
	            	<ul id="breadcrumbs-one" class="pull-right vcenter" >
						<li><a href="${pageContext.request.contextPath}/cmm/main/mainPage.do">Home</a></li>
						<li><a>L2 품질감시</a></li>
						<li><a>월검증리포트</a></li>
					</ul>
            	</div>
            </div>
		     
		            
        	<script type="text/javascript">
        	
	        	$('#retrievalRangeSelector').on('click','.option li',function(){
	        		var i = $(this).parents('.select').attr('id');
	        		var v = $(this).children().text();
	        		var o = $(this).attr('id');
	        		var valStr = $(this).attr('value'); // (WEEK || MONTH || YEAR)
	        		$('#'+i+' .selected').attr('id',o);
	        		$('#'+i+' .selected').text(v);
	        		$('#'+i+' .selected').attr('value',valStr);
	        		//var haha = $('#retrievalRangeSelector .selected').attr('value');
	        	});
	        	
	        	$('#chartingPeriodSelector').on('click','.option li',function(){
	        		var i = $(this).parents('.select').attr('id');
	        		var v = $(this).children().text();
	        		var o = $(this).attr('id');
	        		var valStr = $(this).attr('value'); // (WEEK || MONTH || YEAR)
	        		$('#'+i+' .selected').attr('id',o);
	        		$('#'+i+' .selected').text(v);
	        		$('#'+i+' .selected').attr('value',valStr);
	        		//var haha = $('#retrievalRangeSelector .selected').attr('value');
					var selectedDateObj= moment($("#meNMSCDemo").val(), 'YYYY-MM-DD'); //.toDate(); //use .toDate() to transform a moment object into a js date obj haha
					meRequest(selectedDateObj);					
	        	});
        	
        		$('#btn_getMostRecentOne').click(function(){
        			//change the selected date range of that picker
        			$('#meNMSCDemo').data('daterangepicker').setStartDate('<c:out value="${extSeries.compbegindate4Cal}" />');
        			$('#meNMSCDemo').data('daterangepicker').setEndDate('<c:out value="${extSeries.compbegindate4Cal}" />');
        			$('#meNMSCDemo').val('<c:out value="${extSeries.compbegindate4Cal}" />');
//        			$('#meNMSCDemo').data('daterangepicker').setEndDate('2015-11-17');
//        			$('#meNMSCDemo').val('2015-11-17');
					//click event는 발생안하네        			
        			meRequest(moment(mostRecentDate));
        		});
        	
        		$('#btn_enableRangePicker').click(function(){
/*         			$('#meNMSCDemo').daterangepicker({
        				  locale: { singleDatePicker: true????? }  
        			});
 */        			sysout('#btn_enableRangePicker.click.function()');
        			$('#meNMSCDemo').daterangepicker({ 
        				singleDatePicker: false
        				, timePicker: true
        			    , timePicker24Hour: true
					});
 					
        		});
        		
        		
        		$('#meNMSCDemo').daterangepicker({
        			locale: {
        				format: 'YYYY-MM-DD'
        			}, 
        			
        			
           		    "singleDatePicker": true,
        		    "showDropdowns": true,
        		    "startDate": "<c:out value="${extSeries.compbegindate4Cal}" />", 
        		    "endDate" : "<c:out value="${extSeries.compbegindate4Cal}" />",
//        		    "startDate": "2013-08-09", 
//        		    "endDate" : "2013-08-09",
					"minDate" : minDate.customFormat("#YYYY#-#MM#-#DD#"),
        		    "maxDate": "<c:out value="${extSeries.compbegindate4Cal}" />"     //today
        			}, function(start, end, label) {
        				var idx = $("#tabs").tabs('option', 'active');
        				var targetTab = '#TSCWrapper' + idx;
        				
        				doPostMonthlyValidationImageOnTheWall(targetTab, getSelectedVarialbes(idx), start.format('YYYY-MM-DD'));
        				//sysout('[charts.length after drawTimesereis() ] ' + charts.length);
           		});
		        	
		    </script>    
		        
		</div>
	</header>
	<!--dateChoooooser--> 
	
	
	<div class="container">	
	  <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
        	<div id="optionPanel" >
            	<!-- tab menus begin-->
            	<ul class="hidden"> 
					<li><a href="#OPT_0" data-toggle="tab">same old sht</a></li>    
				</ul> 
            	<!--tab menus end-->
            	<!-- tab body    row가 패딩속성땜에 250넘어서 hscrollbar 생김 ㅎㅎ-->
                <div class="row"  style="width:350px;">
             		<!--FIRST TAB-->
               		<div id="OPT_0" >
			        	<c:import url="/mePageLink.do?link=_alternatives/ENTIRE_CONDITIONS_L2MonthlyReport">
			        		<c:param name="identifier" value="pan00"/>
			        	</c:import>
               		</div>
       			</div>		 
 			</div>       
 			
        	
        </div><!-- /#sidebar-wrapper -->
        
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div id="tabs" class=""><!-- class="container-fluid xyz" -->
            	<!-- tab menus begin-->
            	<ul> <!--ul class="hidden" -->  
					<li><a href="#TSCWrapper0" data-toggle="tab"> Report </a></li>    
				</ul> 
            	<!--tab menus end-->
            	<!-- tab body-->   
                <div class="row">
             		<!--FIRST TAB-->
               		<div id="TSCWrapper0" > 
             		</div>
                </div>
            </div>
            
            <c:import url="/mePageLink.do?link=QI/popupWindow" />
            
        </div>
        <!-- /#page-content-wrapper -->
    </div>
	</div>
	 
</body>

</html>


