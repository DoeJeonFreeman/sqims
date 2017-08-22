
				                          //leadingStr L1A-QI01_0
		function getDraggableContainerHTML(leadingStr, meTitle, titleWithDStr, ITEM_SIZE){
			var idx = $("#tabs").tabs('option', 'active');
			
		 	var divId = 't'+idx+'_'+ leadingStr;//+detNum;
//			var divTitle =  meTitle.split('-').join(' ') + ' ' ;
//			divTitle = divTitle.split('_').join(' - ');
		 	var divTitle =  meTitle;
			divTitle += (titleWithDStr=='nodet')? '' : ' (Detector '+titleWithDStr+')'
		 	
			
			var chartId = 't'+idx+'_ts_'+leadingStr;
			
			if($('#'+divId).length){
//				sysout('if chartWrapperHTML [#' +divId+'] is already exiests ')
//				sysout('then RETURN;')
				return;
			}
			
			
			var draggableDiv = '';
//			draggableDiv +=	"<div class='meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
//			draggableDiv +=	"		<div class='box col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
//			draggableDiv +=	"		<div class='box meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
			draggableDiv +=	"		<div class='box meDraggableItem col-xs-"+ITEM_SIZE+" col-md-"+ITEM_SIZE+" col-lg-"+ITEM_SIZE+"' id='" + divId + "'>";
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
//preloader
//			draggableDiv +=	"				<div class='preloader'>";
//			draggableDiv +=	"               	<img src='${pageContext.request.contextPath}/resource/assets/preloader.gif' class='devoops-getdata' alt='preloader'/>";
//			draggableDiv +=	"				</div>";
			
//			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style='height: 330px;margin: 0 auto;'></div>";
			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style='height: 500px;margin: 0 auto;'></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"		</div>";
//			draggableDiv +=	"	</div>";
			
			return draggableDiv;
		}
		
		
		function getDraggableImageContainer(leadingStr, meTitle, titleWithDStr, ITEM_SIZE){
			
			var idx = $("#tabs").tabs('option', 'active');
			
			var divId = 't'+idx+'_'+ leadingStr;//+detNum;
			var divTitle =  meTitle.split('-').join(' ') + ' ' + titleWithDStr;
			divTitle = divTitle.split('_').join(' - ');
			
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
//			draggableDiv +=	"		<div class='box meDraggableItem col-xs-12 col-md-12 col-lg-6' id='" + divId + "'>";
			draggableDiv +=	"		<div class='box meDraggableItem col-xs-"+ITEM_SIZE+" col-md-"+ITEM_SIZE+" col-lg-"+ITEM_SIZE+"' id='" + divId + "'>";
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
			
		/*	
			draggableDiv +=	"				<nav class='nav-circlepop djf'>";
//			draggableDiv +=	"               	<a class='prev' href='/item1'><span class='icon-wrap'></span></a>";
//			draggableDiv +=	"					<a class='next' href='/item3'><span class='icon-wrap'></span></a>";
			draggableDiv +=	"               	<a class='prev' href='#'><span class='icon-wrap'></span></a>";
			draggableDiv +=	"					<a class='next' href='#'><span class='icon-wrap'></span></a>";
			draggableDiv +=	"				</nav>";
		*/	
//			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style='height: 330px;margin: 0 auto;'></div>";
			draggableDiv +=	"				<div id='"+ chartId + "' class='classySnob' style=''></div>";
			draggableDiv +=	"			</div>";
			draggableDiv +=	"		</div>";
//			draggableDiv +=	"	</div>";
			
			return draggableDiv;
		}


//		
//		Object.prototype.count = function () {
//		    var count = 0;
//		    for(var prop in this) {
//		        if(this.hasOwnProperty(prop))
//		            count = count + 1;
//		    }
//		    return count;
//		}
//		

		
		
		
		// 'real' scatter plot for Level 2 daily validation haha 
		var options_visibleLine = {
				chart : {
					type : 'scatter',
//					renderTo : chartId,  								
					defaultSeriesType : 'scatter',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 1, //make the lines disappear
						marker : {
							enabled : true,
							radius : 2,
							symbol:'square' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						}
				    },
				    scatter:{
				    	marker : {
				    		symbol:'square',
							radius : 2,
						}
				    },
				    
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x);
								}
							}
						}
					    ,states: {
		                    hover: {
		                        enabled: false,
		                        lineWidthPlus:0
		                    }
		                }
					    ,animation: false
//					    ,events: {
//			                renderedCanvas: function () {
//			                    console.timeEnd('asyncRender');
//			                }
//			            }
					},
//					
				},
				
				exporting: {
		            chartOptions: { // specific options for the exported image
		                plotOptions: {
		                    series: {
		                        dataLabels: {
		                            enabled: false// canDropLabels==true
		                        }
		                    }
		                }
		            },
		            scale: 3,
		            fallbackToExportServer: false
		        },
				
				credits: {
					enabled: false
				},
				
//				tooltip : {
//					headerFormat: '{point.x:%e. %b %H:%M:%S}<br>',
//					shared: true, //make the tooltip accessible across all series
//					crosshairs:true
//				},
				tooltip : {
					shared : false,
					
					formatter : function() {
						var myDate = new Date(this.x);
						var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M:%S', newDateMs) + '<br/>' + this.y;
					}	
				},
				
				legend: {
					layout: 'horizontal',
					y: 0,
					borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
						fontWeight:'normal'
					}
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
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				}
		};
		
		
		
		/**
		 * Display a temporary label on the chart
		 */
		function toast(chart, text) {
		    chart.toast = chart.renderer.label(text, 100, 120)
		        .attr({
		            fill: Highcharts.getOptions().colors[0],
		            padding: 10,
		            r: 5,
		            zIndex: 8
		        })
		        .css({
		            color: '#FFFFFF'
		        })
		        .add();

		    setTimeout(function () {
		        chart.toast.fadeOut();
		    }, 2000);
		    setTimeout(function () {
		        chart.toast = chart.toast.destroy();
		    }, 2500);
		}

		/**
		 * Custom selection handler that selects points and cancels the default zoom behaviour
		 */
		
		function myfunc (e) {
		    e = e || window.event;
		    var code = e.keyCode;
		    alert (code);
		}
		
		HelloWorld = function (){
		    alert("Hello World");    
		}
		
		
		
		//DEPRECATED
		function selectPointsByDrag(e) {
			
			this.options.exporting.buttons.contextButton.menuItems.push({
		        text: "Change Flag",
//		        onclick: HelloWorld
		        onclick: function(event){
		        	alert('do nothing');
		        }
		    });
			
			if(!isStillPressedDown){
				return true;  //do zoom instead of selecting points haha
			}
		    // Select points
		    Highcharts.each(this.series, function (series) {
		        Highcharts.each(series.points, function (point) {
		            if (point.x >= e.xAxis[0].min && point.x <= e.xAxis[0].max &&
		                    point.y >= e.yAxis[0].min && point.y <= e.yAxis[0].max) {
		                point.select(true, true);
		            }
		        });
		    });

		    // Fire a custom event
		    //Highcharts.fireEvent(this, 'selectedpoints', { points: this.getSelectedPoints() });

		    // Fire djf custom event
			toastr.info('<b>' + this.getSelectedPoints().length + ' points selected.</b>');
		    

		    return false; // Don't zoom
		}

		/**
		 * The handler for a custom event, fired from selection event
		 */
		function selectedPoints(e) {
		    // Show a label
		    toast(this, '<b>' + e.points.length + ' points selected.</b>' +
		        '<br>Click on empty space to deselect.');
		}

		/**
		 * On click, unselect all points
		 */
		function unselectByClick() {
		    var points = this.getSelectedPoints();
		    if (points.length > 0) {
		        Highcharts.each(points, function (point) {
		            point.select(false);
		        });
		    }
		}

		
		// Level 1 Nephelometer
		// Level 1 Nephelometer
		// Level 1 Nephelometer
		// Level 1 Nephelometer
		// Level 1 Nephelometer
		// Level 1 Nephelometer
		// Level 1 Nephelometer
		var options_multipleSeries_LV1 = {
				chart : {
					type : 'line',
//					renderTo : chartId,  								
					defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
//					            selection: selectPointsByDrag,
								selection: function(e){
									
									if(!isStillPressedDown){
										return true;  //do zoom instead of selecting points haha
									}

								    // Select points
								    Highcharts.each(this.series, function (series) {
								        Highcharts.each(series.points, function (point) {
								            if (point.x >= e.xAxis[0].min && point.x <= e.xAxis[0].max &&
								                    point.y >= e.yAxis[0].min && point.y <= e.yAxis[0].max) {
								                point.select(true, true);
								            }
								        });
								    });
								    
								    // Fire a custom event
								    //Highcharts.fireEvent(this, 'selectedpoints', { points: this.getSelectedPoints() });
								    // Fire djf custom event
									toastr.info('<b>' + this.getSelectedPoints().length + ' points selected.</b>');
								    
								    return false; // Don't zoom
								},
					            selectedpoints: selectedPoints,
//					            click: unselectByClick
					            click : function(e){
					                var points = this.getSelectedPoints();
//					                console.log('>>> this.getSelectedPoinrts().length at this time :: ' + points.length);
						    		    if (points.length > 0) {
						    		        Highcharts.each(points, function (point) {
						    		            point.select(false);
//						    		            console.log(point);
						    		        });
						    		    }
					            }
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 0, //make the lines disappear
						marker : {
							enabled : true,
							radius : 2,
							symbol:'square' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						},
//						allowPointSelect: true,
					/*	 
					      events: {
					         // Default action for (left) clicking the data
					         click: function(point) {
					        	 alert('some action for clicking the point haha');
					         },
					         // (Right-click) Create a menu for the data point
					         contextmenu: function(point) {
					        	 //...??
					         },
					      }*/
				    },
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x); // 
									syncTooltip_LV1B_QI(this.series.chart.container, this.x, this.series.index);
								}
							}
						}
					    ,states: {
		                    hover: {
		                        enabled: false,
		                        lineWidthPlus:0
		                    }
		                }
					    ,animation: false
//					    ,events: {
//			                renderedCanvas: function () {
//			                    console.timeEnd('asyncRender');
//			                }
//			            }
					},
