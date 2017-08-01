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
		$(document).ready(function () {
			alert('document is ready');
		});
		
		
		/*
		The purpose of this demo is to demonstrate how multiple charts on the same page can be linked
		through DOM and Highcharts events and API methods. It takes a standard Highcharts config with a
		small variation for each data set, and a mouse/touch event handler to bind the charts together.
		*/
		$(function () {
		    /**
		     * In order to synchronize tooltips and crosshairs, override the 
		     * built-in events with handlers defined on the parent element.
		     */
		    $('#container').bind('mousemove touchmove', function (e) {
		        var chart,
		        points,
		        i,
		        secSeriesIndex = 1;

		        for (i = 0; i < Highcharts.charts.length; i++) {
		            chart = Highcharts.charts[i];
		            e = chart.pointer.normalize(e); // Find coordinates within the chart
		            points = [chart.series[0].searchPoint(e, true), chart.series[1].searchPoint(e, true)]; // Get the hovered point

		            if (points[0] && points[1]) {
		                if (!points[0].series.visible) {
		                    points.shift();
		                    secSeriesIndex = 0;
		                }
		                if (!points[secSeriesIndex].series.visible) {
		                    points.splice(secSeriesIndex,1);
		                }
		                if (points.length) {
		                    chart.tooltip.refresh(points); // Show the tooltip
		                    chart.xAxis[0].drawCrosshair(e, points[0]); // Show the crosshair
		                }
		            }
		        }
		    });
		    /**
		     * Override the reset function, we don't need to hide the tooltips and crosshairs.
		     */
		    Highcharts.Pointer.prototype.reset = function () {};

		    /**
		     * Synchronize zooming through the setExtremes event handler.
		     */
		    function syncExtremes(e) {
		        var thisChart = this.chart;

		        Highcharts.each(Highcharts.charts, function (chart) {
		            if (chart !== thisChart) {
		                if (chart.xAxis[0].setExtremes) { // It is null while updating
		                    chart.xAxis[0].setExtremes(e.min, e.max);
		                }
		            }
		        });
		    }

		    //Links the names of the series which should hide if one or the other is hidden.
		    var links = {
		        'Chart 1 series 1': 'Chart 2 series 1',
		            'Chart 2 series 1': 'Chart 1 series 1',
		            'Chart 1 series 2': 'Chart 2 series 2',
		            'Chart 2 series 2': 'Chart 1 series 2'
		    };

		    // Get the data. The contents of the data file can be viewed at 
		    // https://github.com/highslide-software/highcharts.com/blob/master/samples/data/activity.json
		    //$.getJSON('http://www.highcharts.com/samples/data/jsonp.php?filename=activity.json&callback=?', function (activity) {

		    var activity = {
		        "xData": [1, 1056, 2161, 3215, 4267],

		            "datasets": [{
		            "id": "Chart 1 series 1",
		                "name": "Chart 1 series 1",
		                "data": [1, 10, 20, 30, 20],
		                "unit": "ms",
		                "type": "line",
		                "valueDecimals": 1
		        }, {
		            "id": "Chart 1 series 2",
		                "name": "Chart 1 series 2",
		                "data": [2, 84, 22, 5, 75],
		                "unit": "ms",
		                "type": "line",
		                "valueDecimals": 1
		        }, {
		            "id": "Chart 2 series 1",
		                "name": "Chart 2 series 1",
		                "data": [3, 10, 20, 30, 20],
		                "unit": "%",
		                "type": "line",
		                "valueDecimals": 1
		        }, {
		            "id": "Chart 2 series 2",
		                "name": "Chart 2 series 2",
		                "data": [4, 56, 34, 77, 2],
		                "unit": "%",
		                "type": "line",
		                "valueDecimals": 0
		        }]
		    };


		    var lastChart;

		    $.each(activity.datasets, function (i, dataset) {

		        // Add X values
		        dataset.data = Highcharts.map(dataset.data, function (val, i) {
		            return [activity.xData[i], val];
		        });

		        if (i % 2 == 0) { //first series of chart

		            $('<div class="chart">')
		                .appendTo('#container')
		                .highcharts({
		                chart: {
		                    marginLeft: 40, // Keep all charts left aligned
		                    spacingTop: 20,
		                    spacingBottom: 20,
		                    // zoomType: 'x'
		                    // pinchType: null // Disable zoom on touch devices
		                },
		                title: {
		                    text: dataset.name.slice(0, 7),
		                    align: 'left',
		                    margin: 0,
		                    x: 30
		                },
		                credits: {
		                    enabled: false
		                },
		                legend: {
		                    enabled: true
		                },
		                xAxis: {
		                    crosshair: true,
		                    events: {
		                        setExtremes: syncExtremes
		                    },
		                    labels: {
		                        format: '{value} km'
		                    }
		                },
		                yAxis: {
		                    title: {
		                        text: null
		                    }
		                },
		                tooltip: {
		                    shared: true,
		                    pointFormat: '{series.name}: {point.y}<br>',
		                    valueDecimals: dataset.valueDecimals
		                },
		                series: [{
		                    id: dataset.id,
		                    data: dataset.data,
		                    name: dataset.name,
		                    type: dataset.type,
		                    color: Highcharts.getOptions().colors[i],
		                    fillOpacity: 0.3,
		                    tooltip: {
		                        valueSuffix: ' ' + dataset.unit
		                    }
		                }],
		                plotOptions: {
		                    series: {
		                        events: {
		                            legendItemClick: function (event) {
		                                var otherChart = Highcharts.charts[(this.chart.index + 1) % 2],
		                                    sisterSeries = otherChart.get(links[this.name]);
		                                //console.log(sisterSeries);
		                                if (this.visible) {
		                                    sisterSeries.hide();
		                                } else {
		                                    sisterSeries.show();
		                                }
		                            }
		                        }
		                    }
		                }
		            });

		        } else { //second series of chart
		            lastChart = Highcharts.charts[Highcharts.charts.length - 1];
		            lastChart.addSeries({
		                id: dataset.id,
		                data: dataset.data,
		                name: dataset.name,
		                type: dataset.type,
		                color: Highcharts.getOptions().colors[i],
		                fillOpacity: 0.3,
		                tooltip: {
		                    valueSuffix: ' ' + dataset.unit
		                }
		            });
		        }

		    });
		    //});
		});
		
	</script>
	
</head>

<body id="fabulousbdtc">
	<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
	<!-- 전체 레이어 시작 -->
	
	<!-- header-->
	<div id="meHeader">
	    <c:import url="/mePageLink.do?link=main/inc/meNavTop" />
	</div>
	
	
	<!-- content body-->
	<div id="container" class="container">	
	</div>
	
	<!-- Footer -->
	<div id="meFooter"  style="margin-top: 20px;">
		<c:import url="/mePageLink.do?link=main/inc/meFooter" />
	</div>	
	
</body>

</html>


