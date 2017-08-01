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
    
	<title>품질지표 Level 1 A</title>
	
 
	<script src="<c:url value="/js/jquery/jquery-1.9.1.js"/>"></script>	
    <script src="<c:url value="/resource/js/bootstrap.min.js"/>"></script>
    
<!-- 
 -->
<link href="<c:url value="/css/sidebar.css"/>" rel="stylesheet">

    <!-- JQuery UI -->
    <link href="<c:url value="/js/jquery/ui/jquery-ui.css"/>" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resource/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/resource/css/modern-business.css"/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value="/resource/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">	
	

	<!-- datePicker -->
	<link href="<c:url value="/js/daterangepicker/daterangepicker.css"/>" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="<c:url value="/js/daterangepicker/moment.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/daterangepicker/daterangepicker.js"/>"></script>
    <!-- dateJS -->
	<script type="text/javascript" src="<c:url value="/js/jquery/date.js"/>"></script>
    <!-- JQuery UI -->
	<script type="text/javascript" src="<c:url value="/js/jquery/ui/jquery-ui-1111.js"/>"></script>
	
	
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<!-- 쓰잘 모조리 제거됨 ㅎㅎ -->
<link href="<c:url value="/css/style_v2.css"/>" rel="stylesheet">
    

	
	<!-- 2c.doe.hicharts-->
	
	<script src="<c:url value="/js/highchart/highcharts.js"/>"></script>
	<script src="<c:url value="/js/highchart/highcharts-more.js"/>"></script>
	<script src="<c:url value="/js/highchart/modules/boost.src.djf.custom.js"/>"></script>
	<script src="<c:url value="/js/highchart/modules/exporting.js"/>"></script>
	
	
	
	
	<!-- 
	<script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/boost.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
	 -->
	

	
	<script>
		$(function () {
	
		    function getData(n) {
		        var arr = [],
		            i,
		            a,
		            b,
		            c,
		            spike;
		        for (i = 0; i < n; i = i + 1) {
		            if (i % 100 === 0) {
		                a = 2 * Math.random();
		            }
		            if (i % 1000 === 0) {
		                b = 2 * Math.random();
		            }
		            if (i % 10000 === 0) {
		                c = 2 * Math.random();
		            }
		            if (i % 50000 === 0) {
		                spike = 10;
		            } else {
		                spike = 0;
		            }
		            arr.push([
		                i,
		                2 * Math.sin(i / 100) + a + b + c + spike + Math.random()
		            ]);
		        }
		        return arr;
		    }
		    var n = 300000,
		        data = getData(n);
		    $('#page-content-wrapper').highcharts({
	
		        chart: {
		            zoomType: 'x'
		        },
	
		        title: {
		            text: 'Trimmed charts drawing ' + n + ' points'
		        },
	
		        subtitle: {
		            text: null
		        },
	
		        tooltip: {
		            valueDecimals: 2
		        },
		        
		        credits: {
					enabled: false
				},
	
		        series: [{
		            data: data,
		            lineWidth: 0.5}
		        	,{data: data,
			        lineWidth: 0.5}
		        	,{data: data,
			        lineWidth: 0.5}
		        	,{data: data,
			        lineWidth: 0.5}
		        ]
	
		    });
		    
			 /*    
			    $.ajax({
					type: 'GET',
					dataType:'json',
					url:  '<c:url value='/' />timeseries/retrieval/L_1_B_SCATT',	
					data:'targetDate=' + '2013-08-09' + '&dBegin=' + '2013-04-01' + '&channel=1&detector='+ '1',
					success: function(jsonData) {
							
						//chart goes here
						var _chartInstance = new Highcharts.Chart({
							chart : {
								type : 'scatter',
								renderTo : 'page-content-wrapper2',  								
								defaultSeriesType : 'scatter',
								zoomType : 'xy',
							},
							title: {
								text: 'Spacecraft Attitude',
								align: 'center',
								style:{
									font:'bold 16px NanumGothic'
								}
							},
							subtitle: {
								text: '(AOCS Local Orbital Frame)',
								align: 'center',
								style:{
									font:'normal 13px NanumGothic'
								}
							},
							yAxis: {
								tickColor: '#346691',
								tickLength: 5,
								tickWidth: 1,
								tickPosition: 'inside',
								labels: {
									align: 'right',
									x:-10,
									y:5
								},
								lineWidth:0,
								title: {
									text: 'Value',
									style : {
										font:'normal 12px NanumGothic'
									}	
								},
								labels:{
									style : {
										font:'normal 11px NanumGothic'
									},
									formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
										return Highcharts.numberFormat(this.value, 2, '.', ',');
									}
								}	
								
								
							} 
							,series: [
								         {name:'Angle X (deg)',
								        	 color:'#7cb5ec',
								        	 connectNulls:false, data: []}
								         ,{name:'Angle Y (deg)',
								        	 color:'#434348',
								        	 // color:'#e4d354',
								        	 connectNulls:false, data: []}
								         ,{name:'Angle Z (deg)',
								        	 color:'#f15c80',
								        	 connectNulls:false, data: []}
								         ]
							
							,
							
					        
							credits: {
								enabled: false
							},
							
							
							
							
					        xAxis : {
								type : 'datetime',
								tickColor: '#346691',
								labels : {
									formatter : function() {
										var myDate = new Date(this.value);
										var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
										return Highcharts.dateFormat("%e. %b %H:%M",newDateMs);
									}
								},
						
							}
						}); //haha
	
						
						//chart goes here
						$.each (Object.keys(jsonData), function(idx,val){
							VALX = [];
							VALY = [];
							VALZ = [];
							var vrDataObj = jsonData[val];
							for (var i = 0; i < vrDataObj.length; i++) {
								var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
								d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
								VALX.push([d,parseNumericVal(vrDataObj[i].VALUEX)]);
								VALY.push([d,parseNumericVal(vrDataObj[i].VALUEY)]);
								VALZ.push([d,parseNumericVal(vrDataObj[i].VALUEZ)]);
							}
							_chartInstance.series[0].setData(VALX);
							_chartInstance.series[1].setData(VALY);
							_chartInstance.series[2].setData(VALZ);
						});
						
					},
					cache: false,
				});	
			     */
		    
		    
		});
	</script>
		
	<script>
		//missing val  <-assign null
		function parseNumericVal(someStuff){
			if(someStuff == null){
				return null;
			}else if(Math.abs(someStuff)==999){	
				return null;
			}else{
				return parseFloat(someStuff);
			}
		}
	</script>	
</head>

<body id="fabulousbdtc">
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
			
		        
		</div>
	</header>
	<!--dateChoooooser--> 
	
	
	<div class="container">	
	
			  <div id="wrapper">
		        
		        <!-- Page Content -->
		        <div id="page-content-wrapper"></div>
		        <div id="page-content-wrapper2"></div>
		   	 </div>
	</div>
	 
	
</body>

</html>


