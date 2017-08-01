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
			                  {title: "황사 탐지 (AI)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Scatter Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare-MODIS", key: "AI_Scatter-Plot_Compare-MODIS", mePath:"coms_mi_ai_zzz_m_f32900_cn", meAbbreviation:"AI" },
			                          {title: "Compare OMI", key: "AI_Scatter-Plot_Compare-OMI", 	 mePath:"coms_mi_ai_zzz_m_f32910_cn", meAbbreviation:"AI"  }
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare-MODIS", key: "AI_Daily-Trend_Compare-MODIS", mePath:"coms_mi_ai_zzz_m_f42300_cn", meAbbreviation:"AI"  },
			                          {title: "Compare OMI", key: "AI_Daily-Trend_Compare-OMI" , 	mePath:"coms_mi_ai_zzz_m_f42310_cn", meAbbreviation:"AI" }
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare-MODIS", key: "AI_Monthly-Trend_Compare-MODIS", mePath:"coms_mi_ai_zzz_y_f42300_cn", meAbbreviation:"AI"  },
			                          {title: "Compare OMI", key: "AI_Monthly-Trend_Compare-OMI" , 	  mePath:"coms_mi_ai_zzz_y_f42310_cn", meAbbreviation:"AI" }
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "운량 (CA)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Statiscal Map", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "CA_Statistical-Map_Compare-GTS", 	   mePath:"coms_mi_ca_zzz_m_f10200_cn", meAbbreviation:"CA"  },
			                          {title: "Compare Ground", key: "CA_Statistical-Map_Compare-Ground" , mePath:"coms_mi_ca_zzz_m_f10210_cn", meAbbreviation:"CA" }
			                        ]
			                      },
			                      {title: "Density Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "CA_Density-Plot_Compare-GTS" , 		mePath:"coms_mi_ca_zzz_m_f20000_cn" , meAbbreviation:"CA"},
			                          {title: "Compare Ground", key: "CA_Density-Plot_Compare-Ground" , mePath:"coms_mi_ca_zzz_m_f20010_cn" , meAbbreviation:"CA"}
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "CA_Daily-Trend_Compare-GTS" , 	   mePath:"coms_mi_ca_zzz_m_f42000_cn" , meAbbreviation:"CA"},
			                          {title: "Compare Ground", key: "CA_Daily-Trend_Compare-Ground" , mePath:"coms_mi_ca_zzz_m_f42010_cn" , meAbbreviation:"CA"}
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "CA_Monthly-Trend_Compare-GTS" , 		 mePath:"coms_mi_ca_zzz_y_f42000_cn" , meAbbreviation:"CA"},
			                          {title: "Compare Ground", key: "CA_Monthly-Trend_Compare-Ground" , mePath:"coms_mi_ca_zzz_y_f42010_cn" , meAbbreviation:"CA"}
			                        ]
			                      }
			                    ]
			                  },
			                  {title: "안개 (FOG)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                      {title: "Statiscal Map", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "FOG_Statistical-Map_Compare-GTS", 		mePath:"coms_mi_fog_zzz_m_f11600_cn" , meAbbreviation:"FOG"},
			                          {title: "Compare Ground", key: "FOG_Statistical-Map_Compare-Ground" , mePath:"coms_mi_fog_zzz_m_f11610_cn" , meAbbreviation:"FOG"}
			                        ]
			                      },
			                      {title: "Density Plot", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "FOG_Density-Plot_Compare-GTS" , 		 mePath:"coms_mi_fog_zzz_m_f32900_cn" , meAbbreviation:"FOG"},
			                          {title: "Compare Ground", key: "FOG_Density-Plot_Compare-Ground" , mePath:"coms_mi_fog_zzz_m_f32910_cn" , meAbbreviation:"FOG"}
			                        ]
			                      },
			                      {title: "Daily Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "FOG_Daily-Trend_Compare-GTS", 		mePath:"coms_mi_fog_zzz_m_f42500_cn" , meAbbreviation:"FOG"},
			                          {title: "Compare Ground", key: "FOG_Daily-Trend_Compare-Ground" , mePath:"coms_mi_fog_zzz_m_f42510_cn" , meAbbreviation:"FOG"}
			                        ]
			                      },
			                      {title: "Monthly Trend", folder: true, hideCheckbox:true,
			                        children: [
			                          {title: "Compare GTS", key: "FOG_Monthly-Trend_Compare-GTS" , 	  mePath:"coms_mi_fog_zzz_y_f42500_cn" , meAbbreviation:"FOG"},
			                          {title: "Compare Ground", key: "FOG_Monthly-Trend_Compare-Ground" , mePath:"coms_mi_fog_zzz_y_f42510_cn" , meAbbreviation:"FOG"}
			                        ]
			                      }
			                    ]
			                  }
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
		    	 //checkbox: true,
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
				
		         select: function(event, data) {
		           // Display list of selected nodes
		           var selNodes = data.tree.getSelectedNodes();
		           sysout(selNodes);
		           // convert to title/key array
		           var selKeys = $.map(selNodes, function(node){
		        	   sysout("[" + node.key + "]: '" + node.title + "'");
		                return "[" + node.key + "]: '" + node.title + "'";
		             });
		          // $(".echoSelection2").text(selKeys.join(", "));
		           sysout('==varSelected========================================================');
		           sysout(selKeys.join(",\n"));
		         },
		        /*  click: function(event, data) {
		             if( ! data.node.folder ){
		               data.node.toggleSelected();
		             }
		         }, */
		         
//		         dblclick: function(event, item) {
		         click: function(event, item) {
		             //data.node.toggleSelected();
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
		    	    //alert("#TSCWrapper<c:out value='${param.identifier}'/>" + ".close-window event");
					e.preventDefault();
					var tabIndex = $("#tabs").tabs('option', 'active') ;
					var cbName = $(this).closest('div.meDraggableItem').attr('id'); 
					//alert('[captured] '+cbName);
					$('#'+cbName).remove(); //remove chartWrapperHTML
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