//					
				},
				
				exporting: {
		            chartOptions: { // specific options for the exported image
		                plotOptions: {
		                    series: {
		                        dataLabels: {
		                            enabled: false// canDropLabels==true
		                        }
		                    }
		                }
		            },
		            scale: 3,
		            fallbackToExportServer: false,
//		            buttons: {
//				        contextButton: {
//				          text: '품 질검사',
//				          menuItems: [
//				          {
//				            text: '수동품질검사-1단계',
//				            onclick: function () {
//								var str = "";
//								var cnt_points = this.getSelectedPoints().length -1;
//								if(this.getSelectedPoints().length > 0){
//									//str += this.getSelectedPoints().length + ' points affected.\n\n';
//								}else{
//									toastr.warning('선택된 값이 없습니다.');
//									return;
//								}
//								
//				                	$.each(this.getSelectedPoints(), function (i, value) {
//				                		//str += '['+ Highcharts.dateFormat('%Y-%m-%d %H:%M:%S',value.x) + '] pid:'+value.pid + ' / FGA:' + value.FgA +'\n';
//				                		str += value.pid;
//				                		str += (cnt_points == i)? '':',';
//				                });
//				                
////				                	var points = this.getSelectedPoints();
////					    		    if (points.length > 0) {
////					    		        Highcharts.each(points, function (point) {
////					    		            point.select(false);
////					    		        });
////					    		    }
//				                	
////				                if (window.confirm("선택한 값의 상태를 변경하겠습니까?")) { 
//				                	
//				                	 $('.box-header').contextMenu();
//				                     // or $('.meDraggableItem').trigger("contextmenu");
////				                     $('.collapse-link').contextMenu({x: 100, y: 100});
//				                		//$('#TSCWrapper0').contextMenu({x: 100, y: 100});
//				                	
//				                		/////////////////////////////////////////////////////////////////////////
//					                	/////////////////////////////////////////////////////////////////////////
//					        			$.contextMenu({
//					        				 selector: '.box-header',
//					        				 trigger: 'none',
////					        				 zIndex: 10,
//					        				 callback:function(key, options){
//					        				 	alert(str + '\n\n'+ key.split('_')[1]);			  
//					        					 $.ajax({
//							                			type: "GET",
//							                			url: "update/fgm/s1",
//							                			data: {ids:str,FgM:key.split('_')[1]},
//							                			success:function(data){
//							                				toastr.info('<b>선택한 값의 상태가 업데이트 되었습니다.</b>');
//							                				var selectedDateObj= moment($("#meNMSCDemo").val(), 'YYYY-MM-DD'); //.toDate(); //use .toDate() to transform a moment object into a js date obj haha
//							                				meRequest(selectedDateObj);	
////							                				meRequest(moment('2017-05-21','YYYY-MM-DD'));	
//							                			},
//							                			error:function(error){
//							                				toastr.error('<b>업데이트 중 장애가 발생하였습니다.</b>');
//							                			}
//							                		});  
//					        					  
//					        				  },
//					        				  items: {
//					        				    MANUAL_FLAGGING_STEP_1: {
//					        				      name: '선택한 값들의 상태를 변경합니다.',
//					        				      items: {
//					        				        GOOD2GO: { /////////////////////////
//					        				          name: '양호',
//					        				          items:{
//					        				        		"MF1_000": {
//					        					          	name: '000: 자료품질 양호',
//					        						        //type: 'radio'
//					        						        	
//					        					        	},			        	  
//					        				          }
//					        				        },
//					        				        
//					        				        SUSPICIOUS: { //////////////////////
//					        				          name: '의심',
//					        				          items: {
//					        					        	suspicious1: {
//					        					          	name: '장비상태 불안(자체교정, 점검)으로 자료의심',
//					        					          	items: {
//					        					          		MF1_147: {
//					        								          	name: '147: 검출한계 이하값이지만 유효한 자료로 판단될 때',
//					        									        //type: 'radio',
//					        									        
//					        							        	},
//					        							        	MF1_684: {
//					        								          	name: '684: Zero/span 체크',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_683: {
//					        								          	name: '683: 검교정 시기',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_699: {
//					        								          	name: '699: 장비 문제 발생',
//					        									        //type: 'radio'
//					        							        	},
//					        						        	}
//					        				            },
//					        				            suspicious2: {
//					        					          	name: '장비상태 정상이나 관측환경 및 기상상황 불안',
//					        					          	items: {
//					        					          		MF1_110: {
//					        								          	name: '110: 태풍, 안개, 강수 이외의 특이기상상황(예: 황사, 연무) 또는 분류에 없는 사례',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_600: {
//					        								          	name: '600: (온실가스) 제습장치 이상',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_635: {
//					        								          	name: '635: 내부 온도 이상(정상값과 많이 차이날 경우)',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_640: {
//					        								          	name: '640: 장비 내부 상대습도 40% 이상',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_641: {
//					        								          	name: '641:에어로졸 필터 장착 오류',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_647: {
//					        								          	name: '647: 관측소 주변의 소각 등',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_649: {
//					        								          	name: '649: 일시적인 정전으로 측정기 운영에 영향',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_652: {
//					        								          	name: '652: 관측소 혹은 주변 공사 등',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_657: {
//					        								          	name: '657: 폭설, 폭우, 소나기 등 강한 강수',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_658: {
//					        								          	name: '658: 유량이 접게 입력된 경우, 예:펌프 이상으로 기기에 실내공기 유입, 유량계 장애 등',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_666: {
//					        								          	name: '666:(온실가스)인렛 필터를 교환, (반응가스 에어로졸) 필터 오염 또는 손상으로 교체',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_676: {
//					        								          	name: '676: 안개(시정<1km 이하)',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_678: {
//					        								          	name: '678: 태풍',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_685: {
//					        								          	name: '685: (온실가스)실험실용 3차 표준가스생산/국제차순환실험 등을 위한 실험기간',
//					        									        //type: 'radio'
//					        							        	},
//					        							        	MF1_782: {
//					        								          	name: '782: 강수(비,눈)',
//					        									        //type: 'radio'
//					        							        	}
//					        						        	}
//					        				            }
//					        				            
//					        				          }
//					        				        },
//					        				        
//					        				        MISSING: {
//					        				          name: '결측',
//					        				          items:{
//					        				        	  	MF1_910: {
//					        					          	name: '910: 장애로 장비가동 중단(수리기간 포함)',
//					        						        //type: 'radio'
//					        					        	},			        	  
//					        					        	MF1_980: {
//					        					          	name: '980: 교정 및 점검, Zero/span 체크로 장비가동 중단',
//					        						        //type: 'radio'
//					        					        	},			        	  
//					        					        	MF1_999: {
//					        					          	name: '999: 정전 등 외적요인과 원인불명의 요인으로 자료소실',
//					        						        //type: 'radio'
//					        					        	},			        	  
//					        				          }
//					        				        }
//					        				      }
//					        				    }
//		
//					        				  }
//				        				}); // end of contextmenu declaration haha
//					                	/////////////////////////////////////////////////////////////////////////
//					                	/////////////////////////////////////////////////////////////////////////
//					                	/////////////////////////////////////////////////////////////////////////
//			                	
//				                		
//				                	
////				                		$.ajax({
////				                			type: "GET",
////				                			url: "update/fgm/s1",
////				                			data: {ids:str,FgM:'980'},
////				                			success:function(data){
////				                				toastr.info('<b>선택한 값의 상태가 업데이트 되었습니다.</b>');
////				                				var selectedDateObj= moment($("#meNMSCDemo").val(), 'YYYY-MM-DD'); //.toDate(); //use .toDate() to transform a moment object into a js date obj haha
////				                				meRequest(selectedDateObj);	
//////				                				meRequest(moment('2017-05-21','YYYY-MM-DD'));	
////				                			},
////				                			error:function(error){
////				                				toastr.error('<b>업데이트 중 장애가 발생하였습니다.</b>');
////				                			}
////				                		});
//					        			
////				                	} //confirm window
//					        			
//							}//onclick end
//				          } 
//				          
//				          
//				          ]
//				        }
//				      } // buttons
		        },
				
				credits: {
					enabled: false
				},
				
				tooltip : {
//					headerFormat: '{point.x:%e. %b %H:%M:%S} <br>',
//					pointFormat : '{point.y:,.5f} <br>[FgA S1]{point.F1}<br>[FgA S2]{point.F2}',
//					footerFormat: '<br/><span style="font-size:10px">[FgA]{point.FgA}</span><br/>',
//					valueSuffix: 'unit',
					shared: true, //make the tooltip accessible across all series
					crosshairs:true,
					usersHTML:true,
					formatter: function() {
						//eachData_suspicious.push({x: d, FgA: vrDataObj[i].FgA, ... })  additional parameter 패싱하려고 오브젝트 어레이로 처리했음. 그래서 this.point.FgA가 아니고 this.points[0].point.FgA 이런 식으로 접근해야함 
						var str2return = Highcharts.dateFormat("%e. %b %H:%M:%S", this.x) + '<br>';
						str2return += this.y.toPrecision(6);
						var autoFlag = this.points[0].point.FgA;
						for (var i=1; i < autoFlag.length; i++) {
							if(autoFlag.charAt(i-1) !='0') str2return += '<br/><span style="font-size:10px;color:#DC143C">[자동검사 ' + i +'단계] ' + this.points[0].point['F'+i] + '</span><br/>'; 
						}
						if(this.points[0].point.FgM !=undefined){
							str2return += '<br/><span style="font-size:10px;color:#DC143C">[수동검사 1단계] ' + this.points[0].point.MFS1 + '</span><br/>';
						}
						//str2return += '<br/><span style="font-size:10px">FgA==' + this.points[0].point.FgA + '</span><br/>';
						return str2return;
					}
				},
				
				legend: {
					layout: 'horizontal',
					y: 0,
					borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
						fontWeight:'normal'
					}
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
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				}
		};
		
		
		// weekly Level 1 Nephelometer 
		// weekly Level 1 Nephelometer 
		// weekly Level 1 Nephelometer 
		var options_multipleSeries_LV1_weekly = {
				chart : {
					type : 'line',
//					renderTo : chartId,  								
					defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
//					            selection: selectPointsByDrag,
						selection: function(e){
							
							if(!isStillPressedDown){
								return true;  //do zoom instead of selecting points haha
							}
							
							var menuItemArray = this.options.exporting.buttons.contextButton.menuItems;
							if(menuItemArray.length < 8){
								this.options.exporting.buttons.contextButton.menuItems.push({
									text: "Change Flag",
//								            onclick: HelloFxxkingWorld
									onclick: function(event){
										var str = "";
										if(this.getSelectedPoints().length > 0){
//													alert(this.getSelectedPoints().length + ' points are affected')
											str += this.getSelectedPoints().length + ' points affected.\n\n';
										}
										
										$.each(this.getSelectedPoints(), function (i, value) {
											str += '['+ Highcharts.dateFormat('%Y-%m-%d %H:%M:%S',value.x) + '] pid:'+value.pid + ' / FGA:' + value.FgA +'\n';
//								                	sysout('[value.x]'+ Highcharts.dateFormat('%Y-%m-%d %H:%M:%S',value.x))
//								                	sysout('[value.y]'+ value.y)
										});
										alert(str);
									}
								});
							}
							
							// Select points
							Highcharts.each(this.series, function (series) {
								Highcharts.each(series.points, function (point) {
									if (point.x >= e.xAxis[0].min && point.x <= e.xAxis[0].max &&
											point.y >= e.yAxis[0].min && point.y <= e.yAxis[0].max) {
										point.select(true, true);
									}
								});
							});
							
							// Fire a custom event
							//Highcharts.fireEvent(this, 'selectedpoints', { points: this.getSelectedPoints() });
							
							// Fire djf custom event
							toastr.info('<b>' + this.getSelectedPoints().length + ' points selected.</b>');
							
							return false; // Don't zoom
						},
						/*selection: function(event) {
									// log the min and max of the primary, datetime x-axis
									console.log(
										Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', event.xAxis[0].min),
										Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', event.xAxis[0].max)
									);
									// log the min and max of the y axis
									console.log(event.yAxis[0].min, event.yAxis[0].max);
								},*/
						selectedpoints: selectedPoints,
//					            click: unselectByClick
						click : function(e){
							var points = this.getSelectedPoints();
							if (points.length > 0) {
								Highcharts.each(points, function (point) {
									point.select(false);
								});
							}
//					    		    var menuItemArray = this.options.exporting.buttons.contextButton.menuItems;
//									if(menuItemArray.length > 7){
//										menuItemArray = menuItemArray.slice(0,7)
//										alert(menuItemArray.length)
//									}
						}
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 0, //make the lines disappear
						marker : {
							enabled : true,
							radius : 1,
							symbol:'square' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						},
//						allowPointSelect: true,
						/*	 
					      events: {
					         // Default action for (left) clicking the data
					         click: function(point) {
					        	 alert('some action for clicking the point haha');
					         },
					         // (Right-click) Create a menu for the data point
					         contextmenu: function(point) {
					        	 //...??
					         },
					      }*/
					},
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x); // 
									syncTooltip_LV1B_QI(this.series.chart.container, this.x, this.series.index);
								}
							}
						}
					,states: {
						hover: {
							enabled: false,
							lineWidthPlus:0
						}
					}
					,animation: false
