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
    
	<title>품질정보</title>
	
 
	<script src="${pageContext.request.contextPath}/js/jquery/jquery-1.9.1.js"></script>	
    <script src="${pageContext.request.contextPath}/resource/js/bootstrap.min.js"></script>
  	<!-- FuelUX 
	    <script src="//www.fuelcdn.com/fuelux/3.13.0/js/fuelux.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/meFuel/treeStaticDataSource.js"></script>	
  	-->  
 
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
    <!-- spinner.js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/meSpinner/spin.min.js"></script>
	
	
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<link href="${pageContext.request.contextPath}/css/style_v2.css" rel="stylesheet">
    

	
<!-- 차트드로잉 관련 펑션 분리 -->
<!-- 차트드로잉 관련 펑션 분리 -->
<script src="${pageContext.request.contextPath}/js/meDrawTimeseriesChart.js"></script>
    
	<!-- 2c.doe.hicharts-->
	
	<script src="${pageContext.request.contextPath}/js/highchart/highcharts.js"></script>
	<script src="${pageContext.request.contextPath}/js/highchart/highcharts-more.js"></script>
	<script src="${pageContext.request.contextPath}/js/highchart/modules/boost.src.djf.custom.js"></script>
	<script src="${pageContext.request.contextPath}/js/highchart/modules/exporting.js"></script>
	<script src="${pageContext.request.contextPath}/js/highchart/modules/offline-exporting.js"></script>
	
	
	<!-- minimal ajax loading spinner 
	<script src="${pageContext.request.contextPath}/js/preloader/jquery.pleaseWait.js"></script>
	DEPRECATED
	-->
	
	<!-- slimScroll -->
	<script src="${pageContext.request.contextPath}/js/slimScroll/jquery.slimscroll.min.js"></script>
	

	<script type="text/javascript">
	
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
	
	
	
	
		function getSelectedVarialbes(idx){
			var selected = [];
			$('#OPT_'+idx+' .checkboxes input:checked').each(function() {
//		sysout("getSelectedVarialbes(" + idx + ")");
//		sysout($(this).attr('name'));
			    selected.push($(this).attr('name'));
			}); 
			return selected;			
		}
	
		
