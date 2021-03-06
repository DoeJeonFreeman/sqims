<%--
--%>
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
    
	<title>NIMS 기후변화감시자료 통합품질관리시스템</title>
	
	<script src="<c:url value="/js/jquery/jquery-1.9.1.js"/>"></script>	
    <script src="<c:url value="/resource/js/bootstrap.min.js"/>"></script> 
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/resource/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value="/resource/css/modern-business.css"/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<c:url value="/resource/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">
</head>

<body>

<div class="container">
	<div class="col-xs-12 text-center page-404">
		<h4 style="padding-top: 77px;padding-bottom:55px">NIMS 기후변화감시자료 통합품질관리시스템</h4>
		<h4>Page not found</h4>
		<form class="form-inline" role="form">
			<h5>Error 404</h5>
			<a href="<c:url value='/common/mainView.do'/>" class="btn btn-default btn-label-left"><span><i class="fa fa-reply"></i></span> Go to Main</a>
		</form>
	</div>
	
</div>


<script type="text/javascript">
$(document).ready(function() {
	$('html').animate({scrollTop: 0},'slow');});
</script>

</body>
</html>
