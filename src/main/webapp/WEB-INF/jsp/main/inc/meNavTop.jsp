<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/html5shiv.js"></script>	
    <script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
<![endif]-->



<script type="text/javascript">

    function fn_main_headPageMove(menuNo, url){
	    document.selectOne.menuNo.value=menuNo;
	    document.selectOne.link.value=url;
	    document.selectOne.action = "${pageContext.request.contextPath}/pageLink.do";
	    //alert(document.selectOne.action);
	    document.selectOne.submit();
    }
    
    function fn_main_headPageMove_bbs(url){
        document.selectOne.action = "${pageContext.request.contextPath}/"+url;
        document.selectOne.method = "get";
	    document.selectOne.submit();
    }
    
    function fn_main_headPageAction(menuNo, url){
        document.selectOne.menuNo.value=menuNo;
        document.selectOne.link.value="";
        document.selectOne.action = "${pageContext.request.contextPath}/"+url;
        document.selectOne.method = "post";
        //alert(document.selectOne.action);
        document.selectOne.submit();
    }
    
</script>

<form name="selectOne" action="#LINK">
	<input name="menuNo" type="hidden" />
	<input name="link" type="hidden" />
</form>

  <!-- toolbar top -->
<div class="me-toolbar">
  
    <div class="container">
        	
		    <div class="text-right">
         		<div class="col-md-24">
            		<ul class="list-inline">
            		
	            		<security:authorize access="hasAnyRole('ROLE_USER','ROLE_ADMIN')">
							<security:authentication property="principal.username" var="check" />
						</security:authorize>
            		
            			<!-- 
            			<li>
            				<a onclick="javascript:fn_main_headPageMove('8318','cmm/sitemap')"><i class="fa fa-sitemap fa-fw"></i> Site map </a>
            			</li>
					-->	
              			<c:choose>
							<c:when test="${empty check}">
								<!-- 
								 -->
	              					<li><a href="${pageContext.request.contextPath}/auth/path/to/somewhere.do"><i class="fa fa-sign-in fa-fw"></i> Administration</a></li>
              				</c:when>	
		    				<c:otherwise>
		    				
						        <li><a onclick=""><i class="fa fa-cog fa-spin"></i> "${check}" 님</a> 관리자로 로그인하셨습니다.</li>
						        <li><a href="${pageContext.request.contextPath}/j_spring_security_logout"><i class="fa fa-sign-out fa-fw"></i> Log out</a></li>
		    				</c:otherwise>
		    			</c:choose>	
                    </ul>
          		</div>
      	 	 </div>
      	 	 
	         <div class="hidden-xs vcenter">
	           	<a href="${pageContext.request.contextPath}/common/mainView.do" id="arcticSysTitle" style="color:#555555 ;font-size:16px; font-weight:bold; text-decoration:none;">
	           		<img src="${pageContext.request.contextPath}/resource/assets/ci/logo_kor.png" alt="kma.go.kr logo"  width="167px;"  style="padding-bottom:5px;"/>&nbsp; 기후변화감시자료 통합품질관리시스템
	       	 	</a>              
	         </div>		    
	</div>
	
	
