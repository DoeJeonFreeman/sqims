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
    
	<title>기후변화감시자료통합품질관리시스템</title>
	
	<script src="${pageContext.request.contextPath}/js/jquery/jquery-1.9.1.js"></script>	
    <script src="${pageContext.request.contextPath}/resource/js/bootstrap.min.js"></script>
	
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/resource/css/djf.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/resource/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    
    <script type="text/javascript">
	    /**
	     * returns version of IE or false, if browser is not Internet Explorer
	     */
	    function detectIE() {
	        var ua = window.navigator.userAgent;
	        var msie = ua.indexOf('MSIE ');
	        if (msie > 0) {
	            // IE 10 or older => return version number
	            return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
	        }
	
 			var trident = ua.indexOf('Trident/');
	        if (trident > 0) {
	            // IE 11 => return version number
	            var rv = ua.indexOf('rv:');
	            return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
	        }
	
	        var edge = ua.indexOf('Edge/');
	        if (edge > 0) {
	           // IE 12 => return version number
	           return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
	        }
	        
	        // other browser
	        return false;
	    }
	    
	    var isIE = detectIE();
	    if(isIE!=false && isIE<8){
		    //alert('IE ' + isIE);
		    document.location.href='${pageContext.request.contextPath}/mePageLink.do?link=cmm/error/unsupported';
	    }else{
		    //alert('Other browser haha');
	    }
    </script>
    
	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
    
</head>



<body>
	<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->


	<!-- navTop-->
	<div id="meHeader">
	    <c:import url="/mePageLink.do?link=main/inc/meNavTop" />
	</div>
	
	
    <!-- Header -->
    <header class="meBGCover">
        <div class="container" style="min-height: 665px; height: 665px;">
            <div class="intro-text">
                <div class="col-md-12 col-md-offset-0">
            		<div class="intro-heading text-left visible-lg visible-md">&nbsp; </div>
                	<div class="col-md-5 visible-lg visible-md visible-sm">
	            		<div class="intro-heading text-left"> </div>
    	        		<h4 class="text-left" style="white-space: nowrap;"> </h4>
                	</div>
                	
                	
                	<div class="col-md-7">
	                	<div class="">
	                	
	                	<!-- 
	                		<iframe style="border:0 none;"	 
	                			 width="850" height="500"
	                			 src="http://2csolution.iptime.org:2131/seaice/et/coms/obs.do"> 이 브라우저는 iframe을 지원하지 않습니다.</iframe>
	                	-->
	                	 
							<!-- 
							<div align="center" class=""> 
								<div><h4 style="white-space: nowrap;"></h4></div>
								<p>${mostRecentStuff.compbegindate4View}</p>
							</div>
							<p  align="center">
								<span class="mePopup">
									<a href='${pageContext.request.contextPath}/arctic/spatialDistribution.do'>
										<img 
										    src="${pageContext.request.contextPath}/resource/assets/bg/SAT_COMS.png" 
											alt="">
									</a>	
								</span>	
							</p>
							 -->
							 
							<!--
		                 	<a class="btn btn-link-2" href="#">
		                  		<i class="">해빙분포보기</i>
		                 	</a>
							-->
						</div>
                	</div>
                </div>
                	<p>&nbsp;</p>
                	<p>&nbsp;</p>
                	<p>&nbsp;</p>
                	<p>&nbsp;</p>
            </div>

        </div>
    </header>
    

    <!-- Page Content -->
    <div class="container">


   </div>
   <!-- /.container -->
	
	
<div style="background-color: #f3f3f4; padding-bottom: 15px;"><!-- background-color: #f3f3f4; -->
	<div class="container">
		 	<section id="footer-useful-links"  class="col-md-5">
            	<h5 class="section-title"><i class="fa fa-list-ul fa-fw"></i>Notice</h5>
           		<ul class="nav">
					<c:forEach var="result" items="${notices}" varStatus="status">
                    <li>
                    	<span class="text-left">
                          <a class="" href="${pageContext.request.contextPath}/bbs/list?boardCd=notice&curPage=1" >
                            <c:choose>
                                <c:when test="${result.title!=null }">
                                	<img src="${pageContext.request.contextPath}/assets/btn_skin_notice.png"/>
                                    <c:out value="${fn:escapeXml(result.title)}" /> 
                                </c:when>
                                <c:otherwise>
                                    <c:out value="${fn:escapeXml(result.title)}" />
                                </c:otherwise>
                            </c:choose>
                          </a>
                        </span>
                        <span class="" style="float:right"><c:out value="${result.regdateForList}"/></span>
                    </li>
                    </c:forEach>
				</ul>
            </section>
            
           	 <section id="footer-useful-links" class="col-md-2">
	            <h5 class="section-title"><i class="fa fa-envelope fa-fw"></i>Contact Us</h5>
	            <ul class="nav">
	              <li><a href="">nims_sqims@korea.kr</a></li>
	            </ul>
	          </section>
	
	          <section id="footer-other" class="col-md-5">
	
	            <h5 class="section-title"><i class="fa fa-link fa-fw"></i>Links</h5>
	            <ul class="list-inline" style="padding-top:10px; padding-left:15px; line-height: 40px; ">
	              <li style="padding-right:20px;"><a href="http://kma.go.kr" target="_blank"><img src="${pageContext.request.contextPath}/resource/assets/ci/banner_kma_kr_en.png" alt="KMA CI"  /></a></li>
	              <!-- 
	              <li><a href="http://nmsc.kma.go.kr" target="_blank"><img src="${pageContext.request.contextPath}/resource/assets/ci/nmsc_ci_creGothicB_sm.png" alt="NMSC CI" width="181"/></a></li>
	               -->
	              <li><a href="http://nims.go.kr" target="_blank"><img src="${pageContext.request.contextPath}/resource/assets/ci/banner_nims_kr_en.png" alt="NIMS CI" /></a></li>
	            </ul>
	          </section>
          </div>
	</div>	
	
	
    <!-- Footer -->
	<div id="meFooter">
		<c:import url="/mePageLink.do?link=main/inc/meFooter" />
	</div>

	
	<!-- jQuery 
    <script src="<c:url value="/resource/js/jquery.js"/>"></script>
	-->

    <!-- Bootstrap Core JavaScript 
    <script src="<c:url value="/resource/js/bootstrap.min.js"/>"></script>
    -->
    
    <!-- auto hiding navbar -->
    <!-- Script to Activate the Carousel and AutoHidingNavbar -->

    <!-- Dropdown Menu Fade -->
    <!-- Dropdown Menu Fade -->
    <!-- Dropdown Menu Fade -->
    <!-- Dropdown Menu Fade -->
	<script>
		// Dropdown Menu Fade    
		/* 
		 imready(function(){
		    $(".dropdown").hover(
		        function() { $('.dropdown-menu', this).stop().fadeIn("fast");
		        },
		        function() { $('.dropdown-menu', this).stop().fadeOut("fast");
		    });
		}); */
	</script>
	
</body>
</html>

