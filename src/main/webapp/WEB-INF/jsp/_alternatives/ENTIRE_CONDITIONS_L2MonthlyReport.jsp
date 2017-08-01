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
			                          {title: "report 0", key: "AI Monthly Report",  mePath:"coms_mi_ai_zzz_m_d00000_cn", meAbbreviation:"AI" }
			                    ]
			                  },
			                  {title: "운량 (CA)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                          {title: "report 1", key: "CA Monthly Report" , mePath:"coms_mi_ca_zzz_m_d00000_cn", meAbbreviation:"CA" }
		                       ]
			                  },
			                  {title: "안개 (FOG)", folder: true, hideCheckbox:true, expanded: true,
			                    children: [
			                          {title: "report 2", key: "FOG Monthly Report" ,mePath:"coms_mi_fog_zzz_m_d00000_cn", meAbbreviation:"FOG" }
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
		         selectMode: 2, // 1:single, 2:multi, 3:multi-hier
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
					 if( ! item.node.folder ){
						var recentStuffArr = $("#meNMSCDemo").val().split('-');
						var filePath = item.node.data.mePath + '_' + recentStuffArr[0] + recentStuffArr[1] + '01.docx'; 
						$.ajax({
							type: 'GET',
							dataType:'text',
							url: 'async/report/lvl_2/monthly.do',
							data:'path=' + filePath,
					        success: function(reportHtmlText) {
					        	if(reportHtmlText.length!=0){
//									doPostMonthlyValidationImageOnTheWall(targetTab, item.node.data.mePath + '_' + recentStuffArr[0] + recentStuffArr[1],reportHtmlText);
									$(targetTab).html('');
					        		if(reportHtmlText!='No Report available.')$(targetTab).append("<a href='monthlyReport/"+ filePath +"'>"+filePath+ "</a>");
					        		$(targetTab).append(reportHtmlText);
					        	}
					        }
						});
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
	 	});
	</script>
	
	<!-- Define where the tree should appear -->
	  <p style="padding-left:12px; font-size: 13px;">
	    <a href="#" id="btnExpandAll_<c:out value='${param.identifier}'/>">Expand all</a> - 
	    <a href="#" id="btnCollapseAll_<c:out value='${param.identifier}'/>">Collapse all</a>
	  </p>
	
	  <div id="treeWithCheckbox_<c:out value="${param.identifier}"/>" style="padding-left:7px;"></div>
