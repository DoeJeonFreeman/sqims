//
//    2016-11-01
//
"use strict";

/*-------------------------------------------
	Doe Jeon Freeman
---------------------------------------------*/

var	glyph_opts = {
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
	      folderOpen: "glyphicon glyphicon-folder-open",
	      loading: "glyphicon glyphicon-refresh glyphicon-spin"
	    } 
       /*  map: {
            doc: "", //fa fa-file-o
            docOpen: "", //fa fa-file-o
            checkbox: "fa fa-square-o",
            checkboxSelected: "fa fa-check-square-o",
            checkboxUnknown: "fa fa-square",
            dragHelper: "fa fa-arrow-right",
            dropMarker: "fa fa-long-arrow-right",
            error: "fa fa-warning",
            expanderClosed: "fa fa-caret-right",
            expanderLazy: "fa fa-angle-right",
            expanderOpen: "fa fa-caret-down",
            folder: "fa fa-folder-o",
            folderOpen: "fa fa-folder-open-o",
            loading: "fa fa-spinner fa-pulse"
         } */
  	};	


	$(document).ready(function () {	
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
		
   		
	    $("#treeWithCheckbox").fancytree({
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
//	         source: {url: "QIMSMenus.json", debugDelay: 1000},
//			 lazyLoad: function(event, data) {
//		        data.result = {url: "ajax-QIMSMenus.json", debugDelay: 1000};
//		     }

	         select: function(event, data) {
	           // Display list of selected nodes
	           var selNodes = data.tree.getSelectedNodes();
	           // convert to title/key array
	           var selKeys = $.map(selNodes, function(node){
	                return "[" + node.key + "]: '" + node.title + "'";
	             });
	           $("#echoSelection2").text(selKeys.join(", "));
	           
	           treeSelected = selKeys;
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
	    
	  
	      $("#btnDeselectAll").click(function(){
	        $("#treeWithCheckbox").fancytree("getTree").visit(function(node){
	          node.setSelected(false);
	        });
	        return false;
	      });
	      $("#btnToggleExpand").click(function(){
	    	$("#treeWithCheckbox").fancytree("getRootNode").visit(function(node){
	    	        node.toggleExpanded();
	        });
	        return false;
	      });
	      
	      $("#fxxkMe").click(function(){
//	    	  $("#treeWithCheckbox").fancytree("getTree").activateKey("l1a_vsnr_det01_id");
	    	  //$("#treeWithCheckbox").fancytree("getTree").getNodeByKey("l1a_vsnr_det01_id").setActive();
	    	  //$("#treeWithCheckbox").fancytree("getTree").getNodeByKey("l1a_vsnr_det01_id").setSelected(true);
	          // also possible:
//	          $("#tree").fancytree("getTree").getNodeByKey("l1a_vsnr_det01_id").setActive();  
	    	  
	    	     /* var selKeys = $.map(data.tree.getSelectedNodes(), function(node){
		          return node.key;
		        });
	    	    sysout(selKeys); */
	    	    var selNodes = $("#treeWithCheckbox").fancytree("getTree").getSelectedNodes();
	    	    sysout(selNodes);
				var selKeys = $.map(selNodes, function(node){
					return "[" + node.key + "]: '" + node.title + "'";
				});
				var meSelKeys = $.map(selNodes, function(node){
					return node.key;
				});
				sysout(meSelKeys);
				//alert($("#echoSelection2").text(selKeys.join(", "))); 
	    	  
	        return false;
	      });
 	});