//					    ,events: {
//			                renderedCanvas: function () {
//			                    console.timeEnd('asyncRender');
//			                }
//			            }
					},
//					
				},
				
				exporting: {
					chartOptions: { // specific options for the exported image
						plotOptions: {
							series: {
								dataLabels: {
									enabled: false// canDropLabels==true
								}
							}
						}
					},
					scale: 3,
					fallbackToExportServer: false
				},
				
				credits: {
					enabled: false
				},
				
				tooltip : {
					headerFormat: '{point.x:%e. %b %H:%M:%S} <br>',
					pointFormat : '{point.y:,.5f} [FgA]{point.FgA}',
//					valueSuffix: 'unit',
					shared: true, //make the tooltip accessible across all series
					crosshairs:true,
//					formatter: function() {
//						return 'Extra data: <b>' + this.point.pid + '</b>';
//					}
				},
				
				legend: {
					layout: 'horizontal',
					y: 0,
					borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
						fontWeight:'normal'
					}
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
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				}
		};
		
		
		// 'fake' scatter plot for multiple series haha 
		var options_multipleSeries = {
				chart : {
					type : 'line',
//					renderTo : chartId,  								
					defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
//					            selection: selectPointsByDrag,
						selection: function(e){
							
							if(!isStillPressedDown){
								return true;  //do zoom instead of selecting points haha
							}
							
							var menuItemArray = this.options.exporting.buttons.contextButton.menuItems;
							if(menuItemArray.length < 8){
								this.options.exporting.buttons.contextButton.menuItems.push({
									text: "Change Flag",
//								            onclick: HelloFxxkingWorld
									onclick: function(event){
										var str = "";
										if(this.getSelectedPoints().length > 0){
//													alert(this.getSelectedPoints().length + ' points are affected')
											str += this.getSelectedPoints().length + ' points affected.\n\n';
										}
										
										$.each(this.getSelectedPoints(), function (i, value) {
											str += '['+ Highcharts.dateFormat('%Y-%m-%d %H:%M:%S',value.x) + '] ' + value.y +'\n';
//								                	sysout('[value.x]'+ Highcharts.dateFormat('%Y-%m-%d %H:%M:%S',value.x))
//								                	sysout('[value.y]'+ value.y)
										});
										alert(str);
									}
								});
							}
							
							// Select points
							Highcharts.each(this.series, function (series) {
								Highcharts.each(series.points, function (point) {
									if (point.x >= e.xAxis[0].min && point.x <= e.xAxis[0].max &&
											point.y >= e.yAxis[0].min && point.y <= e.yAxis[0].max) {
										point.select(true, true);
									}
								});
							});
							
							// Fire a custom event
							//Highcharts.fireEvent(this, 'selectedpoints', { points: this.getSelectedPoints() });
							
							// Fire djf custom event
							toastr.info('<b>' + this.getSelectedPoints().length + ' points selected.</b>');
							
							return false; // Don't zoom
						},
						/*selection: function(event) {
									// log the min and max of the primary, datetime x-axis
									console.log(
										Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', event.xAxis[0].min),
										Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', event.xAxis[0].max)
									);
									// log the min and max of the y axis
									console.log(event.yAxis[0].min, event.yAxis[0].max);
								},*/
						selectedpoints: selectedPoints,
//					            click: unselectByClick
						click : function(e){
							var points = this.getSelectedPoints();
							if (points.length > 0) {
								Highcharts.each(points, function (point) {
									point.select(false);
								});
							}
//					    		    var menuItemArray = this.options.exporting.buttons.contextButton.menuItems;
//									if(menuItemArray.length > 7){
//										menuItemArray = menuItemArray.slice(0,7)
//										alert(menuItemArray.length)
//									}
						}
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 0, //make the lines disappear
						marker : {
							enabled : true,
							radius : 2,
							symbol:'square' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						},
//						allowPointSelect: true,
						/*	 
					      events: {
					         // Default action for (left) clicking the data
					         click: function(point) {
					        	 alert('some action for clicking the point haha');
					         },
					         // (Right-click) Create a menu for the data point
					         contextmenu: function(point) {
					        	 //...??
					         },
					      }*/
					},
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x); // 
									syncTooltip_LV1B_QI(this.series.chart.container, this.x, this.series.index);
								}
							}
						}
					,states: {
						hover: {
							enabled: false,
							lineWidthPlus:0
						}
					}
					,animation: false
//					    ,events: {
//			                renderedCanvas: function () {
//			                    console.timeEnd('asyncRender');
//			                }
//			            }
					},
//					
				},
				
				exporting: {
					chartOptions: { // specific options for the exported image
						plotOptions: {
							series: {
								dataLabels: {
									enabled: false// canDropLabels==true
								}
							}
						}
					},
					scale: 3,
					fallbackToExportServer: false
				},
				
				credits: {
					enabled: false
				},
				
				tooltip : {
					headerFormat: '{point.x:%e. %b %H:%M:%S}<br>',
					shared: true, //make the tooltip accessible across all series
					crosshairs:true
				},
				
				legend: {
					layout: 'horizontal',
					y: 0,
					borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
						fontWeight:'normal'
					}
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
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				}
		};
		
		// 'fake' scatter plot for multiple series haha 
		var options_multipleSeries_someAction4clickingThePointHaha = {
				chart : {
					type : 'line',
//					renderTo : chartId,  								
					defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
						dblclick: function () {
							//$('#report').html('dbclick on xAxis label');
							alert('dbclick');
						},
						click: function () {
							//$('#report').html('click on xAxis label');
							alert('click');
						},
						contextmenu: function () {
							//$('#report').html('context menu on xAxis label');
							alert('contextmenu');
						}
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 0, //make the lines disappear
						marker : {
							enabled : true,
							radius : 2,
							symbol:'square' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						},
						allowPointSelect: true,
						events: {
							// Default action for (left) clicking the data
							click: function(point) {
								alert('some action for clicking the point haha');
							},
							// (Right-click) Create a menu for the data point
							contextmenu: function(point) {
								//...??
							},
						}
					},
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x); // 
									syncTooltip_LV1B_QI(this.series.chart.container, this.x, this.series.index);
								}
							}
						}
					,states: {
						hover: {
							enabled: false,
							lineWidthPlus:0
						}
					}
					,animation: false
//					    ,events: {
//			                renderedCanvas: function () {
//			                    console.timeEnd('asyncRender');
//			                }
//			            }
					},
