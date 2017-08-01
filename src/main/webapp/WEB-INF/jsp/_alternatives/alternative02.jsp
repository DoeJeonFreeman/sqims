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
	
		var ITEM_SIZE = 6;
	
		
	
	
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
		
		/**
		리팩터링 시급ㅋㅋㅋㅋㅋㅋ 
		*/ 
		function doPostMonthlyValidationImageOnTheWall(targetDivId, varSelected, dStr){
			
			if(varSelected.length==0) return;
			
			var dActual = moment(dStr, 'YYYY-MM-DD').toDate(); //use .toDate() to transform a moment object into a js date obj haha
			var dActualStr = dActual.customFormat("#YYYY##MM#01");
			var dActualTitle = dActual.customFormat("(#YYYY#.#MM#.)");
//			var repositoryUrl = "http://intra.nmsc.kma.go.kr/emcoms/VIMG/QCM/DATA/"; 
			var repositoryUrl = "http://2csolution.iptime.org:8880/~doejeon/QIMS_L2MonthlyValidation/emcoms/VIMG/QCM/DATA/"; 
			var repositoryYmd = dActual.customFormat("/Y#YYYY#/M#MM#/D01/");
				
			$.each (varSelected, function(i,item){ //itm == cb name attr
				
				//var detectorNum = itm.substring(itm.lastIndexOf('_')+1,itm.length);
				//var typeOfChart = itm.split('_')[0]; //VR01		
				
					 //selected.push(item.node.key);
					 //alert(targetTab + " [" + data.node.key + "]: '" + data.node.title + "'");
					 //alert('path:' + item.node.data.mePath);
				var key = item.node.key;
				var imgPrefix = item.node.data.mePath;
				var varAbbr = item.node.data.meAbbreviation;
				
				var boxContentIdentifier = 't' + $("#tabs").tabs('option', 'active') + '_ts_' + key + '_'+dActualStr;
				
				var wrapperHTML =  getDraggableImageContainer(key+'_'+dActualStr, key, dActualTitle,ITEM_SIZE);
				if(wrapperHTML){
					$(targetDivId).append(wrapperHTML);
//					toastr.info(repositoryUrl + varAbbr + repositoryYmd + imgPrefix + '_' + dActualStr + '.png' );
					var NMSCPath= repositoryUrl + varAbbr + repositoryYmd + imgPrefix + '_' + dActualStr + '.png';
					$('#'+boxContentIdentifier).append("<span class='clear'><img class='img-responsive center-block' src='"+NMSCPath+"'/></span>")
				}else{
					var yyyymm = dActual.customFormat("#YYYY#.#MM#.");
					var currItem =  key.split('-').join(' ') ;
					currItem = currItem.split('_').join(' - ');
					currItem = 'Item already exists. [ '+ yyyymm + ' ]<br/>' + currItem + '' 
					toastr.info(currItem);
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
	            	
	            	
	            	
	            	<div id="social" class="pull-left" style="padding-left:15px;margin-top: 6px;">
						<div class="btn-group" id='control_size'  >
							<button type="button" class="btn btn-warning btn-xs" style="margin-bottom:0px;" id='control_resize_small' title='Display 3 items per row'><span class="glyphicon glyphicon-th"></span></button>
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
					
					<!-- full screen mode toggle -->
	           		<div class="pull-left" style="margin-bottom:0px;padding-top:6px;padding-left:5px;" >
 	            		<button  type="button" class="meBtn-primary meBtn-noborder meExpandable " style="font-size:15px;"
	            			onclick="reorderDivAlphabeticallyMan()"  title="Sort an itms alphabetically">
	            			<i style="padding-top:9" class="fa fa-sort-alpha-asc" aria-hidden="true"></i>
	            			<!-- 
	            			 -->
           				</button> 
					</div>
					
	            </div>	
            
           		<div class="pull-right" style="padding-right:50px;"> 
	            	<ul id="breadcrumbs-one" class="pull-right vcenter" >
						<li><a href="${pageContext.request.contextPath}/cmm/main/mainPage.do">Home</a></li>
						<li><a>L2 품질감시</a></li>
						<li><a>월검증결과</a></li>
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
               		<div id="OPT_0" >
			        	<c:import url="/mePageLink.do?link=_alternatives/ENTIRE_CONDITIONS_L2MonthlyValidation">
			        		<c:param name="identifier" value="0"/>
			        	</c:import>
               		</div>
               		<div id="OPT_1" >
			        	<c:import url="/mePageLink.do?link=_alternatives/ENTIRE_CONDITIONS_L2MonthlyValidation">
			        		<c:param name="identifier" value="1"/>
			        	</c:import>
               		</div>
               		<div id="OPT_2" >
			        	<c:import url="/mePageLink.do?link=_alternatives/ENTIRE_CONDITIONS_L2MonthlyValidation">
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


