<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
	<title>SQIMS Level-1</title>
	
	<!-- 
		Cannot call methods prior to initialization; attempted to call method XXX 
		The issue is sometimes caused by jquery-ui and bootstrap-button plugins conflict. 
		jquery-ui code should go before bootstrap.js, and that solves the problem.
	-->
 
	<script src="${pageContext.request.contextPath}/js/jquery/jquery-1.9.1.js"></script>	
	<script src="${pageContext.request.contextPath}/js/jquery/ui/jquery-ui-1111.js"></script>
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
    <link href="${pageContext.request.contextPath}/resource/css/djf.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/resource/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">	
	<!-- Initialize the tree when page is loaded -->
	
	<!-- datePicker -->
	<link href="${pageContext.request.contextPath}/js/daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/daterangepicker/moment.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/daterangepicker/daterangepicker.js"></script>
    <!-- dateJS -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/date.js"></script>
    <!-- spinner.js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/meSpinner/spin.min.js"></script>
	
	
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<link href="${pageContext.request.contextPath}/css/style_v2.css" rel="stylesheet">
    

<link href="${pageContext.request.contextPath}/js/contextmenu/jquery.contextMenu.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/contextmenu/jquery.ui.position.js"></script>
<script src="${pageContext.request.contextPath}/js/contextmenu/jquery.contextMenu.js"></script>

	
<!-- 차트드로잉 관련 펑션 분리 -->
<!-- 차트드로잉 관련 펑션 분리 -->
<security:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
	<security:authentication property="principal.username" var="check" />
</security:authorize>

<c:choose>
	<c:when test="${empty check}">
		<script src="${pageContext.request.contextPath}/js/meDrawTimeseriesChart4plainUsers.js"></script>
	</c:when>	
	<c:otherwise>
		<script src="${pageContext.request.contextPath}/js/meDrawTimeseriesChart.js"></script>
	</c:otherwise>
</c:choose>



<link href="${pageContext.request.contextPath}/js/toastr/toastr.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/toastr/toastr.js"></script>
	


 
 
<style>
	ul.fancytree-container{
		font-size: 13px;
	}
	
	ul.fancytree-container {
    	background-color: transparent;
  			border: none;
	}
</style>    
    
    
<!-- 2c.doe.hicharts-->

	<script src="http://github.highcharts.com/bugfix/highcharts.js"></script>