//					
				},
				
				exporting: {
					chartOptions: { // specific options for the exported image
						plotOptions: {
							series: {
								dataLabels: {
									enabled: false// canDropLabels==true
								}
							}
						}
					},
					scale: 3,
					fallbackToExportServer: false
				},
				
				credits: {
					enabled: false
				},
				
				tooltip : {
					headerFormat: '{point.x:%e. %b %H:%M:%S}<br>',
					shared: true, //make the tooltip accessible across all series
					crosshairs:true
				},
				
				legend: {
					layout: 'horizontal',
					y: 0,
					borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
						fontWeight:'normal'
					}
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
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				}
		};
		
		// 'fake' scatter plot for multiple series - Level 1 B 품질지표
		var options_multipleSeries_L1B_QI = {
				chart : {
					type : 'line',
//					renderTo : chartId,  								
					defaultSeriesType : 'line',  //this is a 'fake' scatter plot						
					animation: false,
					events:{
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					line: {
						lineWidth: 0, //make the lines disappear
						marker : {
							enabled : true,
							radius : 2,
							symbol:'square' // "circle", "square", "diamond", "triangle" and "triangle-down".
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						},
					},
					
					series: {
						point: {
							events: {
								mouseOver: function () {
									syncTooltip_LV1B_QI(this.series.chart.container, this.x, this.series.index);
								}
							}
						}
					,states: {
						hover: {
							enabled: false,
							lineWidthPlus:0
						}
					}
					,animation: false
//					    ,events: {
//			                renderedCanvas: function () {
//			                    console.timeEnd('asyncRender');
//			                }
//			            }
					},
//					
				},
				
				exporting: {
					chartOptions: { // specific options for the exported image
						plotOptions: {
							series: {
								dataLabels: {
									enabled: false// canDropLabels==true
								}
							}
						}
					},
					scale: 3,
					fallbackToExportServer: false
				},
				
				credits: {
					enabled: false
				},
				
				tooltip : {
					headerFormat: '{point.x:%e. %b %H:%M:%S}<br>',
					shared: true,  //오미  
					crosshairs:true
				},
				
				legend: {
					layout: 'horizontal',
					y: 0,
					borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
						fontWeight:'normal'
					}
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
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				}
		};

		
		var options_multipleSeries_scatter = {
				chart : {
					type : 'scatter',
//					renderTo : chartId,  								
					defaultSeriesType : 'scatter',  	
					animation: false,
					events:{
//			            selection: selectPointsByDrag,
						selection: function(e){
							
							if(!isStillPressedDown){
								return true;  //do zoom instead of selecting points haha
							}
							
							var menuItemArray = this.options.exporting.buttons.contextButton.menuItems;
							if(menuItemArray.length < 8){
								this.options.exporting.buttons.contextButton.menuItems.push({
									text: "Change Flag",
//						            onclick: HelloFxxkingWorld
									onclick: function(event){
										var str = "";
										if(this.getSelectedPoints().length > 0){
//											alert(this.getSelectedPoints().length + ' points are affected')
											str += this.getSelectedPoints().length + ' points affected.\n\n';
										}
										
						                $.each(this.getSelectedPoints(), function (i, value) {
						                	str += '['+ Highcharts.dateFormat('%Y-%m-%d %H:%M:%S',value.x) + '] ' + value.y +'\n';
//						                	sysout('[value.x]'+ Highcharts.dateFormat('%Y-%m-%d %H:%M:%S',value.x))
//						                	sysout('[value.y]'+ value.y)
						                });
						                alert(str);
									}
								});
							}
							
							
						    // Select points
						    Highcharts.each(this.series, function (series) {
						    	sysout('[DJFWorks SAT 29 July] select points [begin]')
						        Highcharts.each(series.points, function (point) {
						        	sysout('[DJFWorks SAT 29 July] point.x is' + point.x)
						        	sysout('[DJFWorks SAT 29 July] point.y is' + point.y)
						        	sysout('[point object] ::: ')
						        	sysout(point)
						            if (point.x >= e.xAxis[0].min && point.x <= e.xAxis[0].max &&
						                    point.y >= e.yAxis[0].min && point.y <= e.yAxis[0].max) {
						                point.select(true, true);
						            }
						        });
						    });

						    // Fire a custom event
						    //Highcharts.fireEvent(this, 'selectedpoints', { points: this.getSelectedPoints() });

						    // Fire djf custom event
							toastr.info('<b>' + this.getSelectedPoints().length + ' points selected.</b>');
						    
						    return false; // Don't zoom
						},
						/*selection: function(event) {
							// log the min and max of the primary, datetime x-axis
							console.log(
								Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', event.xAxis[0].min),
								Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', event.xAxis[0].max)
							);
							// log the min and max of the y axis
							console.log(event.yAxis[0].min, event.yAxis[0].max);
						},*/
			            selectedpoints: selectedPoints,
//			            click: unselectByClick
			            click : function(e){
			                var points = this.getSelectedPoints();
			    		    if (points.length > 0) {
			    		        Highcharts.each(points, function (point) {
			    		            point.select(false);
			    		        });
			    		    }
//			    		    var menuItemArray = this.options.exporting.buttons.contextButton.menuItems;
//							if(menuItemArray.length > 7){
//								menuItemArray = menuItemArray.slice(0,7)
//								alert(menuItemArray.length)
//							}
			            }
					},
					plotBorderWidth : 1,
					plotBorderColor : '#346691', // '#346691',
					zoomType : 'xy',
				},
				plotOptions: {
					scatter : {
						marker : {
							radius : 1.5,
							// "circle", "square", "diamond", "triangle" and "triangle-down".
							symbol:'square'
//							,states : {
//								hover : {
//									enabled : true,
//								}
//							}
						}
					},
					
					series: {
						point: {
							events: {
								mouseOver: function () {
//									syncTooltip(this.series.chart.container, this.x);
								}
							}
						}
					,states: {
						hover: {
							enabled: false,
							lineWidthPlus:0
						}
					}
					,animation: false
//					    ,events: {
//			                renderedCanvas: function () {
//			                    console.timeEnd('asyncRender');
//			                }
//			            }
					},
//					
				},
				exporting: {
		            chartOptions: { // specific options for the exported image
		                plotOptions: {
		                    series: {
		                        dataLabels: {
		                            enabled: false
		                        }
		                    }
		                }
		            },
		            scale: 3,
		            fallbackToExportServer: false
		        },
		        
				credits: {
					enabled: false
				},
				
				tooltip : {
					shared : false,
					crosshairs:true,
					formatter : function() {
						var myDate = new Date(this.x);
						var newDateMs = Date.UTC(myDate.getUTCFullYear(), myDate.getUTCMonth(), myDate.getUTCDate(), myDate.getUTCHours(), myDate.getUTCMinutes(), myDate.getUTCSeconds());
						return '<b>' + this.series.name + '</b><br/>' + Highcharts .dateFormat('%e. %b %H:%M:%S', newDateMs) + ' <br>' + this.y;
					}
			      
				},
				
				legend: {
					layout: 'horizontal',
					y: 0,
					borderColor: '#aaa', //grayBlue
					borderWidth: 1,
					itemStyle: {
						fontWeight:'normal'
					}
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
					//remove leading n trailling padding?space from the series of the timeseries chart haha
					startOnTick: true,
					endOnTick: false,				
					minPadding:0,
					maxPadding:0,
					lineColor : '#346691',
					lineWidth : 1,
				}
		};
		
		
	/*	
		function addChartTester(url, dStr, tabIndex,detector, chartId){
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
		    var n = 500000,
		        data = getData(n);


		    $('#container').highcharts({

		        chart: {
		            zoomType: 'x'
		        },

		        title: {
		            text: 'Trimmed Highcharts drawing ' + n + ' points'
		        },

		        subtitle: {
		            text: 'Using the experimental Highcharts Boost module'
		        },

		        tooltip: {
		            valueDecimals: 2
		        },

		        series: [{
		            data: data,
		            lineWidth: 0.5
		        }]

		    });
		}
		*/
		
		
	
		

		
		
		
		function addChart_L1_CRDS(url,dStr, dBegin, tabIndex,whichVar,chartId,chartingPeriod){
			systime('addChart_L1_CRDS()', 'begin');
			sysout("WHICH_VAR:: " + whichVar)
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRPRNU',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&whichVar='+ whichVar,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						$('#'+chartId).append("<div class='loader' data-initialize='loader' data-frame='7' id='myFxxkingLoader'></div>");
						return;
					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_scatter : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
							        	
					
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							useHTML : true,
							text: 'LEVEL 0 CRDS',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
//							text: '(nonoDetector ' + ENVTypeCode + ')',
							text: ' ',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
							// max:3,
							// min: -3,
							title: {
								text: 'value',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 3, '.', ',');
								}
							}	
						}
					/*	,series: [
						          {name:'series',
						        	  color:'#7cb5ec',
						        	  connectNulls:false, data: []}
						          ]*/
					})); //haha
//					Highcharts.getOptions().exporting.buttons.contextButton.menuItems.push({
//					    text: 'My new button',
//					    onclick: function () {
//					        alert('OK');
//					    }
//					});
					
					//chart goes here
					
					$.each (Object.keys(jsonData), function(idx,val){
						eachData = [];
						var vrDataObj = jsonData[val];
						sysout(">>> " + vrDataObj.length + " rows");
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2}).(\d{6})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]);
						}
						
//						_chartInstance.series[idx*1].setData(eachData); 
						
						 _chartInstance.addSeries({
							 	userHTML:true,
//			        			name: vrDataObj[0].TYPENAME + ' (' + vrDataObj[0].INSTRUMENTMODESTR + ')',
//			        			name: 'L0-CRDS-' + getLevel1A_ENV_Title(ENVTypeCode),
			        			name: 'L0 CRDS ' + whichVar,
			        			data: eachData
						 }); 
						 
					});
					
//					var title = getLevel1A_ENV_Title(ENVTypeCode);
					var title = whichVar;
					_chartInstance.setTitle({text: title});
//					_chartInstance.series[0].update({name:"name u want to change"}, false);
					/*if(whichVar=='CH4' || whichVar=='H2O')
					_chartInstance.yAxis[0].axisTitle.attr({
				        text: 'value'
				    });*/
					
					map.put(chartId, _chartInstance);
					systime('addChart_L1_CRDS()', 'end');
					
					
					
					
				},
				cache: false,
				
			});	
		}
		
		function addChart_NEPHELO(url,dStr, dBegin, tabIndex,whichVar,chartId,chartingPeriod){
			systime('addChart_L1_NEPHELO()', 'begin');
			sysout("WHICH_VAR:: " + whichVar)
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&whichVar='+ whichVar,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						$('#'+chartId).append("<div class='loader' data-initialize='loader' data-frame='7' id='myFxxkingLoader'></div>");
						return;
					}
					
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_LV1 : options_multipleSeries_LV1_weekly; 
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_scatter : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					
					
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							useHTML : true,
							text: 'LEVEL 1 Nephelometer',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
//							text: '(nonoDetector ' + ENVTypeCode + ')',
							text: ' ',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
							// max:3,
							// min: -3,
							title: {
								text: 'value',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 1, '.', ',');
								}
							}	
						}
						/*	,series: [
						          {name:'series',
						        	  color:'#7cb5ec',
						        	  connectNulls:false, data: []}
						          ]*/
					})); //haha
					
					
					//chart goes here
					
					$.each (Object.keys(jsonData), function(idx,val){
						eachData = [];  //find
						eachData_suspicious = [];  //suspicious 
						eachData_error = [];  //error
						var vrDataObj = jsonData[val];
						sysout(">>> " + vrDataObj.length + " rows");
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2}).(\d{6})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
//							var colour = (vrDataObj[i].FgA.indexOf('1') > -1)? ((vrDataObj[i].FgA.indexOf('2') > -1)? '#dc143c' : '#fd7a16') : '#3e93ef'  //오류 의심 정상
//							eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum, color:colour});
							
							
							if(vrDataObj[i].FgM!=undefined){
								//양호 (수동1단계)
								if(vrDataObj[i].FgM == '000'){
									eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum  				,F1:vrDataObj[i].F1, F2:vrDataObj[i].F2, F3:vrDataObj[i].F3, F4:vrDataObj[i].F4, F5:vrDataObj[i].F5, F6:vrDataObj[i].F6, FgM:vrDataObj[i].FgM, MFS1:vrDataObj[i].MFS1 });
								//의심 (수동1단계) 	
								}else if(vrDataObj[i].FgM.charAt(0) != '9'){
									eachData_suspicious.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum    ,F1:vrDataObj[i].F1, F2:vrDataObj[i].F2, F3:vrDataObj[i].F3, F4:vrDataObj[i].F4, F5:vrDataObj[i].F5, F6:vrDataObj[i].F6, FgM:vrDataObj[i].FgM, MFS1:vrDataObj[i].MFS1 });
								//결측 (수동1단계)		
								}else{
									eachData_error.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum 		    ,F1:vrDataObj[i].F1, F2:vrDataObj[i].F2, F3:vrDataObj[i].F3, F4:vrDataObj[i].F4, F5:vrDataObj[i].F5, F6:vrDataObj[i].F6, FgM:vrDataObj[i].FgM, MFS1:vrDataObj[i].MFS1 });
								}
							}else{
								
								if(vrDataObj[i].FgA.indexOf('2') > -1){ //오류 필드
									eachData_error.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum 		    ,F1:vrDataObj[i].F1, F2:vrDataObj[i].F2, F3:vrDataObj[i].F3, F4:vrDataObj[i].F4, F5:vrDataObj[i].F5, F6:vrDataObj[i].F6, FgM:vrDataObj[i].FgM, MFS1:vrDataObj[i].MFS1 });
								}else {
									if(vrDataObj[i].FgA.indexOf('1') > -1){ // 의심 필드 
										eachData_suspicious.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum    ,F1:vrDataObj[i].F1, F2:vrDataObj[i].F2, F3:vrDataObj[i].F3, F4:vrDataObj[i].F4, F5:vrDataObj[i].F5, F6:vrDataObj[i].F6, FgM:vrDataObj[i].FgM, MFS1:vrDataObj[i].MFS1 });
									}else{ // 정상 필드 
										eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum  				,F1:vrDataObj[i].F1, F2:vrDataObj[i].F2, F3:vrDataObj[i].F3, F4:vrDataObj[i].F4, F5:vrDataObj[i].F5, F6:vrDataObj[i].F6, FgM:vrDataObj[i].FgM, MFS1:vrDataObj[i].MFS1 });
									}
								}
								//							eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
							}
							
						}
						
