<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<!-- Include Fancytree skin and library -->
	<!--os x 7 
	<link href="${pageContext.request.contextPath}/js/fancytree/skin-lion/ui.fancytree.min.css" rel="stylesheet">
	 -->
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree-all.min.js"></script>	
	<link href="${pageContext.request.contextPath}/js/fancytree/skin-bootstrap/ui.fancytree.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree.glyph.js"></script>	
	<script src="${pageContext.request.contextPath}/js/fancytree/jquery.fancytree.wide.js"></script>	
	<!-- 
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
	</style>
	<script type="text/javascript">
	
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
//		      folder: "glyphicon glyphicon-folder-close",
		      folder: "fa fa-folder-o",
		      folderOpen: "glyphicon glyphicon-folder-open",
		      loading: "glyphicon glyphicon-refresh glyphicon-spin"
		    }
	  	};
	
	
		$(function(){
			
			  var treeData = [
			                  {title: "Level1A 품질지표", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Visible SNR", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 0", key: "L1A-QI01_0" },
			                          {title: "Detector 1", key: "L1A-QI01_1" },
			                          {title: "Detector 2", key: "L1A-QI01_2" },
			                          {title: "Detector 3", key: "L1A-QI01_3" },
			                          {title: "Detector 4", key: "L1A-QI01_4" },
			                          {title: "Detector 5", key: "L1A-QI01_5" },
			                          {title: "Detector 6", key: "L1A-QI01_6" },
			                          {title: "Detector 7", key: "L1A-QI01_7" }
			                        ]
			                      },
			                      {title: "Visible Radiance", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 0", key: "L1A-QI02_0" },
			                          {title: "Detector 1", key: "L1A-QI02_1" },
			                          {title: "Detector 2", key: "L1A-QI02_2" },
			                          {title: "Detector 3", key: "L1A-QI02_3" },
			                          {title: "Detector 4", key: "L1A-QI02_4" },
			                          {title: "Detector 5", key: "L1A-QI02_5" },
			                          {title: "Detector 6", key: "L1A-QI02_6" },
			                          {title: "Detector 7", key: "L1A-QI02_7" }
			                        ]
			                      },
			                      {title: "Visible PRNU", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 0", key: "L1A-QI03_0" },
			                          {title: "Detector 1", key: "L1A-QI03_1" },
			                          {title: "Detector 2", key: "L1A-QI03_2" },
			                          {title: "Detector 3", key: "L1A-QI03_3" },
			                          {title: "Detector 4", key: "L1A-QI03_4" },
			                          {title: "Detector 5", key: "L1A-QI03_5" },
			                          {title: "Detector 6", key: "L1A-QI03_6" },
			                          {title: "Detector 7", key: "L1A-QI03_7" }
			                        ]
			                      },
			                      {title: "IR Radiance", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 0", key: "L1A-QI04_0" },
			                          {title: "Detector 1", key: "L1A-QI04_1" }
			                        ]
			                      },
			                      {title: "IR PRNU", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 0", key: "L1A-QI05_0" },
			                          {title: "Detector 1", key: "L1A-QI05_1" }
			                        ]
			                      },
			                      {title: "Visible PRNU", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Detector 0", key: "L1A-QI06_0" },
			                          {title: "Detector 1", key: "L1A-QI06_1" }
			                        ]
			                      },
			                    ]
			                  },
			                  {title: "Level1B 환경정보", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "E-W Servo current", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "current", key: "current_01_id" },
			                        ]
			                      },
			                      {title: "Spacecraft Attitude", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "attitude", key: "l1b_sp_att_v01_id" },
			                          {title: "attitude(deg)", key: "l1b_v02_id" }
			                        ]
			                      }
			                    ]
			                  }
			                 
			                ];
			
	   		
		    $(".treeWithCheckbox2").fancytree({
		    	 extensions: ["glyph", "wide"],
		    	 checkbox: true,
		         debugLevel: 0, // 0:quiet, 1:normal, 2:debug
		         selectMode: 2,   // 1:single, 2:multi, 3:multi-hier
		         clickFolderMode: 2, // 1:activate, 2:expand, 3:activate and expand, 4:activate (dblclick expands)
		         //activeVisible: true, // Make sure, active nodes are visible (expanded).
		         glyph: glyph_opts,
		         wide: {
		           iconWidth: "5px",     // Adjust this if @fancy-icon-width != "16px"
		           iconSpacing: "10px", // Adjust this if @fancy-icon-spacing != "3px"
		           levelOfs: "18px"     // Adjust this if ul padding != "16px"
		         }, 
		         source: treeData,
//		         source: {url: "QIMSMenus.json", debugDelay: 1000},
//				 lazyLoad: function(event, data) {
//			        data.result = {url: "ajax-QIMSMenus.json", debugDelay: 1000};
//			     }

		         select: function(event, data) {
		           // Display list of selected nodes
		           var selNodes = data.tree.getSelectedNodes();
		           sysout(selNodes);
		           // convert to title/key array
		           var selKeys = $.map(selNodes, function(node){
		        	   sysout("[" + node.key + "]: '" + node.title + "'");
		                return "[" + node.key + "]: '" + node.title + "'";
		             });
		           sysout('==varSelected========================================================');
		           //sysout(selkeys);
		         },
		         click: function(event, data) {
		           // We should not toggle, if target was "checkbox", because this
		           // would result in double-toggle (i.e. no toggle)
		           if( $.ui.fancytree.getEventTargetType(event) === "title" ){
		             data.node.toggleSelected();
		           }
		         },
		         keydown: function(event, data) {
		           if( event.which === 32 ) {
		             data.node.toggleSelected();
		             return false;
		           }
		         },
		         // The following options are only required, if we have more than one tree on one page:
		         cookieId: "fancytree-Cb2",
		         idPrefix: "fancytree-Cb2-"
		    });
		    
		    $(".btnDeselectAll").click(function(){
		        $(".treeWithCheckbox2").fancytree("getTree").visit(function(node){
		          node.setSelected(false);
		        });
		        return false;
		      });
		      $(".btnToggleExpand").click(function(){
		    	$(".treeWithCheckbox2").fancytree("getRootNode").visit(function(node){
		    	        node.toggleExpanded();
    	        });
		        return false;
		      });
		      
	 	});
	</script>
	
	<!-- Define where the tree should appear -->
	
	<p>
	    <a href="#" class="btnDeselectAll">Deselect all</a> -
	    <a href="#" class="btnToggleExpand">Toggle Expand</a>
	  </p>
	  <div class="treeWithCheckbox2"></div>