</div>
<!-- navbar -->
 <nav id="meNavbar" class="navbar navbar-default navbar-static-top" role="navigation" >
     <div class="container">
         <!-- Brand and toggle get grouped for better mobile display -->
         <div class="navbar-header">
             <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-mecollapse">
                 <span class="sr-only">Toggle navigation</span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
             </button>
             <!-- navbar-brand visible-xs -->
             <a class="navbar-brand visible-xs" href="${pageContext.request.contextPath}/common/mainView.do">
             <!-- 
             	<img style="max-width:330px; margin-top: -12px;" src="${pageContext.request.contextPath}/resource/assets/ci/nmsc_ci_with_sysName.png">
              -->
           	 </a>
         </div>
         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse" id="navbar-mecollapse">
             <ul class="nav navbar-nav navbar-right">
         
                <li class="dropdown disabled hidden">
                     <a  href="#" class="dropdown-toggle" data-toggle="dropdown">Level 1 A<b class="caret"></b></a>
                     <!-- 
                     <ul class="dropdown-menu meDropkick" >
                         <li>
                         	<a href='#' onclick="javascript:fn_main_headPageAction('11','QI/LV1A.do')">품질지표</a>
                         </li>
                         <li>
                         	<a href='#' onclick="javascript:fn_main_headPageAction('12','EI/LV1A.do')">환경정보</a>
                         </li>
                     </ul>
                      -->
                 </li>
             
             
			  
           	    <!-- mega menu 01-->
			    <!-- mega menu 01-->
			    <!-- mega menu 01-->
                <li class="dropdown menu-large disabled hidden">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">품질관리<b class="caret"></b></a>				
					<ul class="dropdown-menu megamenu row">
						<li class="col-sm-4">
							<ul>
								<li class="dropdown-header">Level 1</li>
								<li><a href="#LINK">menu</a></li>
								<li class="divider"></li>
								<li><a href="#LINK" style="font-weight: bold;" >menu</a></li> <!-- onclick="javascript:fn_main_headPageAction('12','QI/level_1_b.do')" -->
								<li><a href="#LINK" style="font-weight: bold;" >menu</a></li>
								<li class="divider"></li>
								<li><a href="#LINK">menu</a></li>
								<li><a href="#LINK">menu</a></li>
								<li><a href="#LINK">menu</a></li>
								<li><a href="#LINK">menu</a></li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul>
								<li class="dropdown-header">관측자료</li>
								<li><a href="#LINK">menu</a></li>
								<li><a href="#LINK">menu</a></li>
								<li><a href="#LINK">menu</a></li>
								<li><a href="#LINK">menu</a></li>
							</ul>
						</li>
						<li class="col-sm-4">
							<ul>
								<li class="dropdown-header">menu 03</li>
								<li><a href="#LINK" >menu 03-01</a></li>
								<li><a href="#LINK" >menu 03-02</a></li>
							</ul>
						</li>
					</ul>
				</li>
				
			    <!-- mega menu 01-->
			    <!-- mega menu 01-->
			    <!-- mega menu 01--> 
			  
           	    <!-- plain menu 02-->
           	    <!-- plain menu 02-->
           	    <!-- plain menu 02-->
                <li class="dropdown disabled hidden">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Level 2<b class="caret"></b></a>
                     <!-- 
                     <ul class="dropdown-menu meDropkick" >
                         <li>
                         	<a href='#' onclick="javascript:fn_main_headPageAction('12','QI/level_2.do')">CLD</a>
                         </li>
                         <li>
                         	<a href='#' onclick="javascript:fn_main_headPageAction('12','QI/level_2.do')">Cloud Amount</a>
                         </li>
                     </ul>
                      -->
                 </li>
           	    <!-- plain menu 02-->
           	    <!-- plain menu 02-->
           	    <!-- plain menu 02-->
			  
<!-- 

                 <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">게시판 <b class="caret"></b></a>
                     <ul class="dropdown-menu meDropkick" >
                         <li>
                         	<a href='#'  onclick="javascript:fn_main_headPageAction('38','test/snippet1.do')">공지사항</a>
                         </li>
                         <li>
                            <a href='#'  onclick="javascript:fn_main_headPageAction('58','test/snippet2.do')">분석정보</a>
                         </li>
                         <li>
                            <a href='#'  onclick="javascript:fn_main_headPageAction('88','test/snippet3.do')">참고자료1</a>
                         </li>
                         <li>
                            <a href='#'  onclick="javascript:fn_main_headPageAction('99','test/snippet4.do')">참고자료2</a>
                         </li>
                     </ul>
                 </li>
                 
 -->
                 
                 
                 <li>
                     <a href="#LINK" onclick="javascript:fn_main_headPageAction('51','lvl_1/QI.do')" >품질관리</a>
                 </li>
                 <li class="dropdown hidden">
                 	<a href="#" class="dropdown-toggle" data-toggle="dropdown">L2 품질감시<b class="caret"></b></a>
                 	
                 	<ul class="dropdown-menu meDropkick" >
		                 <li class="disabled"> <!-- class="disabled" -->
		                     <a href="#LINK">월검증결과</a> <!-- onclick="javascript:fn_main_headPageAction('61','alternative/b.do')" -->
		                     <!-- onclick="javascript:fn_main_headPageAction('61','lvl_2/monthlyValidation.do')" -->
		                 </li>
                         <li class="disabled">
                         	<!--  onclick="javascript:fn_main_headPageAction('62','report.doe')" -->
                         	<a href='#LINK'  >월검증리포트</a>
                         </li>
                         <li class="disabled">
                         	<!-- onclick="javascript:fn_main_headPageAction('63','lvl_2/dailyValidation.do')" -->
                         	<a href='#LINK'  >일검증결과</a>
                         </li>
                 	</ul>
                 </li>
  
             </ul>
         </div>
         <!-- navbar-collapse -->
     </div>
     <!-- container -->
 </nav>
<!-- topmenu end -->

	