//						_chartInstance.series[idx*1].setData(eachData); 
						
//						 '#dc143c' : '#fd7a16') : '#3e93ef'  //오류 의심 정상
						_chartInstance.addSeries({
							userHTML:true,
							name: whichVar + ' 양호',
							data: eachData,
							color : '#229954' //blue #3e93ef
							,turboThreshold:0 //series item이 array가 아니고 object일 경우 디폴트 값인 1000 넘으면 시리즈 드로잉 안함. 0이 disable 
						}); 
//						if(eachData_suspicious.length != 0 ){
							_chartInstance.addSeries({
								userHTML:true,
								name: whichVar + ' 의심',
								data: eachData_suspicious,
								color : '#fd7a16'
								,turboThreshold:0 
							}); 
//						}
//						if(eachData_error.length != 0 ){
							_chartInstance.addSeries({
								userHTML:true,
								name: whichVar + ' 오류/결측',
								data: eachData_error,
								color : '#dc143c'
								,turboThreshold:0 
							}); 
//						}		
					});
					
//					var title = getLevel1A_ENV_Title(ENVTypeCode);
					var title = whichVar;
					_chartInstance.setTitle({text: title});
//					_chartInstance.series[0].update({name:"name u want to change"}, false);
					/*if(whichVar=='CH4' || whichVar=='H2O')
					_chartInstance.yAxis[0].axisTitle.attr({
				        text: 'value'
				    });*/
					
					map.put(chartId, _chartInstance);
					systime('addChart_L1_NEPHELO()', 'end');
				},
				cache: false,
				
			});	
		}
		
		
		function addChart_OPC_PMX(url,dStr, dBegin, tabIndex,whichVar,chartId,chartingPeriod){
			systime('addChart_L1_OPC_PMx()', 'begin');
			sysout("WHICH_VAR:: " + whichVar)
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&whichVar='+ whichVar,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						$('#'+chartId).append("<div class='loader' data-initialize='loader' data-frame='7' id='myFxxkingLoader'></div>");
						return;
					}
					
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_LV1 : options_multipleSeries_LV1_weekly; 
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_scatter : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					
					
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							useHTML : true,
							text: 'LEVEL 1 OPC PMX',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
//							text: '(nonoDetector ' + ENVTypeCode + ')',
							text: ' ',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
							// max:3,
							// min: -3,
							title: {
								text: 'value',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 1, '.', ',');
								}
							}	
						}
						/*	,series: [
						          {name:'series',
						        	  color:'#7cb5ec',
						        	  connectNulls:false, data: []}
						          ]*/
					})); //haha
					
					//chart goes here
					
					$.each (Object.keys(jsonData), function(idx,val){
						eachData = [];  //find
						eachData_suspicious = [];  //suspicious 
						eachData_error = [];  //error
						var vrDataObj = jsonData[val];
						sysout(">>> " + vrDataObj.length + " rows");
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2}).(\d{6})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
//							var colour = (vrDataObj[i].FgA.indexOf('1') > -1)? ((vrDataObj[i].FgA.indexOf('2') > -1)? '#dc143c' : '#fd7a16') : '#3e93ef'  //오류 의심 정상
//							eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum, color:colour});
							if(vrDataObj[i].FgA.indexOf('2') > -1){ //error 있는 필드
								eachData_error.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
							}else {
								if(vrDataObj[i].FgA.indexOf('1') > -1){
									eachData_suspicious.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
								}else{
									eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
								}
							}
//							eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
						}
						
//						_chartInstance.series[idx*1].setData(eachData); 
						
//						 '#dc143c' : '#fd7a16') : '#3e93ef'  //오류 의심 정상
						_chartInstance.addSeries({
							userHTML:true,
							name: whichVar + ' 양호',
							data: eachData,
							color : '#229954' //blue #3e93ef
								,turboThreshold:0 //series item이 array가 아니고 object일 경우 디폴트 값인 1000 넘으면 시리즈 드로잉 안함. 0이 disable 
						}); 
//						if(eachData_suspicious.length != 0 ){
						_chartInstance.addSeries({
							userHTML:true,
							name: whichVar + ' 의심',
							data: eachData_suspicious,
							color : '#fd7a16'
								,turboThreshold:0 
						}); 
//						}
//						if(eachData_error.length != 0 ){
						_chartInstance.addSeries({
							userHTML:true,
							name: whichVar + ' 오류',
							data: eachData_error,
							color : '#dc143c'
								,turboThreshold:0 
						}); 
//						}		
					});
					
//					var title = getLevel1A_ENV_Title(ENVTypeCode);
					var title = whichVar;
					_chartInstance.setTitle({text: title});
//					_chartInstance.series[0].update({name:"name u want to change"}, false);
					/*if(whichVar=='CH4' || whichVar=='H2O')
					_chartInstance.yAxis[0].axisTitle.attr({
				        text: 'value'
				    });*/
					
					map.put(chartId, _chartInstance);
					systime('addChart_L1_OPC_PMx()', 'end');
				},
				cache: false,
				
			});	
		}
		
		function addChart_APS_M(url,dStr, dBegin, tabIndex,whichVar,chartId,chartingPeriod){
			systime('addChart_L1_APS_M()', 'begin');
			sysout("WHICH_VAR:: " + whichVar)
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&whichVar='+ whichVar,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						$('#'+chartId).append("<div class='loader' data-initialize='loader' data-frame='7' id='myFxxkingLoader'></div>");
						return;
					}
					
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_LV1 : options_multipleSeries_LV1_weekly; 
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_scatter : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					
					
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							useHTML : true,
							text: 'LEVEL 1 APS M',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
//							text: '(nonoDetector ' + ENVTypeCode + ')',
							text: ' ',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
							// max:3,
							// min: -3,
							title: {
								text: 'value',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 1, '.', ',');
								}
							}	
						}
						/*	,series: [
						          {name:'series',
						        	  color:'#7cb5ec',
						        	  connectNulls:false, data: []}
						          ]*/
					})); //haha
					
					//chart goes here
					
					$.each (Object.keys(jsonData), function(idx,val){
						eachData = [];  //find
						eachData_suspicious = [];  //suspicious 
						eachData_error = [];  //error
						var vrDataObj = jsonData[val];
						sysout(">>> " + vrDataObj.length + " rows");
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2}).(\d{6})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
//							var colour = (vrDataObj[i].FgA.indexOf('1') > -1)? ((vrDataObj[i].FgA.indexOf('2') > -1)? '#dc143c' : '#fd7a16') : '#3e93ef'  //오류 의심 정상
//							eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum, color:colour});
							if(vrDataObj[i].FgA.indexOf('2') > -1){ //error 있는 필드
								eachData_error.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
							}else {
								if(vrDataObj[i].FgA.indexOf('1') > -1){
									eachData_suspicious.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
								}else{
									eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
								}
							}
//							eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum});
						}
						
//						_chartInstance.series[idx*1].setData(eachData); 
						
//						 '#dc143c' : '#fd7a16') : '#3e93ef'  //오류 의심 정상
						_chartInstance.addSeries({
							userHTML:true,
							name: whichVar + ' 양호',
							data: eachData,
							color : '#229954' //blue #3e93ef
								,turboThreshold:0 //series item이 array가 아니고 object일 경우 디폴트 값인 1000 넘으면 시리즈 드로잉 안함. 0이 disable 
						}); 
//						if(eachData_suspicious.length != 0 ){
						_chartInstance.addSeries({
							userHTML:true,
							name: whichVar + ' 의심',
							data: eachData_suspicious,
							color : '#fd7a16'
								,turboThreshold:0 
						}); 
//						}
//						if(eachData_error.length != 0 ){
						_chartInstance.addSeries({
							userHTML:true,
							name: whichVar + ' 오류',
							data: eachData_error,
							color : '#dc143c'
								,turboThreshold:0 
						}); 
//						}		
					});
					
					var title = whichVar;
					_chartInstance.setTitle({text: title});
					
					map.put(chartId, _chartInstance);
					systime('addChart_L1_APS_M()', 'end');
				},
				cache: false,
				
			});	
		}
		
		function addChart_NEPHELO_singleSeries(url,dStr, dBegin, tabIndex,whichVar,chartId,chartingPeriod){
			systime('addChart_L1_NEPHELO()', 'begin');
			sysout("WHICH_VAR:: " + whichVar)
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&whichVar='+ whichVar,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						$('#'+chartId).append("<div class='loader' data-initialize='loader' data-frame='7' id='myFxxkingLoader'></div>");
						return;
					}
					
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_LV1 : options_multipleSeries_LV1_weekly; 
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_scatter : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					
					
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							useHTML : true,
							text: 'LEVEL 1 Nephelometer',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
//							text: '(nonoDetector ' + ENVTypeCode + ')',
							text: ' ',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
							// max:3,
							// min: -3,
							title: {
								text: 'value',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 1, '.', ',');
								}
							}	
						}
						/*	,series: [
						          {name:'series',
						        	  color:'#7cb5ec',
						        	  connectNulls:false, data: []}
						          ]*/
					})); //haha
					
					//chart goes here
					
					$.each (Object.keys(jsonData), function(idx,val){
						eachData = [];
						var vrDataObj = jsonData[val];
						sysout(">>> " + vrDataObj.length + " rows");
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2}).(\d{6})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
//							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]); 
							var colour = (vrDataObj[i].FgA.indexOf('1') > -1)? ((vrDataObj[i].FgA.indexOf('2') > -1)? '#dc143c' : '#fd7a16') : '#3e93ef'  
								eachData.push({x: d, y:parseNumericVal(vrDataObj[i].VALUE), FgA: vrDataObj[i].FgA, pid:vrDataObj[i].snum, color:colour});
							sysout('point id is :: ' + vrDataObj[i].snum + '  / Flag Code is :: ' + vrDataObj[i].FgA)
						}
						
//						_chartInstance.series[idx*1].setData(eachData); 
						
						_chartInstance.addSeries({
							userHTML:true,
//			        			name: vrDataObj[0].TYPENAME + ' (' + vrDataObj[0].INSTRUMENTMODESTR + ')',
//			        			name: 'L0-CRDS-' + getLevel1A_ENV_Title(ENVTypeCode),
							name: 'L1 Nephelometer ' + whichVar,
							data: eachData
//							,zones: [{
//					            value: 0,
//					            color: '#f7a35c'
//					        }, {
//					            value: 10,
//					            color: '#7cb5ec'
//					        }, {
//					            color: '#90ed7d'
//					        }]
							,turboThreshold:0 //series item이 array가 아니고 object일 경우 디폴트 값인 1000 넘으면 시리즈 드로잉 안함. 0이 disable 
						}); 
						
					});
					