<!-- 
	<script src=" {pageContext.request.contextPath}/js/highchart/highcharts.js"></script>
 -->
	<script src="${pageContext.request.contextPath}/js/highchart/highcharts-more.js"></script>
	<!-- boot.js causes selection error uu
	<script src="${pageContext.request.contextPath}/js/highchart/modules/boost.src.djf.custom.js"></script>
	 -->
	<script src="${pageContext.request.contextPath}/js/highchart/modules/exporting.js"></script>
	<script src="${pageContext.request.contextPath}/js/highchart/modules/offline-exporting.js"></script>
	<script src="${pageContext.request.contextPath}/js/highchart/modules/export-csv.js"></script>
	
	
	<!-- minimal ajax loading spinner 
	<script src="${pageContext.request.contextPath}/js/preloader/jquery.pleaseWait.js"></script>
	DEPRECATED
	-->
	
	<!-- slimScroll -->
	<script src="${pageContext.request.contextPath}/js/slimScroll/jquery.slimscroll.min.js"></script>
	

	<script type="text/javascript">
		
		var ITEM_SIZE = 12; //     4 || 6 || 12
	
		function addJstlImportTagDynamically(){
			//$('#TSCWrapper0').html('<c import url="/mePageLink.do?link=L1/WHOLE_CONDITIONS" />');
			alert('impossible haha');
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
	
	
	
		function logEvent(event, data, msg){
//	        var args = $.isArray(args) ? args.join(", ") :
	    	msg = msg ? ": " + msg : "";
	    	$.ui.fancytree.info("Event('" + event.type + "', node=" + data.node + ")" + msg);
		}	
		
		
	
		//djf20161206
		/*
			
		*/
		function getSelectedVarialbes(idx){
			sysout('==[begin]========getSelectedVarialbes(idx)==========================//'); 
			var selected = [];
			var key_laedingStr = 't' + idx + '_ts_';
			$.each(map.keys(), function( index, keyStr ){
		    	var key = new String(keyStr);
			    if(key.indexOf(key_laedingStr) != -1){   
//			    	selected.push(key.substring(6, key.length));
			    	selected.push(key.substr(6));
			    	sysout('tab'+idx+ ' [activated]=======>selected.push( ' + key.substring(6, key.length) + ' )');
			    }
			});
			sysout('==[end]==========getSelectedVarialbes(idx)===========================//'); 
			return selected;
		} 
		
	
		//djf20161019
		/*
			
		*/
		var treeSelected;
		function getSelectedVarialbes_DEPRECATED(idx){
			var selected = [];
 			$('#OPT_'+idx+' .checkboxes input:checked').each(function() {
			    selected.push($(this).attr('name'));
			    sysout($(this).attr('name'));
			}); 
 			sysout('_T_R_E_E_S_E_L_E_C_T_E_D_');
 			sysout(treeSelected);
			return selected;			
		} 
		
		//djf20161019
		//
		//fancytree
		function getSelectedVarialbes_DOESNT_WORK(idx){
			 /* var selNodes = $("#treeWithCheckbox_" +idx ).fancytree("getSelectedNodes");
			 var selection = $.map(selNodes, function(node){
				return node.key;
			}); */
			   var selection = jQuery.map(
				        jQuery("#treeWithCheckbox_" +idx ).fancytree('getRootNode').tree.getSelectedNodes(),
				        function( node ) { 
				            return node.key; 
				        }
				    );
			sysout(selection); 
			return meKeys
			
			 /* var selNodes = data.tree.getSelectedNodes();
			 // convert to title/key array
			 var selKeys = $.map(selNodes, function(node){
			      return "[" + node.key + "]: '" + node.title + "'";
			   });
			 $("#echoSelection2").text(selKeys.join(", ")); */
			 
	    	/*     var selNodes = $("#treeWithCheckbox").fancytree("getTree").getSelectedNodes();
	    	    sysout(selNodes);
				var selKeys = $.map(selNodes, function(node){
					return "[" + node.key + "]: '" + node.title + "'";
				});
				var meSelKeys = $.map(selNodes, function(node){
					return node.key;
				});
				sysout(meSelKeys); */
				
			return selected;			
		}
	
		
//		var charts = [];

		  /*
		  	모든 시리즈 데이터 포인트의 데이트타임이 일치한다고 가정하고 개발해서	아래와 같이 개발 - L1B 품질지표와 환경지표의 경우 시리즈간 자료의 데이트타임이 상이함 
		  
  			모든차트 loop
				해당차트의 시리즈[0]만 뽑아서 loop
					파라미터 p랑 매칭될경우
						매칭인덱스에 해당하는 각 시리즈 아이템 툴팁어레이에 삽입-loop
		  */
		  function syncTooltip(container, p) {
		    var  data;
		 	  $.each( map.values(), function( i, chartObj){ ////for(var i=0; i<map.size(); i++) {
		          if(container.id != chartObj.container.id) { //not me
		              data = chartObj.series[0].data;
		sysout('=='+chartObj.container.id+'=================================');          
	    sysout('other chartObj.series .length is ===' + ' [ '+chartObj.series.length+' ]');			  
	    sysout('other chartObj.series[0].data.length is ===' + ' [ '+data.length+' ]');			  
                	  sysout(' ::me. selected point p is: ' + moment.utc(p).format("YYYY-MM-DD HH:mm:ss"))
		              for(var j=0; j<data.length; j++){
		                  if (data[j].x === p){
		                	  sysout(chartObj.container.id + ' :: matched point p is: ' + moment.utc(p).format("YYYY-MM-DD HH:mm:ss"))
		                	  var point = chartObj.series[0].data[j];
		                	  chartObj.xAxis[0].drawCrosshair({ chartX: point.plotX, chartY: point.plotY}, point);
							  if(chartObj.tooltip.shared) {
	  	sysout('chartObj.tooltip.shared [TRUE]');								  
								  var arr = [];
						    	  $.each( chartObj.series, function( seriesIdx, seriesObj){ //  이렇게 해도 마지막거만 뿌림 허허
									  //sysout('seriesIdx is ' + seriesIdx + ' /  currSeries.length is ' + seriesObj)	;					    		  
							    	  arr.push(seriesObj.data[j]);
						    	  });
//								  chartObj.tooltip.refresh([chartObj.series[0].data[j], chartObj.series[1].data[j]]);
								  chartObj.tooltip.refresh(arr);
						      }
						      else {
    	sysout('chartObj.tooltip.shared [FALSE]');								  
						    	  chartObj.tooltip.refresh(chartObj.series[0].data[j]);     //  얘는 series[0]만 뿌리고
//						    	  $.each( chartObj.series, function( seriesIdx, seriesObj){ //  이렇게 해도 마지막거만 뿌림 허허
//							    	  chartObj.tooltip.refresh(seriesObj.data[j]);
//						    	  });
						      }
							  /* 							  
		                      chartObj.tooltip.refresh( chartObj.series[0].data[j] );
						      */
		                  }//else{sysout(chartObj.container.id + ' :: data[j].x  is: ' + moment.utc(data[j].x ).format("YYYY-MM-DD HH:mm:ss"))}        
		              }
		          sysout('================================================'); 
		          }
			  }); 
		  }
	
			/**
				현업은 모든 시리즈 시게열 요소 포인트 데이터 데이트타임이 동일하다고 가정. 
				시리즈[0]에 있는 데이터객체의 시간에 매칭되는 애들을 툴팁객체에 바인딩하였음.
				
				==> 시리즈 인덱스를 추가 파라미터로 받아서 시리즈를 선택적으로 사용하려 했으나ㅎㅎ 시리즈가 무조건 FD,ENH,LSH,APNH,LA만 있는게 아니라서ㅠ
				===> 
			*/
/* 			
		  function syncTooltip_LV1B_QI(container, p, seriesIndex) {
			sysout('syncTooltip_LV1B_QI.seriesIndex:: ' + seriesIndex);			  
		    var  data;
		 	  $.each( map.values(), function( i, chartObj){ ////for(var i=0; i<map.size(); i++) { // map에서 차트변수 모두 뽑아 루프태움
		          if(container.id != chartObj.container.id) { //not me
		              data = chartObj.series[seriesIndex].data;  ////////////////////////////////////////////////
		sysout('=='+chartObj.container.id+'=================================');          
	    sysout('other chartObj.series .length is ===' + ' [ '+chartObj.series.length+' ]');			  
	    sysout('other chartObj.series[0].data.length is ===' + ' [ '+data.length+' ]');			  
        sysout(' ::me. selected point p is: ' + moment.utc(p).format("YYYY-MM-DD HH:mm:ss"))
		              for(var j=0; j<data.length; j++){
		                  if (data[j].x === p){
		                	  sysout(chartObj.container.id + ' :: matched point p is: ' + moment.utc(p).format("YYYY-MM-DD HH:mm:ss"))
		                	  var point = chartObj.series[seriesIndex].data[j];
		                	  chartObj.xAxis[0].drawCrosshair({ chartX: point.plotX, chartY: point.plotY}, point);
		                	  
							  if(chartObj.tooltip.shared) {
	  	sysout('chartObj.tooltip.shared [TRUE]');								  
								  var arr = [];
								  sysout(chartObj);
 						    	  $.each( chartObj.series, function( seriesIdx, seriesObj){ //  이렇게 해도 마지막거만 뿌림 허허
							    	  arr.push(seriesObj.data[j]);
						    	  }); 
								  chartObj.tooltip.refresh(arr);
//								  chartObj.tooltip.refresh([ chartObj.series[seriesIndex].data[j], chartObj.series[seriesIndex].data[j] ]);
//								  chartObj.tooltip.refresh([chartObj.series[0].data[j], chartObj.series[1].data[j] ]);
						      }
						      else {
    	sysout('chartObj.tooltip.shared [FALSE]');								  
						    	  chartObj.tooltip.refresh(chartObj.series[seriesIndex].data[j]);     //  얘는 series[0]만 뿌리고
//						    	  $.each( chartObj.series, function( seriesIdx, seriesObj){ //  이렇게 해도 마지막거만 뿌림 허허
//							    	  chartObj.tooltip.refresh(seriesObj.data[j]);
//						    	  });
						      }
//		                      chartObj.tooltip.refresh( chartObj.series[0].data[j] );
		                  }//else{sysout(chartObj.container.id + ' :: data[j].x  is: ' + moment.utc(data[j].x ).format("YYYY-MM-DD HH:mm:ss"))}        
		              } //end.forLoop
		          sysout('================================================'); 
		          }
			  }); 
		  }
 */	
		/**
		
  
			asis
			모든차트 loop
				해당차트의 시리즈[0]만 뽑아서 loop
					파라미터 p랑 매칭될경우
						매칭인덱스에 해당하는 각 시리즈 아이템 툴팁어레이에 삽입-loop
						
			tobe
			모든차트 loop
				해당차트의 시리즈 loop
					각 시리즈 loop 
						시리즈item의 데이터 타임이 매칭되면 툴팁 객체에 더함
		
		*/  
		function syncTooltip_LV1B_QI(container, p, seriesIndex) {
		    var  data;
		    //var arr = [];
		 	  $.each( map.values(), function( i, chartObj){ ////for(var i=0; i<map.size(); i++) { // map에서 차트변수 모두 뽑아 루프태움
		          if(container.id != chartObj.container.id) { //not me
//		          	  if(chartObj.series[i]=== undefined){
//		          		  sysout('CONTINUE!!!!!!')
		          		 // return true;  //return anything that's not false and it will bhave as a continue
//		          	 
		        	  var arr = [];
		        	  for(var j=0; j<chartObj.series.length; j++){
						  var seriesDataSet = chartObj.series[j].data; 			        		  
			              for(var k=0; k<seriesDataSet.length; k++){
			            	  if(seriesDataSet[k].x===p){
			            		  //sysout('chartNo ['+i+'] / seriesIndex[' +j+ '] :: matched point p is: ' + moment.utc(p).format("YYYY-MM-DD HH:mm:ss"));											            	  
					        	  var point = chartObj.series[j].data[k];
			                	  chartObj.xAxis[0].drawCrosshair({ chartX: point.plotX, chartY: point.plotY}, point);
			            		  arr.push(seriesDataSet[k]);
			            		// If the tooltip.shared=true, the parameter is array of points
			            		// chart.tooltip.refresh([chart.series[1].points[2]]); 
			            		/* if(chartObj.tooltip.shared) {
								  var arr = [];
						    	  $.each( chartObj.series, function( seriesIdx, seriesObj){ //  이렇게 해도 마지막거만 뿌림 허허
							    	  arr.push(seriesObj.data[j]);
						    	  });
//								  chartObj.tooltip.refresh([chartObj.series[0].data[j], chartObj.series[1].data[j]]);
							      }
							      else {
							    	  chartObj.tooltip.refresh(chartObj.series[0].data[j]);     
							      } */
			            	  }else{
									//sysout('holy xxxx');			            		  
			            	  }
			              }			            	  
		              }; 
					  if(arr.length!=0)chartObj.tooltip.refresh(arr);
					  else chartObj.tooltip.hide();
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
			
			var meSpinner = new Spinner(opts).spin();
			$('#'+targetDiv).append(meSpinner.el);
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
					
					//Level 1 CRDS CO	L1-CRDS_ CO CO2 CH4 H2O
					if(typeOfChart.startsWith("L1-CRDS")){
							var radianceHTML =  getDraggableContainerHTML(itm, 'Level-0-CRDS (STN115, DEV202)','nodet', ITEM_SIZE);
							$(targetDivId).append(radianceHTML);
							pleaseWait(meItem);
							var url = '<c:url value='/' />timeseries/retrieval/L1_CRDS';
							addChart_L1_CRDS(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						//Level 1 CRDS CO2	
						
					//Level 1 Nephelometer	
					//Level 1 Nephelometer	
					}else if(typeOfChart=='L1-NEPHELO'){
						var vsnrHTML =  getDraggableContainerHTML(itm, 'Level-1-Nephelometer (STN 132, DEV 109)','nodet', ITEM_SIZE);
						$(targetDivId).append(vsnrHTML);
						pleaseWait(meItem);	
						var url_VSNR = '<c:url value='/' />timeseries/retrieval/L1_NEPHELO';
						addChart_NEPHELO(url_VSNR,dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum.split('-').join('_'), meItem, chartingPeriod);					
					//Level 1 OPC PMx	
					//Level 1 OPC PMx	
					}else if(typeOfChart=='L1-OPCPMX'){
						var vsnrHTML =  getDraggableContainerHTML(itm, 'Level-1-OPC PMX (STN 140, DEV 113)','nodet', ITEM_SIZE);
						$(targetDivId).append(vsnrHTML);
						pleaseWait(meItem);
						var url_VSNR = '<c:url value='/' />timeseries/retrieval/L1_OPCPMX';
						addChart_OPC_PMX(url_VSNR,dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum.split('-').join('_'), meItem, chartingPeriod);					
						
					//Level 1 APS_M	
					//Level 1 APS_M	
					}else if(typeOfChart=='L1-APSM'){
						var vsnrHTML =  getDraggableContainerHTML(itm, 'Level-1-APS M (STN 132, DEV 103)','nodet', ITEM_SIZE);
						$(targetDivId).append(vsnrHTML);
						pleaseWait(meItem);
						var url_VSNR = '<c:url value='/' />timeseries/retrieval/L1_APSM';
						addChart_APS_M(url_VSNR,dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum.split('-').join('_'), meItem, chartingPeriod);					
						
					//Level 1 A Environment Variables	
					}else if(typeOfChart=='L1A-QI01'){
						var vsnrHTML =  getDraggableContainerHTML(itm, 'Visible SNR ',detectorNum, ITEM_SIZE);
						$(targetDivId).append(vsnrHTML);
						pleaseWait(meItem);
						var url_VSNR = '<c:url value='/' />timeseries/retrieval/L_1_A_VSNR';
						addChart_VSNR(url_VSNR,dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
				
					//Level 1 B QI	
					//Level 1 B QI	
					//Level 1 B QI	
					//Level 1 B QI	
					}else if(typeOfChart=='L1B-QI02'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Number of Valid Landmarks','nodet', ITEM_SIZE);
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_NVL';
						addChart_LV1B_QI_NumOfLandmarks(url, dStr,d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
						
					//Level 1 B ENV	
					//Level 1 B ENV		
					//Spacecraft Position R(m)	
					}else if(typeOfChart=='L1B-EV01'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Spacecraft Position','nodet', ITEM_SIZE);
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_SCPOS';
						addChart_LV1B_EV_SCPOS(url, dStr, d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
					//Spacecraft Attitude	
					}else if(typeOfChart=='L1B-EV02'){
						var radianceHTML =  getDraggableContainerHTML(itm, 'Spacecraft Attitude','nodet', ITEM_SIZE);
						$(targetDivId).append(radianceHTML);
						pleaseWait(meItem);
						var url = '<c:url value='/' />timeseries/retrieval/L_1_B_SCATT';
						addChart_LV1B_EV_SCATT(url, dStr, d_xDaysAgo,'tabidxdoesntneedanymore', detectorNum, meItem, chartingPeriod);					
					}
					
				});
			WinMove();
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
	
	<c:choose>
		<c:when test="${empty check}">
			<script src="${pageContext.request.contextPath}/js/DJFGood2go/L1_ROLE_USER.js"></script>
		</c:when>	
		<c:otherwise>
			<script src="${pageContext.request.contextPath}/js/DJFGood2go/L1_ADMIN.js"></script>
		</c:otherwise>
	</c:choose>
	

	<script type="text/javascript">
		//document.ready script 분리 /js/DJFGood2go/L1_ADMIN이랑 ROLE_USER랑  
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
					    	<span class="selected" id="0" value="DAY">1일</span><span class="caret"></span>
				    	</button>
					    <ul class="dropdown-menu option" role="menu" >
					      <li id="0" role="presentation" value="DAY"><a role="menuitem" tabindex="-1" >1일</a></li>
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
						<!-- 
							<button type="button" class="btn btn-warning btn-xs" style="margin-bottom:0px;" id='control_resize_small' title='Display 3 items per row'><span class="glyphicon glyphicon-th"></span></button>
						 -->
							<button type="button" class="btn btn-danger btn-xs" style="margin-bottom:0px;" id='control_resize_medium' title='Display 2 items per row'><span class="glyphicon glyphicon-th-large"></span></button>
							<button type="button" class="btn btn-success btn-xs" style="margin-bottom:0px;" id='control_resize_large' title='Display 1 item per row'><span class="glyphicon glyphicon-picture"></span></button>
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
					      <!-- 
					      <li id="3" role="presentation" value="MONTHLY"><a role="menuitem" tabindex="-1" >Monthly</a></li>
					      <li id="4" role="presentation" value="QUARTERLY"><a role="menuitem" tabindex="-1" >Quarterly</a></li>
					       -->
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
						<li><a>품질관리</a></li>
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
                <div class="row"  style="width:350px;">
                
                
             		<!--FIRST TAB-->
             		<security:authorize access="!isAuthenticated()">
				        	<c:import url="/mePageLink.do?link=L1/ENTIRE_CONDITIONS_L1_4plainUsers">
				        		<c:param name="identifier" value="0"/>
				        	</c:import>
                		</security:authorize>
             		<security:authorize access="isAuthenticated()">
				        	<c:import url="/mePageLink.do?link=L1/ENTIRE_CONDITIONS_L1">
				        		<c:param name="identifier" value="0"/>
				        	</c:import>
					</security:authorize>
                		
             		<!--SECOND TAB-->
               		<div id="OPT_1" >
				        	<c:import url="/mePageLink.do?link=L1/ENTIRE_CONDITIONS_L1">
				        		<c:param name="identifier" value="1"/>
				        	</c:import>
               		</div>
               		
             		<!--THIRD TAB-->
               		<div id="OPT_2" >
               			<c:import url="/mePageLink.do?link=L1/ENTIRE_CONDITIONS_L1">
               				<c:param name="identifier" value="2"/>
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
					<li><a href="#TSCWrapper0" data-toggle="tab"> Level 1 </a></li>    
					<!-- 
					<li><a href="#TSCWrapper1" data-toggle="tab"> Tab 2 </a></li>    
					<li><a href="#TSCWrapper2" data-toggle="tab"> Tab 3 </a></li>    
					 -->
					
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
               			<button onclick="addJstlImportTagDynamically()">bitMe</button>
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
            
            <c:import url="/mePageLink.do?link=common/util/popupWindow" />
            
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


