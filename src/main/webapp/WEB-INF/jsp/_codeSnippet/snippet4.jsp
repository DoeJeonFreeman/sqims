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
	

    <!-- JQuery UI -->
    <!-- 
     -->
    <link href="<c:url value="/js/jquery/ui/jquery-ui.css"/>" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resource/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/resource/css/modern-business.css"/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value="/resource/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">	
    
    
    
    <!-- tmpraory UI 
    -->
    <link href="<c:url value="/css/style_v2.css"/>" rel="stylesheet">
     
    
	<!-- datePicker -->
	<link href="<c:url value="/js/daterangepicker/daterangepicker.css"/>" rel="stylesheet" type="text/css">	
	<script type="text/javascript" src="<c:url value="/js/daterangepicker/moment.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/js/daterangepicker/daterangepicker.js"/>"></script>
    <!-- dateJS -->
	<script type="text/javascript" src="<c:url value="/js/jquery/date.js"/>"></script>
    <!-- JQuery UI -->
	<script type="text/javascript" src="<c:url value="/js/jquery/ui/jquery-ui-1111.js"/>"></script>
	
    
	<!-- 2c.doe.hicharts -->
	<script src="<c:url value="/js/highchart/highcharts.js"/>"></script>
	<script src="<c:url value="/js/highchart/highcharts-more.js"/>"></script>
	<script src="<c:url value="/js/highchart/modules/exporting.js"/>"></script>
	
	
	<!-- meEssential me decision was based upon two considerations (a: init order b:)-->
	<script src="<c:url value="/js/meEssential.js"/>"></script>
	
	<style>
		.chart {
		    min-width: 320px;
		    max-width: 800px;
		    height: 220px;
		    margin: 0 auto;
		}
	</style>
	
	<script type="text/javascript">
	$(function () {	
 
 
 	  var charts = [], options;

	  function syncTooltip(container, p) {
		  ////console.log('[map.keys() ]')
		  ////console.log(map.keys())
		  //console.log('charts[]는. ')
		  //console.log(charts);
		  
    	//console.log('ㅋㅓㄴ테이너랑 p');
    	//console.log(container, p);
		 
	    var i=0, j=0, data;
	      for(; i<charts.length; i++) {
//console.log('charts.렝쓰는 ' + charts.length);   	  
//console.log(charts[i]);   	  		  

	          if(container.id != charts[i].container.id) { //err occured charts[i].container '.id'
	              data = charts[i].series[0].data;
	              for(; j<data.length; j++)
	                  if (data[j].x === p)
						  if(charts[i].tooltip.shared) {
					          charts[i].tooltip.refresh([charts[i].series[0].data[j]]);
					      }
					      else {
					          charts[i].tooltip.refresh(charts[i].series[0].data[j]);
					      }
	                      //charts[i].tooltip.refresh( charts[i].series[0].data[j] );
	          }
	      }
	  }

	  options = {
	      plotOptions: {
	          series: {
	              point: {
	                  events: {
	                      mouseOver: function(){
	                          syncTooltip(this.series.chart.container, this.x);
	                      }
	                  }
	              }
	          }
	      },
	      xAxis: {
	   // 	  crosshair: true, //doejeon
	          type: 'datetime'
	      },
	      tooltip: { //doejeon
          	formatter: function() {
                var s = [];
                
                $.each(this.points, function(i, point) {
                    s.push('<span style="color:#D31B22;font-weight:bold;">'+ point.series.name +' : '+
                        point.y +'<span>');
                });
                
                return s.join(' and ');
            },
            shared: true
          }
	  };

	  charts[0] = new Highcharts.Chart($.extend(true, {}, options, {
	      chart: {        
	          renderTo: 'container1'
	      },
	      series: [{
	          data: [
	              [Date.UTC(2010, 0, 1), 29.9], 
	              [Date.UTC(2010, 2, 1), 71.5], 
	              [Date.UTC(2010, 3, 1), 106.4]
	          ]
	      }]
	  }));


	  charts[1] = new Highcharts.Chart($.extend(true, {}, options, {
	      chart: {
	          renderTo: 'container2'
	      },
	      series: [
               		{data: [[Date.UTC(2010, 0, 1), 29.9], 
		              [Date.UTC(2010, 2, 1), 71.5], 
		              [Date.UTC(2010, 3, 1), 106.4]]
	         		},
               		{data: [[Date.UTC(2010, 0, 1), 18.9], 
		              [Date.UTC(2010, 2, 1), 75.5], 
		              [Date.UTC(2010, 3, 1), 88.4]]
	         		}
	      ]
	  }));
	  
	  
 	}); //end  functions
	</script>
	
</head>

<body id="fabulousbdtc">
	<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
	<!-- 전체 레이어 시작 -->
	
	<!-- header-->
	<div id="meHeader">
	    <c:import url="/mePageLink.do?link=main/inc/meNavTop" />
	</div>
	
	<div id="container1" style="height: 200px" class="col-md-6"></div>
	<div id="container2" style="height: 200px" class="col-md-6"></div>
	
	<!-- Footer -->
	<div id="meFooter"  style="margin-top: 20px;">
		<c:import url="/mePageLink.do?link=main/inc/meFooter" />
	</div>	
	
</body>

</html>