//					var title = getLevel1A_ENV_Title(ENVTypeCode);
					var title = whichVar;
					_chartInstance.setTitle({text: title});
//					_chartInstance.series[0].update({name:"name u want to change"}, false);
					/*if(whichVar=='CH4' || whichVar=='H2O')
					_chartInstance.yAxis[0].axisTitle.attr({
				        text: 'value'
				    });*/
					
					/**
					_chartInstance.series[0].data[55].update({
		            	marker:{
							fillColor: '#FC3D31'
						}
			        });
					
					_chartInstance.series[0].data[56].update({
//			            y:150,
						marker:{
							fillColor: '#FC3D31'
						}
					});
					_chartInstance.series[0].data[57].update({
//			            y:150,
						marker:{
							fillColor: '#FC3D31'
						}
					});
					_chartInstance.series[0].data[58].update({
//			            y:150,
						marker:{
							fillColor: '#FC3D31'
						}
					});
					
					_chartInstance.redraw();
					 */
					
					//$('#'+chartId).pleaseWait('stop');	
					//charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
					systime('addChart_L1_NEPHELO()', 'end');
				},
				cache: false,
				
			});	
		}
		
		function addChart_L1A_ENV(url,dStr, dBegin, tabIndex,ENVTypeCode,chartId,chartingPeriod){
			systime('addChart_L1A_ENV()', 'begin');
			sysout("ENV_CODE :: " + ENVTypeCode)
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c:url value='/' />timeseries/retrieval/L_1_A_IRPRNU',
				url: url,
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&ENVType='+ ENVTypeCode,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
//						$('#'+chartId).append("<div class='loader' data-initialize='loader' data-frame='7' id='myFxxkingLoader'></div>");
						return;
					}
					
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
					
					
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							useHTML : true,
							text: 'LEVEL 1 A EV',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
//							text: '(nonoDetector ' + ENVTypeCode + ')',
							text: ' ',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
							// max:3,
							// min: -3,
							title: {
								text: 'Temperature(K)',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 3, '.', ',');
								}
							}	
						}
						/*	,series: [
						          {name:'series',
						        	  color:'#7cb5ec',
						        	  connectNulls:false, data: []}
						          ]*/
					})); //haha
					
					//chart goes here
					
					$.each (Object.keys(jsonData), function(idx,val){
						eachData = [];
						var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].VALUE)]);
						}
						
//						_chartInstance.series[idx*1].setData(eachData); 
						
						_chartInstance.addSeries({
							userHTML:true,
//			        			name: vrDataObj[0].TYPENAME + ' (' + vrDataObj[0].INSTRUMENTMODESTR + ')',
							name: 'L0-CRDS-' + getLevel1A_ENV_Title(ENVTypeCode),
							data: eachData
						}); 
						
					});
					
					var title = getLevel1A_ENV_Title(ENVTypeCode);
					_chartInstance.setTitle({text: title});
//					_chartInstance.series[0].update({name:"name u want to change"}, false);
					if(ENVTypeCode=='6' || ENVTypeCode=='20')
						_chartInstance.yAxis[0].axisTitle.attr({
							text: 'Ampere(A)'
						});
					
					
					_chartInstance.series[0].data[55].update({
						marker:{
							fillColor: '#FC3D31'
						}
					});
					
					_chartInstance.series[0].data[56].update({
//			            y:150,
						marker:{
							fillColor: '#FC3D31'
						}
					});
					_chartInstance.series[0].data[57].update({
//			            y:150,
						marker:{
							fillColor: '#FC3D31'
						}
					});
					_chartInstance.series[0].data[58].update({
//			            y:150,
						marker:{
							fillColor: '#FC3D31'
						}
					});
					
					_chartInstance.redraw();
					
					
					//$('#'+chartId).pleaseWait('stop');	
					//charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
					systime('addChart_L1A_ENV()', 'end');
					
					
					
					
				},
				cache: false,
				
			});	
		}
		
		function getLevel1A_ENV_Title(givenTypeId){
			var title='';
			if(givenTypeId=='25'){
				title = 'Telescope Primary Temperature';
			}else if(givenTypeId=='26'){
				title = 'Louver Radiator Temperature';
//			}else if(givenTypeId=='34'){
//				title = 'Telescope Secondary Temperature #1';
//			}else if(givenTypeId=='73'){
//				title = 'Telescope Secondary Temperature #2';
//			}else if(givenTypeId=='72'){
//				title = 'Telescope Secondary Temperature #3';
				
			}else if(givenTypeId=='34'){
				title = 'CO<sub>2</sub>';
			}else if(givenTypeId=='73'){
				title = 'CH<sub>4</sub>';
			}else if(givenTypeId=='72'){
				title = 'H<sub>2</sub>O';
				
			}else if(givenTypeId=='36'){
				title = 'Scan Mirror Temperature';
			}else if(givenTypeId=='74'){
				title = 'Primary Baffle Temperature #1';
			}else if(givenTypeId=='75'){
				title = 'Primary Baffle Temperature #2';
			}else if(givenTypeId=='6'){
				title = 'E-W Servo Current';
			}else if(givenTypeId=='20'){
				title = 'N-S Servo Current';
			}
			return title;
		}
		
				
		function addChart_LV1B_QI_NumOfLandmarks(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_QI_NumOfLandmarks()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr +'&dBegin=' + dBegin +  '&imgMode=1&menuId=l1b&submenuId=nVL',
		        success: function(jsonData) {
					if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_L1B_QI : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  							
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
				            text: 'Number of Valid Landmarks',
				            align: 'center',
				            style:{
				            	font:'bold 16px NanumGothic'
				            }
				        },
				        subtitle: {
				            text: null,
				            align: 'center',
				            style:{
				            	font:'normal 13px NanumGothic'
				            }
				        },
				        yAxis: {
			    			//get rid of horizontal grid lines haha
			    			//gridLineWidth: 0,
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
				                text: 'Number',
			                	style : {
			                		font:'normal 12px NanumGothic'
			                	}	
				            },
				            labels:{
					            style : {
				            		font:'normal 11px NanumGothic'
					            },
					            formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
					            	return Highcharts.numberFormat(this.value, 0, '.', ',');
					            }
			            	},	
				        },
					
				        //IMGMODEID 0:FD 1:ENH 2:LSH 3:APNH 4:LA 
				        
				        series: [
						    // {
						    	// name: 'Detector 0',
			 	             // // visible:false,
			 	             // // showInLegend:false,
			     	         // connectNulls:false, data: []}
			     	         {name:'FD (FULL)',
				     	         color:'#7cb5ec',
			    	 	         connectNulls:false, data: []}
			     	         ,{name:'ENH (FULL)',
			     	      	     color:'#f15c80',
			     	       	  	 connectNulls:false, data: []}
			     	         ,{name:'LSH (FULL)',
			     	         	color:'#f7a35c',
			     	         	connectNulls:false, data: []}
			     	         ,{name:'APNH (FULL)',
			     	        	 color:'#434348',
			     	        	 // color:'#e4d354',
			     	        	 connectNulls:false, data: []}
			     	         ,{name:'LA (FULL)',
			     	         	color:'#8085e8',
			     	         	connectNulls:false, data: []}
			         	]
						
					})); //haha
					
		        	$.each (Object.keys(jsonData), function(idx,val){
			        	var eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].COUNT)]);
						}
						_chartInstance.series[idx*1].setData(eachData); 
						sysout('IDX is ' + idx*1);
						sysout(eachData);
					});
		        	//$('#'+chartId).pleaseWait('stop');
		        	//charts.push(_chartInstance);
		        	map.put(chartId, _chartInstance);
		        	systime('addChart_LV1B_QI_NumOfLandmarks()', 'end');
				},
		        cache: false	
			});	
		}
		
		
		
		function addChart_LV1B_QI_ResidualStdDev(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_QI_ResidualStdDev()', 'begin');
			var whichSide = (detector*1==1)?'NS':'EW';
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&dBegin=' + dBegin + '&imgMode=1&menuId=l1b&submenuId=nVL',
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_L1B_QI : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  							
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: 'Residual Standard Deviation('+whichSide+')',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: null,
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
								text: 'Number',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 5, '.', ',');
								}
							},	
						},
						
						series: [
						         {name:'FD (FULL)',
						        	 color:'#7cb5ec',
						        	 connectNulls:false, data: []}
						         ,{name:'ENH (FULL)',
						        	 color:'#f15c80',
						        	 connectNulls:false, data: []}
						         ,{name:'LSH (FULL)',
						        	 color:'#f7a35c',
						        	 connectNulls:false, data: []}
						         ,{name:'APNH (FULL)',
						        	 color:'#434348',
						        	 // color:'#e4d354',
						        	 connectNulls:false, data: []}
						         ,{name:'LA (FULL)',
						        	 color:'#8085e8',
						        	 connectNulls:false, data: []}
						         ]
						
					})); //haha
					
					$.each (Object.keys(jsonData), function(idx,val){
						var eachData = [];
						var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							if(whichSide=='NS'){
								eachData.push([d,parseNumericVal(vrDataObj[i].STDDEVNS)]);
							}else{
								eachData.push([d,parseNumericVal(vrDataObj[i].STDDEVEW)]);
							}
						}
						_chartInstance.series[idx*1].setData(eachData); 
					});
					//$('#'+chartId).pleaseWait('stop');
					//charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
					systime('addChart_LV1B_QI_ResidualStdDev()', 'end');
				},
				cache: false	
			});	
		}
		
		
		
		function addChart_LV1B_QI_ResidualQuadraticDistance(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_QI_ResidualQuadraticDistance()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&dBegin=' + dBegin + '&imgMode=1&menuId=l1b&submenuId=nVL',
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_L1B_QI : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  							
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: 'Residual Quadratic Distance',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: null,
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
								text: 'Number',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
									return Highcharts.numberFormat(this.value, 5, '.', ',');
								}
							},	
						},
						
						series: [
						         // {
						         // name: 'Detector 0',
						         // // visible:false,
						         // // showInLegend:false,
						         // connectNulls:false, data: []}
						         {name:'FD (FULL)',
						        	 color:'#7cb5ec',
						        	 connectNulls:false, data: []}
						         ,{name:'ENH (FULL)',
						        	 color:'#f15c80',
						        	 connectNulls:false, data: []}
						         ,{name:'LSH (FULL)',
						        	 color:'#f7a35c',
						        	 connectNulls:false, data: []}
						         ,{name:'APNH (FULL)',
						        	 color:'#434348',
						        	 // color:'#e4d354',
						        	 connectNulls:false, data: []}
						         ,{name:'LA (FULL)',
						        	 color:'#8085e8',
						        	 connectNulls:false, data: []}
						         ]
						
					})); //haha
					
					$.each (Object.keys(jsonData), function(idx,val){
						var eachData = [];
						var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].QUADDIST)]);
						}
						_chartInstance.series[idx*1].setData(eachData); 
					});
					//$('#'+chartId).pleaseWait('stop');
					//charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
					systime('addChart_LV1B_QI_ResidualQuadraticDistance()', 'end');
				},
				cache: false	
			});	
		}
		
		
		
		
		function addChart_LV1B_QI_ResidualAvg(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_QI_ResidualAvg()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				//url: '<c url value='/' />timeseries/retrieval/L_1_B_NVL',
				url: url,
				data: 'targetDate=' + dStr + '&dBegin=' + dBegin + '&imgMode=1&menuId=l1b&submenuId=RAVG',
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
//					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries_L1B_QI : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  							
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: 'Landmark Residual - Average (EW/NS)',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: null,
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
							 // max:3,
							// min: -3,
							 title: {
								text: 'Error',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
					            	return Highcharts.numberFormat(this.value, 5, '.', ',');
					            }
							},	
						}
						
						,series: [
							 {name:'FD (FULL) (EW)',
							  	color:'#7cb5ec',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	         	connectNulls:false, data: []}
							 ,{name:'FD (FULL) (NS)',
							  	color:'#7cb5ec',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'ENH (FULL) (EW)',
			     	         	color:'#f15c80',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'ENH (FULL) (NS)',
			     	         	color:'#f15c80',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'LSH (FULL) (EW)',
			     	         	color:'#f7a35c',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'LSH (FULL) (NS)',
			     	         	color:'#f7a35c',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'APNH (FULL) (EW)',
			     	        	 color:'#434348',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	        	 connectNulls:false, data: []}
			     	         ,{name:'APNH (FULL) (NS)',
			     	        	 color:'#434348',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	        	 connectNulls:false, data: []}
			     	         ,{name:'LA (FULL) (EW)',
			     	         	color:'#8085e8',
//							  	marker: {
//					                symbol: 'triangle'
//					            },   
			     	         	connectNulls:false, data: []}
			     	         ,{name:'LA (FULL) (NS)',
			     	         	color:'#8085e8',
//							  	marker: {
//					               symbol: 'circle'
//					            },   
			     	         	connectNulls:false, data: []}
					  ]
					   
						
					})); //haha
					
		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
			        	eachData2 = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].AVERAGEEW)]);
							eachData2.push([d,parseNumericVal(vrDataObj[i].AVERAGENS)]);
						}
						_chartInstance.series[idx*2].setData(eachData);    //0 2 ..   
						_chartInstance.series[idx*2+1].setData(eachData2);// 1 3 ..
					});
					
					//$('#'+chartId).pleaseWait('stop');
					//charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
					systime('addChart_LV1B_QI_ResidualAvg()', 'end');
				},
				cache: false	
			});	
		}
		
		
		
		
		
		function addChart_LV1B_EV_SCPOS(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_EV_SCPOS()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
		        success: function(jsonData) {
		        	if(jsonData.length==0){
		        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
		        		return;
		        	}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
		        	//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'scatter',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
						},
						title: {
							text: 'Spacecraft Position R(m)',
							align: 'center',
							style:{
								font:'bold 16px NanumGothic'
							}
						},
						subtitle: {
							text: 'at Image Center',
							align: 'center',
							style:{
								font:'normal 13px NanumGothic'
							}
						},
						yAxis: {
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
				    		 // max:3,
						  	// min: -3,
							 	title: {
								text: 'R(m)',
								style : {
									font:'normal 12px NanumGothic'
								}	
							},
							labels:{
								style : {
									font:'normal 11px NanumGothic'
								},
								formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
					            	return Highcharts.numberFormat(this.value, 0, '.', ',');
					            }
							},	
						}
					 
					})); //haha
		        	
		        	//chart goes here
		        	
 		        	$.each (Object.keys(jsonData), function(idx,val){
			        	eachData = [];
		        		var vrDataObj = jsonData[val];
						for (var i = 0; i < vrDataObj.length; i++) {
							var d = /^(\d{4})\-(\d{2})\-(\d{2}) (\d{2}):(\d{2}):(\d{2})$/.exec(vrDataObj[i].DSTR);
							d = Date.UTC(d[1],d[2]*1-1,d[3],d[4],d[5],d[6]);
							eachData.push([d,parseNumericVal(vrDataObj[i].CENTERX)]);
						}
						//_chartInstance.series[idx].setData(eachData); 
						 /* 
						 */
						 _chartInstance.addSeries({
//			        			name: vrDataObj[0].TYPENAME,
			        			name: 'Center',
			        			data: eachData
	        			}); 
					});
					
 		        	//$('#'+chartId).pleaseWait('stop');	
 		        	//charts.push(_chartInstance);
 		        	map.put(chartId, _chartInstance);
 		        	systime('addChart_LV1B_EV_SCPOS()', 'end');
				},
		        cache: false,
		        
			});	
		}
		
		
		function addChart_LV1B_EV_SCATT(url,dStr, dBegin, tabIndex,detector,chartId,chartingPeriod){
			systime('addChart_LV1B_EV_SCATT()', 'begin');
			$.ajax({
				type: 'GET',
				dataType:'json',
				url: url,	
//				url: '<c:url value='/' />timeseries/retrieval/L_1_A_VisblePRNU',
				data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
				success: function(jsonData) {
					if(jsonData.length==0){
						$('#'+chartId).append("<span class='clear'>No data available.</span>");
						return;
					}

					///////////////////////////////////////////////////////////////////////////////////////////////////////
					chartingPeriod = chartingPeriod.toUpperCase();
					var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
					///////////////////////////////////////////////////////////////////////////////////////////////////////
						
					//chart goes here
					var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
						chart : {
//							type : 'line',
							renderTo : chartId,  								
//							defaultSeriesType : 'line',
//							animation: false,
//							plotBorderWidth : 1,
//							plotBorderColor : '#346691', // '#346691',
//							zoomType : 'xy',
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
							//get rid of horizontal grid lines haha
							//gridLineWidth: 0,
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
							// max:3,
							// min: -3,
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
						
					})); //haha

					
					
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
//						_chartInstance.series[idx].setData(eachData); 
						/* 
						 */
//						_chartInstance.addSeries({
//							name: vrDataObj[0].TYPENAME,
//							data: eachData
//						}); 
					});
					
					//$('#'+chartId).pleaseWait('stop');	
					//charts.push(_chartInstance);
					map.put(chartId, _chartInstance);
					systime('addChart_LV1B_EV_SCATT()', 'end');
				},
				cache: false,
				
			});	
		}
		
		
		
		
		
