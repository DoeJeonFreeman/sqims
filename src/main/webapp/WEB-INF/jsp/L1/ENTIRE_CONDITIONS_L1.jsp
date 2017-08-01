<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<!-- Include Fancytree skin and library -->
	<!--os x.7 
	<link href="${pageContext.request.contextPath}/js/fancytree/skin-bootstrap/ui.fancytree.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/js/fancytree/skin-lion/ui.fancytree.min.css" rel="stylesheet">
	 -->
	<link href="${pageContext.request.contextPath}/js/fancytree/skin-xp/ui.fancytree.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree-all.min.js"></script>	
	<!-- 
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree.glyph.js"></script>	
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree.wide.js"></script>	
	 -->
	<!-- Initialize the tree when page is loaded -->
	
	<style>
		ul.fancytree-container{
			font-size: 13px;
		}
		
		ul.fancytree-container {
	    	background-color: transparent;
   			border: none;
		}
		
	    .fancytree-selected span.fancytree-title {
		    color: #555555;
		    font-style: italic;
		}
	</style>
	<script type="text/javascript">
		

/* 		
 * 		it doesnt work
 		function getSelectedVarialbes(idx){
//			 var selNodes = $("#treeWithCheckbox_" +idx ).fancytree("getTree").getSelectedNodes();
			 var selNodes = $("#treeWithCheckbox_" +idx ).fancytree("getSelectedNodes");
			 var meKeys = $.map(selNodes, function(node){
				return node.key;
			});
			sysout('==[begin]========getSelectedVarialbes(idx)==========================//'); 
			sysout(meKeys); 
			sysout('==[end]==========getSelectedVarialbes(idx)===========================//'); 
			return meKeys;
		}
 */
	
	 	var glyph_opts = {
		    map: {
		      doc: "",
		      docOpen: "",
		      checkbox: "glyphicon glyphicon-unchecked",
		      checkboxSelected: "glyphicon glyphicon-check",
		      checkboxUnknown: "glyphicon glyphicon-share",
		      dragHelper: "glyphicon glyphicon-play",
		      dropMarker: "glyphicon glyphicon-arrow-right",
		      error: "glyphicon glyphicon-warning-sign",
		      expanderClosed: "glyphicon glyphicon-menu-right",
		      expanderLazy: "glyphicon glyphicon-menu-right",  // glyphicon-plus-sign
		      expanderOpen: "glyphicon glyphicon-menu-down",  // glyphicon-collapse-down
		      folder: "glyphicon glyphicon-folder-close",
//		      folder: "fa fa-folder-o",
		      folderOpen: "glyphicon glyphicon-folder-open",
		      loading: "glyphicon glyphicon-refresh glyphicon-spin"
		    }
	  	};
	
	
		$(function(){
			
			var treeData = [
			              /*     {title: "Level 0", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			              
			                      {title: "CRDS", folder: true, hideCheckbox:true, expanded: true,
			                        children: [
			                          {title: "CO", key: "L1-CRDS_CO" },
			                          {title: "CO<sub>2</sub>", key: "L1-CRDS_CO2" },
			                          {title: "CH<sub>4</sub>", key: "L1-CRDS_CH4" },
			                          {title: "H<sub>2</sub>O", key: "L1-CRDS_H2O" }
			                        ]
			                      }
			                    ]
			                  } */ 
			                  {title: "Level 1", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			              
			                      {title: "Nephelometer", folder: true, hideCheckbox:true, expanded: true,
			                        children: [
			                          {title: "SC 450 STD",  key: "L1-NEPHELO_SC450-STD" },
			                          {title: "SC 550 STD",  key: "L1-NEPHELO_SC550-STD" },
			                          {title: "SC 700 STD",  key: "L1-NEPHELO_SC700-STD" },
			                          {title: "BSC 450 STD", key: "L1-NEPHELO_BSC450-STD" },
			                          {title: "BSC 550 STD", key: "L1-NEPHELO_BSC550-STD" },
			                          {title: "BSC 700 STD", key: "L1-NEPHELO_BSC700-STD" }
			                        ]
			                      }
			                    ]
			                  } 
			                  /* 
			                  ,{title: "Level 1", folder: true, hideCheckbox:true, expanded: false}
			                  ,{title: "Level 2", folder: true, hideCheckbox:true, expanded: false}
			                  */
			                ];
			
	   		
		    $("#treeWithCheckbox_<c:out value="${param.identifier}"/>").fancytree({
		    	 //extensions: ["glyph", "wide"],
		         //glyph: glyph_opts,
		         //wide: {
		         //  iconWidth: "5px",     // Adjust this if @fancy-icon-width != "16px"
		         //  iconSpacing: "10px", // Adjust this if @fancy-icon-spacing != "3px"
		         //  levelOfs: "18px"     // Adjust this if ul padding != "16px"
		         //}, 
		    	 connectors:true,
		    	 checkbox: true,
		         debugLevel: 0, // 0:quiet, 1:normal, 2:debug
		         selectMode: 2,   // 1:single, 2:multi, 3:multi-hier
		         clickFolderMode: 2, // 1:activate, 2:expand, 3:activate and expand, 4:activate (dblclick expands)
		         //activeVisible: true, // Make sure, active nodes are visible (expanded).
		         source: treeData,
//		         source: {url: "QIMSMenus.json", debugDelay: 1000},
//				 lazyLoad: function(event, data) {
//			        data.result = {url: "ajax-QIMSMenus.json", debugDelay: 1000};
//			     }

				 beforeSelect: function(event, data) {
			        if( data.node.folder ){
			          return false;
			        }
			     },	
				
		         select: function(event, item) {
		        	 var idx = $("#tabs").tabs('option', 'active');
					 var targetTab = '#TSCWrapper' + "<c:out value='${param.identifier}'/>";
					 var selected = [];
					 if( ! item.node.folder ){
						//doPostMonthlyValidationImageOnTheWall(targetTab, selected,$("#meNMSCDemo").val());
						sysout(item);
						
						if (item.node.selected){
							

						    selected.push(item.node.key);
							
							drawTimeseries(targetTab, selected,$("#meNMSCDemo").val());
							sysout('[map.keys().length after drawTimesereis() ] ' + map.size());
							$.each( map.keys(), function( i, key){
								sysout(i +' : '+ key)
							}); 		
									
						}else{
							var idx = 't' + "<c:out value='${param.identifier}'/>" + '_';
							var targetTab = '#TSCWrapper' + idx;
							
							$('#' + idx + item.node.key).remove();
							var chartId4map = idx+  'ts_'+item.node.key;
							map.remove(chartId4map);
							sysout("unchecked.remove() " + idx + item.node.key);
							sysout('==> remove [' + chartId4map + '] from maps');
							$.each( map.keys(), function( i, key){
								sysout(i +' : '+ key)
							}); 
						} 
						WinMove(); 
					 }
					 
/* 		           // Display list of selected nodes
		           var selNodes = data.tree.getSelectedNodes();
		           sysout(selNodes);
		           // convert to title/key array
		           var selKeys = $.map(selNodes, function(node){
		        	   sysout("[" + node.key + "]: '" + node.title + "'");
		                return "[" + node.key + "]: '" + node.title + "'";
		             });
		          // $(".echoSelection2").text(selKeys.join(", "));
		           sysout('==varSelected========================================================');
		           sysout(selKeys.join(",\n")); */
		         },
		         click: function(event, data) {
		             if( ! data.node.folder ){
		               data.node.toggleSelected();
		             }
		         }, 
		        /*  
		         dblclick: function(event, item) {
		        	 var idx = $("#tabs").tabs('option', 'active');
					 var targetTab = '#TSCWrapper' + idx;
					 var selected = [];
//					 selected.push(item.node.key);
					 selected.push(item);
					 //alert(targetTab + " [" + data.node.key + "]: '" + data.node.title + "'");
					 //alert('path:' + item.node.data.mePath);
					 if( ! item.node.folder ){
						doPostMonthlyValidationImageOnTheWall(targetTab, selected,$("#meNMSCDemo").val());
					 }
		         }, 
		          */
		         keydown: function(event, data) {
		           if( event.which === 32 ) {
		             data.node.toggleSelected();
		             return false;
		           }
		         },
		         // The following options are only required, if we have more than one tree on one page:
		         //cookieId: "fancytree-Cb2",
		         //idPrefix: "fancytree-Cb2-"
		    });
		    
		  
		      $("#btnDeselectAll_<c:out value='${param.identifier}'/>").click(function(){
		        $("#treeWithCheckbox_<c:out value="${param.identifier}"/>").fancytree("getTree").visit(function(node){
		          node.setSelected(false);
		        });
		        return false;
		      });
		      $("#btnExpandAll_<c:out value='${param.identifier}'/>").click(function(){
		    	$("#treeWithCheckbox_<c:out value='${param.identifier}'/>").fancytree("getRootNode").visit(function(node){
		    	        //node.toggleExpanded();
		    		 node.setExpanded(true);
    	        });
		        return false;
		      });
		      $("#btnCollapseAll_<c:out value='${param.identifier}'/>").click(function(){
		    	$("#treeWithCheckbox_<c:out value='${param.identifier}'/>").fancytree("getRootNode").visit(function(node){
			    	node.setExpanded(false);
		    	        //node.toggleExpanded();
    	        });
		        return false;
		      });
		      
		      
		      
		  	$("#TSCWrapper<c:out value='${param.identifier}'/>").on('click', '.close-window', function (e) {
				e.preventDefault();
				
				var tabIndex = $("#tabs").tabs('option', 'active') ;
				var cbName = $(this).closest('div.meDraggableItem').attr('id'); 
				sysout('[captured] '+cbName);
				
				//substitute fancytree for checkboxes 2016.12.05.
				//substitute fancytree for checkboxes 2016.12.05.
				//$("#OPT_"+tabIndex +" input[name='" + cbName.substr(cbName.indexOf("_")+1) + "']").prop('checked',false); //	or .removeAttr('checked');
				var key = cbName.substr(cbName.indexOf("_")+1);
				sysout('[key] '+key);
//				$("#OPT_"+tabIndex).fancytree("getTree").getNodeByKey(key).setActive(false);
				$("#treeWithCheckbox_<c:out value="${param.identifier}"/>").fancytree("getTree").getNodeByKey(key).setSelected(false);
				$('#'+cbName).remove(); //remove chartWrapperHTML
				
				var leadingStr = 't' + tabIndex + '_ts_';
				map.remove(leadingStr  + cbName.substr(cbName.indexOf("_")+1)); //remove chart from maps 
				sysout("#OPT_"+tabIndex +" input[name='" + cbName.substr(cbName.indexOf("_")+1) + "']")
				sysout("==>close-window.remove() " + cbName); 
				sysout("====>cb.removeAttr(checked) "   + cbName.substr(cbName.indexOf("_")+1) ); 
				sysout('======> remove [' +leadingStr  + cbName.substr(cbName.indexOf("_")+1) + '] from maps'); 
				sysout(map);
			});
		      
		      
	 	});
	</script>
	
	<!-- Define where the tree should appear -->
	<!-- 
      <h5><a href="#" id="logger_<c out value='${param.identifier}'/>">haha</a></h5>
	 -->
	  <p style="padding-left:12px; font-size: 13px;">
	    <a href="#" id="btnDeselectAll_<c:out value='${param.identifier}'/>">Deselect all</a> -
	    <a href="#" id="btnExpandAll_<c:out value='${param.identifier}'/>">Expand all</a> - 
	    <a href="#" id="btnCollapseAll_<c:out value='${param.identifier}'/>">Collapse all</a>
	  </p>
	  <!-- 
	  <div>Selected keys: <span class="echoSelection2">-</span></div>
    identifier
	   -->
	
	  <div id="treeWithCheckbox_<c:out value="${param.identifier}"/>" style="padding-left:7px;"></div>