//		var charts = [];

		  function syncTooltip(container, p) {
		    var  data;
		 	  $.each( map.values(), function( i, chartObj){
//		      for(var i=0; i<map.size(); i++) {
		          if(container.id != chartObj.container.id) { //not me
		              data = chartObj.series[0].data;
		              for(var j=0; j<data.length; j++){
		                  if (data[j].x === p){
		                	  //sysout(chartObj.container.id + ' :: selected point p is: ' + moment.utc(p).format("YYYY-MM-DD HH:mm:ss"))
		                	  var point = chartObj.series[0].data[j];
		                	  chartObj.xAxis[0].drawCrosshair({ chartX: point.plotX, chartY: point.plotY}, point);
							  if(chartObj.tooltip.shared) {
								  var arr = [];
						    	  $.each( chartObj.series, function( seriesIdx, seriesObj){ //  이렇게 해도 마지막거만 뿌림 허허
							    	  arr.push(seriesObj.data[j]);
						    	  });
//								  chartObj.tooltip.refresh([chartObj.series[0].data[j], chartObj.series[1].data[j]]);
								  chartObj.tooltip.refresh(arr);
						      }
						      else {
						    	  chartObj.tooltip.refresh(chartObj.series[0].data[j]);     //  얘는 series[0]만 뿌리고
//						    	  $.each( chartObj.series, function( seriesIdx, seriesObj){ //  이렇게 해도 마지막거만 뿌림 허허
//							    	  chartObj.tooltip.refresh(seriesObj.data[j]);
//						    	  });
						      }
							  /* 							  
		                      chartObj.tooltip.refresh( chartObj.series[0].data[j] );
						      */
		                  }        
		              }
		          }
			  }); 
		  }
	
	
		/**
		 * */
		function pleaseWait(targetDiv){
			
			sysout('pleaseWait(targetDiv):: #'+targetDiv);
			
			var opts = {
					  lines: 13 // The number of lines to draw
					, length:  18//38 // The length of each line
					, width: 8 // The line thickness
					, radius: 42 // The radius of the inner circle
					, scale: 0.5 // Scales overall size of the spinner
					, corners: 1 // Corner roundness (0..1)
					, color: '#003366' // #rgb or #rrggbb or array of colors
					, opacity: 0.25 // Opacity of the lines
					, rotate: 0 // The rotation offset
					, direction: 1 // 1: clockwise, -1: counterclockwise
					, speed: 1 // Rounds per second
					, trail: 81 // Afterglow percentage
					, fps: 20 // Frames per second when using setTimeout() as a fallback for CSS
					, zIndex: 2e9 // The z-index (defaults to 2000000000)
					, className: 'spinner' // The CSS class to assign to the spinner
					, top: '50%' // Top position relative to parent
					, left: '50%' // Left position relative to parent
					, shadow: false // Whether to render a shadow
					, hwaccel: false // Whether to use hardware acceleration
					, position: 'absolute' // Element positioning
					}
			
//			var target = document.getElementById(targetDiv);
//			var spinner = new Spinner(opts).spin(target);
			var meSpinner = new Spinner(opts).spin();
			$('#'+targetDiv).append(meSpinner.el);


			/* $('#'+targetDiv).pleaseWait({
				  crazy:false,
				  speed:0,
				  increment: 0,
				  image:'${pageContext.request.contextPath}/resource/assets/preloader.gif',
			});  */
		} 
		 
		
		/**
		리팩터링 시급ㅋㅋㅋㅋㅋㅋ 
		리팩터링 시급ㅋㅋㅋㅋㅋㅋ 
		리팩터링 시급ㅋㅋㅋㅋㅋㅋ 
		*/ 
		function drawTimeseries(targetDivId, varSelected, dStr){
sysout('=============================================================================');			
sysout('drawTimeseries(...) targetDivId is ' + targetDivId + ' varSelected :: ');
sysout(varSelected);
			//charts.length = 0; //init chart refs
			if(varSelected.length==0) return;
			//if(tabIndex==0){ 
				//chartingPeriod 게산여기서
				//chartingPeriod 게산여기서
				var chartingPeriod =  $('#chartingPeriodSelector .selected').attr('value'); 
				var d_xDaysAgo = moment(dStr, 'YYYY-MM-DD').toDate(); //use .toDate() to transform a moment object into a js date obj haha
				d_xDaysAgo = moment(calcXDaysAgo(d_xDaysAgo, chartingPeriod)).format('YYYY-MM-DD');
				sysout("chartingPeriod: " + chartingPeriod + " [" +  d_xDaysAgo + " ~ " +dStr +"]");
				
				$.each (varSelected, function(i,itm){ //itm == cb name attr
					
					var detectorNum = itm.substring(itm.lastIndexOf('_')+1,itm.length);
					var typeOfChart = itm.split('_')[0]; //VR01		
					
					var meItem = 't' + $("#tabs").tabs('option', 'active') + '_ts_' + itm;
					
					if(typeOfChart=='L1A-QI01'){
						var vsnrHTML =  getDraggableContainerHTML(itm, 'Visible SNR ',detectorNum);
						$(targetDivId).append(vsnrHTML);
						pleaseWait(meItem);
						var url_VSNR = '<c:url value='/' />timeseries/retrieval/L_1_A_VSNR';
						addChart_VSNR(url_VSNR,dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						
					}else if(typeOfChart=='L1A-QI02'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Visible Radiance ',detectorNum);
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url_VR = '<c:url value='/' />timeseries/retrieval/L_1_A_VR';
						addChart_VRadiance(url_VR, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						
					}else if(typeOfChart=='L1A-QI03'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Visible PRNU ',detectorNum);
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url_VPRNU = '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU';
						addChart_VisiblePRNU(url_VPRNU, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						
					}else if(typeOfChart=='L1A-QI04'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'IR Radiance',detectorNum);
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_A_IRRS';
						addChart_IRRS(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						
					}else if(typeOfChart=='L1A-QI05'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'IR NEDT',detectorNum);
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_A_IRNEDT';
						addChart_IR_NEDT(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						
					}else if(typeOfChart=='L1A-QI06'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'IR PRNU',detectorNum);
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_A_IRPRNU';
						addChart_IR_PRNU(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
				//Level 1 A Environment Variables	
					}else if(typeOfChart.startsWith("L1A-EV")){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Level 1 A ENV','nodet');
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_A_ENV';
						addChart_L1A_ENV(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
				//Level 1 A Environment Variables	
						
				
					//Level 1 B QI	
					//Level 1 B QI	
					//Level 1 B QI	
					//Level 1 B QI	
					}else if(typeOfChart=='L1B-QI02'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Number of Valid Landmarks','nodet');
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_NVL';
						addChart_LV1B_QI_NumOfLandmarks(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						
					}else if(typeOfChart=='L1B-QI03'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Landmark Residual - Average (EW/NS)','nodet');
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_RAVG';
						addChart_LV1B_QI_ResidualAvg(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
					//Residual Standard Deviation (EW/NS)	
					}else if(typeOfChart=='L1B-QI04'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Residual Standard Deviation','nodet');
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_STDDEV';
						addChart_LV1B_QI_ResidualStdDev(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
					//Residual Quadratic Distance 	
					}else if(typeOfChart=='L1B-QI05'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Residual Quadratic Distance','nodet');
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_QUADDIST';
						addChart_LV1B_QI_ResidualQuadraticDistance(url, dStr, d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						
					//Level 1 B ENV	
					//Level 1 B ENV		
					//Spacecraft Position R(m)	
					}else if(typeOfChart=='L1B-EV01'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Spacecraft Position','nodet');
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_SCPOS';
						addChart_LV1B_EV_SCPOS(url, dStr, d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
					//Spacecraft Attitude	
					}else if(typeOfChart=='L1B-EV02'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Spacecraft Attitude','nodet');
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_SCATT';
						addChart_LV1B_EV_SCATT(url, dStr, d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
					}
					
				});
			//}
			WinMove();
		
	//		//sysout(map.values());
	//		//sysout(map.keys());
	//		//sysout(map.get("ts_QI0_IR01_1"));
	//		//sysout(charts[0].highcharts());
			//										//sysout(charts[0]);
	//		//sysout(map.values());
	//=============================================================					
		/* 	$.each( map.keys(), function( index, keyStr ){
			    //sysout(keyStr);
			    var chartCont = map.get(keyStr);
		        charts.push(chartCont.highcharts());
			});
			//sysout(charts[0]); */
	/* 			$.each(charts, function (index, content){
				
			}); */
		}
		
	

		
		
		
		/** pannel_dateRetrieval begin*/
		/** pannel_dateRetrieval begin*/
		/** pannel_dateRetrieval begin*/
		function meRequest(meDateObj){
			var idx = $("#tabs").tabs('option', 'active');
			var targetTab = '#TSCWrapper' + idx;
			drawTimeseries(targetTab,getSelectedVarialbes(idx), meDateObj.format('YYYY-MM-DD'));
//			//sysout('[charts.length after drawTimesereis() ] ' + charts.length);
		}
		
		
		var minDate = new Date(2013,3,01);
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
				alert("자료 제공 범위는 2013-04-01 부터  ${extSeries.compbegindate4Cal}까지 입니다.");
				$('#meNMSCDemo').data('daterangepicker').setStartDate(moment(minDate).format('YYYY-MM-DD'));
				$('#meNMSCDemo').data('daterangepicker').setEndDate(moment(minDate).format('YYYY-MM-DD'));
				$('#meNMSCDemo').val(moment(minDate).format('YYYY-MM-DD'));
				meRequest(moment(minDate));
			}else if(dateTarget.getTime() > mostRecentDate.getTime()){
				alert("자료 제공 범위는 2013-04-01 부터  ${extSeries.compbegindate4Cal}까지 입니다.");
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
					// var range = $('#dataRangeChooser').find(":selected").val()+'';
			        // requestData( $("#datepicker").val().split('-').join(''),  range, ui.newTab.index());
			        
					sysout('tab activated: ' + ui.newTab.index()*1 )
				/* 	
					 $('.classySnob').each(function(){
						 $(this).pleaseWait('stop');	
					 });
			 */
					var idx = ui.newTab.index()*1;
					var targetTab = '#TSCWrapper' + idx;
					
					drawTimeseries(targetTab, getSelectedVarialbes(idx),$("#meNMSCDemo").val());
					sysout('[map.keys after #tabs'+idx +' activation ] ');
					$.each( map.keys(), function( i, key){
						sysout(i +' : '+ key)
					}); 
					
		        	$(targetTab+' .classySnob').each(function() {  
			        	$(this).highcharts().reflow();
		        	});
		        	
		        	
		        	
		        	
		        },active:0	
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
		        $("#wrapper").toggleClass("toggled-2");
		        //$('.highcharts-container').each(function() { $(this).resize();});
		        //$('.classySnob').each(function() {  $(this).highcharts().reflow();});
//		        $('.classySnob').each(function() {  
		        $('.meDraggableItem').each(function() {  
//		        	sysout($(this));
//		        	sysout('#menu-toggle-2.click function(e) reflow()');
	//	        	$(this).resize(); //it doesnt work
//		        	$(this).trigger("resize"); //it doesnt work
//		        	$(this).highcharts().reflow();  //it doesnt work
	        	});
		        $('#menu ul').hide();
		    });
			
		    
	    	initMenu();

	    
 			$(".checkboxes :checkbox").change(function(e){
				if ($(this).is(":checked")){
					
					var idx = $("#tabs").tabs('option', 'active');
					var targetTab = '#TSCWrapper' + idx;

					var selected = [];
				    selected.push($(this).attr('name'));
					
					drawTimeseries(targetTab, selected,$("#meNMSCDemo").val());
					//sysout('[charts.length after drawTimesereis() ] ' + charts.length);
					///////////////////////////////////////////
					/* 
					var vsnrHTML =  getDraggableContainerHTML('vsnr_det_', 'Visible SNR ',$(this).attr('name'));
					$('#chartContainer').append(vsnrHTML);
					addChart_VSNR_bugFixed($("#meNMSCDemo").val(),'tabidxdoesntneedanymore', $(this).attr('name'), 'ts_vsnr_det_'+$(this).attr('name'));					
					 */
					///////////////////////////////////////////
					
					// meCombineDroppables(divId);
					// scroll down transition effect? 
							
//					$.each( map.keys(), function( i, key){
//						sysout(i +' : '+ key)
//					}); 		
							
				}else{
					var idx = 't' + $("#tabs").tabs('option', 'active') + '_';
					var targetTab = '#TSCWrapper' + idx;
					
					$('#'+idx+$(this).attr('name')).remove();
					var chartId4map = idx+  'ts_'+$(this).attr('name')
					map.remove(chartId4map);
					sysout("unchecked.remove() " + idx+$(this).attr('name'));
					sysout('==> remove [' + chartId4map + '] from maps');
//			$.each( map.keys(), function( i, key){
//				sysout(i +' : '+ key)
//			}); 
				} 
				WinMove();
			});
			
 			
 			//
		/* 	var selected = [];
 			var idx = $("#optionPanel").tabs('option', 'active');
 			$('#OPT_'+idx+' .checkboxes input:checked').each(function() {
			    selected.push($(this).attr('name'));
			});  */
			var idx = $("#tabs").tabs('option', 'active');
			var targetTab = '#TSCWrapper' + idx;
			drawTimeseries(targetTab, getSelectedVarialbes(idx),$("#meNMSCDemo").val());
			//sysout('[charts.length after drawTimesereis() ] ' + charts.length);
			//resize draggableITem
			//resize draggableITem
			var itemSize=6;
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
				$('.meDraggableItem').removeClass('col-xs-'+itemSize);
				$('.meDraggableItem').removeClass('col-md-'+itemSize);
				$('.meDraggableItem').removeClass('col-lg-'+itemSize);
				$('.meDraggableItem').addClass('col-xs-'+size);
				$('.meDraggableItem').addClass('col-md-'+size);
				$('.meDraggableItem').addClass('col-lg-'+size);
				itemSize = size;
				//resize div and reflow!!!
				//$('#ts_vsnr_det_0').highcharts().reflow(); //test only
				$('.classySnob').each(function() { 
					$(this).highcharts().reflow();
					
				});
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
					    	<span class="selected" id="1" value="WEEK">1주일</span><span class="caret"></span>
				    	</button>
					    <ul class="dropdown-menu option" role="menu" >
					      <li id="1" role="presentation" value="WEEK"><a role="menuitem" tabindex="-1" >1주일</a></li>
					      <li id="2" role="presentation" value="MONTH"><a role="menuitem" tabindex="-1" >1개월</a></li>
					      <li id="3" role="presentation" value="YEAR"><a role="menuitem" tabindex="-1" >1년</a></li>
					      <!-- 
					      <li role="presentation" class="divider"></li>
					       -->
					    </ul>
				    </div>
				    
	            	<div class="pull-left">
	            		<button  id="btn_next" type="button" class="meBtn meBtn-primary fa fa-chevron-right"  
	            			onclick="getDateCalculated(this.id)"></button>
	            	</div>
	            	
	            	
	            	
	            	<div id="social" class="pull-left" style="padding-left:15px;margin-top: 6px;">
						<div class="btn-group" id='control_size'  >
							<button type="button" class="btn btn-warning btn-xs" style="margin-bottom:0px;" id='control_resize_small' title='display 3 items per row'><span class="glyphicon glyphicon-th"></span></button>
							<button type="button" class="btn btn-danger btn-xs" style="margin-bottom:0px;" id='control_resize_medium' title='display 2 items per row'><span class="glyphicon glyphicon-th-large"></span></button>
							<button type="button" class="btn btn-success btn-xs" style="margin-bottom:0px;" id='control_resize_large' title='display 1 item per row'><span class="glyphicon glyphicon-picture"></span></button>
						</div>
					</div>
					
					<!-- full screen mode toggle -->
	           		<div class="pull-left" style="margin-bottom:0px;padding-top:6px;padding-left:5px;" >
 	            		<button  type="button" class="meBtn-primary meBtn-noborder meExpandable " style="font-size:15px;"
	            			onclick="toggleFullScreen()"  title="Full Screen">
	            			<i style="padding-top:9" class="fa fa-arrows-alt" aria-hidden="true"></i>
           				</button> 
					<!-- 
	            		<button  type="button" class="btn meBtn-primary meExpandable fa fa-expand" style="font-size:14px;"
	            			onclick="toggleFullScreen()"  title="Full Screen">
           				</button>
					 -->
					</div>
	            	
	            		
	            	<div id="chartingPeriodSelector" class="dropdown select pull-left" style="margin-left: 3px;margin-right: 3px">&nbsp;&nbsp;&nbsp;Charting Periods: &nbsp;
					    <button class="  btn-small dropdown-toggle " type="button" id="menu1" data-toggle="dropdown" style="margin-top:6px;">
					    	<span class="selected" id="1" value="DAILY">Daily</span><span class="caret"></span>
				    	</button>
					    <ul class="dropdown-menu option" role="menu" >
					      <li id="1" role="presentation" value="DAILY"><a role="menuitem" tabindex="-1" >Daily</a></li>
					      <li id="2" role="presentation" value="WEEKLY"><a role="menuitem" tabindex="-1" >Weekly</a></li>
					      <li id="3" role="presentation" value="MONTHLY"><a role="menuitem" tabindex="-1" >Monthly</a></li>
					      <li id="4" role="presentation" value="QUARTERLY"><a role="menuitem" tabindex="-1" >Quarterly</a></li>
					      <!-- 
					      <li id="5" role="presentation" value="BIANNUALLY"><a role="menuitem" tabindex="-1" >Biannually</a></li>
					       -->
					       
					      <!-- 
					      <li role="presentation" class="divider"></li>
					       -->
					    </ul>
				    </div>
				    
	            	<div class="pull-left" style="margin-right: 15px; display: none">
	            		<button  type="button" class="meBtn meBtn-primary meBtn-lg outline " style="margin-top:2px;" id="btn_enableRangePicker">Custom-range</button>
	            	</div>
					
	            </div>	
            
            
           		<div class="pull-right" style="padding-right:50px;"> 
	            	<ul id="breadcrumbs-one" class="pull-right vcenter" >
						<li><a href="${pageContext.request.contextPath}/cmm/main/mainPage.do">Home</a></li>
						<!-- <li><a>Level 1 A</a></li> -->
						<li><a>품질지표 1</a></li>
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
        		    "maxDate": "<c:out value="${extSeries.compbegindate4Cal}" />"     //today
        			}, function(start, end, label) {
        				var idx = $("#tabs").tabs('option', 'active');
        				var targetTab = '#TSCWrapper' + idx;
        				
        				drawTimeseries(targetTab, getSelectedVarialbes(idx), start.format('YYYY-MM-DD'));
        				//sysout('[charts.length after drawTimesereis() ] ' + charts.length);
           		});
		        	
		    </script>    
		        
		</div>
	</header>
	<!--dateChoooooser--> 
	
	
	<div class="container">	
	
			  <!-- /#wrapper --><!-- /#wrapper --><!-- /#wrapper -->
	  <!-- /#wrapper --><!-- /#wrapper --><!-- /#wrapper -->
	  <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
        
        
        	<div id="optionPanel" >
            	<!-- tab menus begin-->
            	<ul class="hidden"> 
					<li><a href="#OPT_0" data-toggle="tab">same old sht</a></li>    
					<li><a href="#OPT_1" data-toggle="tab">same old sht</a></li>    
					<li><a href="#OPT_2" data-toggle="tab">same old sht</a></li>    
					<!-- 
						<li><a href="#OPT_0" data-toggle="tab">Level 1 A 품질지표</a></li>    
						<li><a href="#OPT_1" data-toggle="tab">Level 1 A 환경정보</a></li>    
						<li><a href="#OPT_2" data-toggle="tab">Level 1 B 품질지표</a></li>    
						<li><a href="#OPT_3" data-toggle="tab">Level 1 B 환경정보</a></li>    
						<li><a href="#OPT_4" data-toggle="tab">Level 2 품질지표</a></li>    
					 -->
				</ul> 
            	<!--tab menus end-->
            	<!-- tab body    row가 패딩속성땜에 250넘어서 hscrollbar 생김 ㅎㅎ-->
                <div class="row"  style="width:260px;">
             		<!--FIRST TAB-->
               		<div id="OPT_0" >
			        	<c:import url="/mePageLink.do?link=_alternatives/ENTIRE_CONDITIONS" />
               		</div>
               		<div id="OPT_1" >
			        	<c:import url="/mePageLink.do?link=_alternatives/WHOLE_CONDITIONS" />
               		</div>
               		<div id="OPT_2" >
			        	<c:import url="/mePageLink.do?link=_alternatives/WHOLE_CONDITIONS" />
               		</div>
               		<!-- 
	               		<div id="OPT_3" >
				        	<c 		import url="/mePageLink.do?link=QI/QI_LV1B_EI_conditions" />
	               		</div>
	               		<div id="OPT_4" >
				        	<c 		import url="/mePageLink.do?link=QI/QI_LV2_conditions" />
	               		</div>
               		 -->
        
       			</div>		 
 			</div>       
 			
        	
        </div><!-- /#sidebar-wrapper -->
        
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div id="tabs" class=""><!-- class="container-fluid xyz" -->
            	<!-- tab menus begin-->
            	<ul> <!--ul class="hidden" -->  
					<li><a href="#TSCWrapper0" data-toggle="tab"> Tab 1 </a></li>    
					<li><a href="#TSCWrapper1" data-toggle="tab"> Tab 2 </a></li>    
					<li><a href="#TSCWrapper2" data-toggle="tab"> Tab 3 </a></li>    
					<!-- 
					<li><a href="#TSCWrapper0" data-toggle="tab"> TAB Menu-always visible </a></li>    
					<li><a href="#TSCWrapper1" data-toggle="tab"> Create new tabs dynamically </a></li>    
					<li><a href="#TSCWrapper2" data-toggle="tab"> Store USER_SELECTED_CONDITIONS into cookie </a></li>    
					 -->
				</ul> 
            	<!--tab menus end-->
            	<!-- tab body-->   
                <div class="row">
             		<!--FIRST TAB-->
               		<div id="TSCWrapper0" > 
               			<!--  
               			-->
               			
					  
               			
             		</div>
               		   
					<!--SECOND TAB-->
					<div id="TSCWrapper1">	
						<!-- <div class="loader" data-initialize="loader" id="myLoader"></div>-->
					</div>
					
					<!--THIRD TAB-->
					<div id="TSCWrapper2"></div>
					
                </div>
            </div>
            
            <c:import url="/mePageLink.do?link=QI/popupWindow" />
            
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper --><!-- /#wrapper --><!-- /#wrapper -->
    <!-- /#wrapper --><!-- /#wrapper --><!-- /#wrapper -->
	
	<!-- 
			
		<div  id="chartContainer" class="col-md-11" style="padding-top:20px; ">  
		</div> 
	 -->	
	
	</div>
	 
	<!-- Footer 
	<div id="meFooter"  style="margin-top: 20px; z-index:10000; ">
		<c    import url="/mePageLink.do?link=main/inc/meFooter" />
	</div>	
	
	-->
	
</body>

</html>