//=======================================================================================================================================		
//=======================================================================================================================================		
//==== Level 2 Daily Validation Begin====================================================================================================
//=======================================================================================================================================		
//=======================================================================================================================================		
		
		// 1. CLA
		// 1. CLA
		// 1. CLA
		// 1. CLA
				function addChart_L2_CLA(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_CLA()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
				        success: function(jsonData) {
				        	if(jsonData.length==0){
				        		$('#'+chartId).append("<span class='clear'>No data available.</span>");
				        		return;
				        	}

							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
								
				        	//chart goes here
//							var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
								var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'Cloud Amount 검증 지표',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},

								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
								  	 min: 0,
								  	 max:1,
								  	tickInterval: 0.25,
									lineWidth:0,
						    		 // max:3,
								  	// min: -3,
									 	title: {
										text: 'R / Bias / RMSE',
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
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
									tickInterval: 25,
						    		 // max:3,
								  	// min: -3,
									 	title: {
										text: 'vam_num',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
							            	return Highcharts.numberFormat(this.value, 0, '.', ',');
							            }
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
							 	series: [
									{name: 'Bias',	yAxis : 0, type : 'scatter',
									  color: '#003399' ,
									  connectNulls:false, data: []}
									  ,{name:'RMSE', yAxis : 0, type : 'scatter',
									  	color: '#f15c80' ,
									  	connectNulls:false, data: []}
									  ,{name:'R', yAxis : 0, type : 'scatter',
									  	color: '#CCCC00' ,
									  	connectNulls:false, data: []}
									  ,{name:'vam_num', yAxis : 1, type : 'line',  gapSize: 1,
									  	color: '#0099CC' ,
									  	connectNulls:false, data: []}
							  ]
								
							})); //haha
				        	
				        	//chart goes here
				        	
				        	
		 		        	$.each (Object.keys(jsonData), function(idx,val){
					        	eachData_BIAS = [];
					        	eachData_RMSE = [];
					        	eachData_R = [];
					        	eachData_VAM_NUM = [];
					        	
				        		var vrDataObj = jsonData[val];
				        		
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_BIAS.push([d,parseNumericVal(vrDataObj[i].BIAS)]);
									eachData_RMSE.push([d,parseNumericVal(vrDataObj[i].RMSE)]);
									eachData_R.push([d,parseNumericVal(vrDataObj[i].R)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
								}
								_chartInstance.series[0].setData(eachData_BIAS); 
								_chartInstance.series[1].setData(eachData_RMSE); 
								_chartInstance.series[2].setData(eachData_R); 
								_chartInstance.series[3].setData(eachData_VAM_NUM); 
							});
							
		 		        	//$('#'+chartId).pleaseWait('stop');	
		 		        	//charts.push(_chartInstance);
		 		        	map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
		 		        	systime('addChart_L2_CLA()', 'end');
						},
				        cache: false,
				        
					});	
				}
				
				// 2. CLD
				// 2. CLD
				// 2. CLD
				// 2. CLD
				// PC, POD, FAR, PSS, HSS 값 각각을 scatter yaxis0
				//	vam_num, Hit, false_alarm, miss, cor_neg  line yaxis1
				function addChart_L2_CLD(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_CLD()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
							if(jsonData.length==0){
								$('#'+chartId).append("<span class='clear'>No data available.</span>");
								return;
							}
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							//chart goes here
//							var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
							var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'CLD 검증지표',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									min: 0,
									max:1,
									tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'PC / POD / FAR / PSS / HSS',
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
								}, { 
									// Secondary yAxis precipitation 
									// Secondary yAxis precipitation 
									// Secondary yAxis precipitation 
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / Hit / false_alarm / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											return Highcharts.numberFormat(this.value, 0, '.', ',');
										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'PC',	yAxis : 0, type : 'scatter',
//								        	 color: '#003399' ,
								        	 connectNulls:false, data: []}
								         ,{name:'POD', yAxis : 0, type : 'scatter',
//								        	 color: '#f15c80' ,
								        	 connectNulls:false, data: []}
								         ,{name:'FAR', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'PSS', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'HSS', yAxis : 0, type : 'scatter',
//								        	 color: '#CCCC00' ,
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line',dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'Hit', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'false_alarm', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'miss', yAxis : 1, type : 'line', dashStyle : 'Dash', gapSize: 1,
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1, // pointInterval: 60 * 5 * 1000, //5 min
//								        	 color: '#0099CC' ,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							// PC, POD, FAR, PSS, HSS 값 각각을 scatter yaxis0
							//	vam_num, Hit, false_alarm, miss, cor_neg  line yaxis1					
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_PC = [];
								eachData_POD = [];
								eachData_FAR = [];
								eachData_PSS = [];
								eachData_HSS = [];
								eachData_VAM_NUM = [];
								eachData_HIT = [];
								eachData_FALSE_ALARM = [];
								eachData_MISS = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									sysout(dateString)
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_PC.push([d,parseNumericVal(vrDataObj[i].PC)]);
									eachData_POD.push([d,parseNumericVal(vrDataObj[i].POD)]);
									eachData_FAR.push([d,parseNumericVal(vrDataObj[i].FAR)]);
									eachData_PSS.push([d,parseNumericVal(vrDataObj[i].PSS)]);
									eachData_HSS.push([d,parseNumericVal(vrDataObj[i].HSS)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_HIT.push([d,parseNumericVal(vrDataObj[i].HIT)]);
									eachData_FALSE_ALARM.push([d,parseNumericVal(vrDataObj[i].FALSE_ALARM)]);
									eachData_MISS.push([d,parseNumericVal(vrDataObj[i].MISS)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);
								}
								_chartInstance.series[0].setData(eachData_PC); 
								_chartInstance.series[1].setData(eachData_POD); 
								_chartInstance.series[2].setData(eachData_FAR); 
								_chartInstance.series[3].setData(eachData_PSS); 
								_chartInstance.series[4].setData(eachData_HSS); 
								_chartInstance.series[5].setData(eachData_VAM_NUM); 
								_chartInstance.series[6].setData(eachData_HIT); 
								_chartInstance.series[7].setData(eachData_FALSE_ALARM); 
								_chartInstance.series[8].setData(eachData_MISS); 
								_chartInstance.series[9].setData(eachData_COR_NEG); 
							});
							
							//$('#'+chartId).pleaseWait('stop');	
							//charts.push(_chartInstance);
							map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
							systime('addChart_L2_CLD()', 'end');
						},
						cache: false,
						
					});	
				}
				
				
				
				// 3. FOG
				// 3. FOG
				// 3. FOG
				// 3. FOG
				// 3. FOG
				// 3. FOG
				function addChart_L2_FOG(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_FOG()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
							if(jsonData.length==0){
								$('#'+chartId).append("<span class='clear'>No data available.</span>");
								return;
							}
							
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							//chart goes here
//							var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
							var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'FOG 검증 지표',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									min: 0,
//									max:1,
//									tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'Hit / false_alarm',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											return Highcharts.numberFormat(this.value, 1, '.', ',');
										}
									}
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											return Highcharts.numberFormat(this.value, 0, '.', ',');
										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'hit',	yAxis : 0, type : 'column',
								        	 connectNulls:false, data: []}
								         ,{name:'false_alarm', yAxis : 0, type : 'column',
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line', dashStyle : 'Dash',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_HIT = [];
								eachData_FALSE_ALARM = [];
								eachData_VAM_NUM = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_FALSE_ALARM.push([d,parseNumericVal(vrDataObj[i].FALSE_ALARM)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_HIT.push([d,parseNumericVal(vrDataObj[i].HIT)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);							
								}
								_chartInstance.series[0].setData(eachData_HIT); 
								_chartInstance.series[1].setData(eachData_FALSE_ALARM); 
								_chartInstance.series[2].setData(eachData_VAM_NUM); 
								_chartInstance.series[3].setData(eachData_COR_NEG); 
							});
							
							//$('#'+chartId).pleaseWait('stop');	
							//charts.push(_chartInstance);
							map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
							systime('addChart_L2_FOG()', 'end');
						},
						cache: false,
						
					});	
				}
				
				
				
				// 4. AI
				// 4. AI
				// 4. AI
				// 4. AI
				// 4. AI
				// PC, BIAS, POD 값을 각각 scatter 
				// Vam_num, miss, cor_neg 오른쪽 라인

				function addChart_L2_AI(url,dStr, dBegin, tabIndex,detector,chartId, chartingPeriod){
					systime('addChart_L2_AI()', 'begin');
					$.ajax({
						type: 'GET',
						dataType:'json',
//						url: '<c:url value='/' />timeseries/retrieval/L_1_A_VR',
						url: url,
						data:'targetDate=' + dStr + '&dBegin=' + dBegin + '&channel=1&detector='+ detector,
						success: function(jsonData) {
							if(jsonData.length==0){
								$('#'+chartId).append("<span class='clear'>No data available.</span>");
								return;
							}
							
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							chartingPeriod = chartingPeriod.toUpperCase();
//							var chartOptions = (chartingPeriod=="DAILY")? options_multipleSeries : options_multipleSeries_scatter; 
							var chartOptions = options_visibleLine ; 
							///////////////////////////////////////////////////////////////////////////////////////////////////////
							
							//chart goes here
//							var _chartInstance = new Highcharts.Chart($.extend(true, {}, options_singleSeries,{
							var _chartInstance = new Highcharts.Chart($.extend(true, {}, chartOptions,{
								chart : {
//									type : 'line',
									renderTo : chartId,  								
//									defaultSeriesType : 'line',
//									animation: false,
//									plotBorderWidth : 1,
//									plotBorderColor : '#346691', // '#346691',
//									zoomType : 'xy',
								},
								title: {
									text: 'AI 검증 지표',
									align: 'center',
									style:{
										font:'bold 16px NanumGothic'
									}
								},
								subtitle: {
									text: null,
									align: 'center',
									style:{
										font:'normal 13px NanumGothic'
									}
								},
								
								
								yAxis : [ { // Primary yAxis temperature!!!!
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									min: 0,
									max:1,
									tickInterval: 0.25,
									lineWidth:0,
									// max:3,
									// min: -3,
									title: {
										text: 'PC / Bias / POD',
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
								}, { // Secondary yAxis precipitation mm
									///////////////////
									alignTicks: false,
									endOnTick: false,
									///////////////////
									tickColor: '#346691',
									tickLength: 5,
									tickWidth: 1,
									tickPosition: 'outside',
									labels: {
										align: 'right',
										x:-10,
										y:5
									},
									lineWidth:0,
//									tickInterval: 25,
									// max:3,
									// min: -3,
									title: {
										text: 'vam_num / miss / cor_neg',
										style : {
											font:'normal 12px NanumGothic'
										}	
									},
									labels:{
										style : {
											font:'normal 11px NanumGothic'
										},
										formatter: function() { //numberFormat (Number number, [Number decimals], [String decimalPoint], [String thousandsSep])
											return Highcharts.numberFormat(this.value, 0, '.', ',');
										}
									},
									gridLineWidth: 0,
									opposite : true,
//									min : 0
								} ],
								series: [
								         {name: 'PC',	yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'Bias', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'POD', yAxis : 0, type : 'scatter',
								        	 connectNulls:false, data: []}
								         ,{name:'vam_num', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'miss', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ,{name:'cor_neg', yAxis : 1, type : 'line',  gapSize: 1,
								        	 connectNulls:false, data: []}
								         ]
								
							})); //haha
							
							//chart goes here
							
							$.each (Object.keys(jsonData), function(idx,val){
								eachData_PC = [];
								eachData_BIAS = [];
								eachData_POD = [];
								eachData_VAM_NUM = [];
								eachData_MISS = [];
								eachData_COR_NEG = [];
								
								var vrDataObj = jsonData[val];
								
								for (var i = 0; i < vrDataObj.length; i++) {
									var dateString = vrDataObj[i].DSTR;
									sysout(dateString)
									var arr = dateString.split(" ");
									var dStr = arr[0].split("-");
									var tStr = arr[1].split(":");
									var d = Date.UTC(dStr[0],dStr[1]*1-1,dStr[2],tStr[0],tStr[1],tStr[2]);
									eachData_PC.push([d,parseNumericVal(vrDataObj[i].PC)]);
									eachData_BIAS.push([d,parseNumericVal(vrDataObj[i].FAR)]);
									eachData_POD.push([d,parseNumericVal(vrDataObj[i].POD)]);
									eachData_VAM_NUM.push([d,parseNumericVal(vrDataObj[i].VAM_NUM)]);
									eachData_MISS.push([d,parseNumericVal(vrDataObj[i].MISS)]);
									eachData_COR_NEG.push([d,parseNumericVal(vrDataObj[i].COR_NEG)]);
								}
								_chartInstance.series[0].setData(eachData_PC); 
								_chartInstance.series[1].setData(eachData_BIAS); 
								_chartInstance.series[2].setData(eachData_POD); 
								_chartInstance.series[3].setData(eachData_VAM_NUM); 
								_chartInstance.series[4].setData(eachData_MISS); 
								_chartInstance.series[5].setData(eachData_COR_NEG); 
							});
							
							//$('#'+chartId).pleaseWait('stop');	
							//charts.push(_chartInstance);
							map.put(chartId, _chartInstance);
//		 		        	sysout('checked:: ' +chartId);
							systime('addChart_L2_AI()', 'end');
						},
						cache: false,
						
					});	
				}
//=======================================================================================================================================		
//=======================================================================================================================================		
//==== Level 2 Daily Validation End =====================================================================================================
//=======================================================================================================================================		
//=======================================================================================================================================		
					
				
				

		
		
		
		function calcXDaysAgo(currDate, period){
			var dateCalculated = currDate;
			
	 		if(period.toUpperCase()=='DAILY'){
//	 			do nothing
			}else if(period.toUpperCase()=='WEEKLY'){
				dateCalculated = new Date(dateCalculated).add(-7).day(); //date.js
			}else if(period.toUpperCase()=='MONTHLY'){
				dateCalculated = new Date(dateCalculated).add(-1).month();
			}else if(period.toUpperCase()=='QUARTERLY'){
				dateCalculated = new Date(dateCalculated).add(-3).month();
			}else if(period.toUpperCase()=='BIANNUALLY'){
				dateCalculated = new Date(dateCalculated).add(-6).month();
			}
			return dateCalculated;
		}
		
		String.prototype.endsWith = function(suffix) {
	   		return this.indexOf(suffix, this.length - suffix.length) !== -1;
		};
		
	
			
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
		
		
		function placeSomeLabelOnTheChart(chartObj, someTxt, leftPad, topPad, idStr){
			$('#verificationTable').remove();
			text = chartObj.renderer.text(someTxt).add();
			textBBox = text.getBBox();
			x = chartObj.plotLeft +  leftPad ; //- (textBBox.width  * 0.5);
			y = chartObj.plotTop  +  topPad;
			text.attr({x: x, y: y, id:idStr, zIndex:999});
		}
		
		
		var makeSymmDiffFunc = (function() {
		    var contains = function(pred, a, list) {
		        var idx = -1, len = list.length;
		        while (++idx < len) {if (pred(a, list[idx])) {return true;}}
		        return false;
		    };
		    var complement = function(pred, a, b) {
		        return a.filter(function(elem) {return !contains(pred, elem, b);});
		    };
		    return function(pred) {
		        return function(a, b) {
		            return complement(pred, a, b).concat(complement(pred, b, a));
		        };
		    };
		}());
		

		
		